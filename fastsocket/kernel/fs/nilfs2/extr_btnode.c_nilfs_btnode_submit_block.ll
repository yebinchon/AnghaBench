; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_btnode.c_nilfs_btnode_submit_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_btnode.c_nilfs_btnode_submit_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.buffer_head = type { i32, i8*, i32, i32, i32 }
%struct.inode = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@BH_NILFS_Node = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@NILFS_DAT_INO = common dso_local global i64 0, align 8
@end_buffer_read_sync = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_btnode_submit_block(%struct.address_space* %0, i8* %1, i64 %2, %struct.buffer_head** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.buffer_head**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.inode*, align 8
  store %struct.address_space* %0, %struct.address_space** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.buffer_head** %3, %struct.buffer_head*** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.address_space*, %struct.address_space** %7, align 8
  %17 = call %struct.inode* @NILFS_BTNC_I(%struct.address_space* %16)
  store %struct.inode* %17, %struct.inode** %13, align 8
  %18 = load %struct.inode*, %struct.inode** %13, align 8
  %19 = load %struct.address_space*, %struct.address_space** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* @BH_NILFS_Node, align 4
  %22 = shl i32 1, %21
  %23 = call %struct.buffer_head* @nilfs_grab_buffer(%struct.inode* %18, %struct.address_space* %19, i8* %20, i32 %22)
  store %struct.buffer_head* %23, %struct.buffer_head** %12, align 8
  %24 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %25 = icmp ne %struct.buffer_head* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %164

33:                                               ; preds = %5
  %34 = load i32, i32* @EEXIST, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %81

38:                                               ; preds = %33
  %39 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %40 = call i64 @buffer_mapped(%struct.buffer_head* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %44 = call i64 @buffer_uptodate(%struct.buffer_head* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %48 = call i64 @buffer_dirty(%struct.buffer_head* %47)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %46, %42, %38
  %51 = phi i1 [ true, %42 ], [ true, %38 ], [ %49, %46 ]
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %57 = call i32 @brelse(%struct.buffer_head* %56)
  %58 = call i32 (...) @BUG()
  br label %59

59:                                               ; preds = %55, %50
  %60 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %61 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.inode*, %struct.inode** %13, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = shl i32 1, %65
  %67 = call i32 @memset(i32 %62, i32 0, i32 %66)
  %68 = load %struct.inode*, %struct.inode** %13, align 8
  %69 = call %struct.TYPE_3__* @NILFS_I_NILFS(%struct.inode* %68)
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %73 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load i8*, i8** %8, align 8
  %75 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %76 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %78 = call i32 @set_buffer_mapped(%struct.buffer_head* %77)
  %79 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %80 = call i32 @set_buffer_uptodate(%struct.buffer_head* %79)
  br label %151

81:                                               ; preds = %33
  %82 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %83 = call i64 @buffer_uptodate(%struct.buffer_head* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %87 = call i64 @buffer_dirty(%struct.buffer_head* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85, %81
  br label %151

90:                                               ; preds = %85
  %91 = load i64, i64* %9, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %116

93:                                               ; preds = %90
  %94 = load i8*, i8** %8, align 8
  %95 = ptrtoint i8* %94 to i64
  store i64 %95, i64* %9, align 8
  %96 = load %struct.inode*, %struct.inode** %13, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @NILFS_DAT_INO, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %115

101:                                              ; preds = %93
  %102 = load %struct.inode*, %struct.inode** %13, align 8
  %103 = call %struct.TYPE_3__* @NILFS_I_NILFS(%struct.inode* %102)
  %104 = call %struct.inode* @nilfs_dat_inode(%struct.TYPE_3__* %103)
  store %struct.inode* %104, %struct.inode** %15, align 8
  %105 = load %struct.inode*, %struct.inode** %15, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = call i32 @nilfs_dat_translate(%struct.inode* %105, i8* %106, i64* %9)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = call i64 @unlikely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %101
  %112 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %113 = call i32 @brelse(%struct.buffer_head* %112)
  br label %154

114:                                              ; preds = %101
  br label %115

115:                                              ; preds = %114, %93
  br label %116

116:                                              ; preds = %115, %90
  %117 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %118 = call i32 @lock_buffer(%struct.buffer_head* %117)
  %119 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %120 = call i64 @buffer_uptodate(%struct.buffer_head* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %116
  %123 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %124 = call i32 @unlock_buffer(%struct.buffer_head* %123)
  %125 = load i32, i32* @EEXIST, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %14, align 4
  br label %151

127:                                              ; preds = %116
  %128 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %129 = call i32 @set_buffer_mapped(%struct.buffer_head* %128)
  %130 = load %struct.inode*, %struct.inode** %13, align 8
  %131 = call %struct.TYPE_3__* @NILFS_I_NILFS(%struct.inode* %130)
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %135 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 4
  %136 = load i64, i64* %9, align 8
  %137 = inttoptr i64 %136 to i8*
  %138 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %139 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  %140 = load i32, i32* @end_buffer_read_sync, align 4
  %141 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %142 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %144 = call i32 @get_bh(%struct.buffer_head* %143)
  %145 = load i32, i32* @READ, align 4
  %146 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %147 = call i32 @submit_bh(i32 %145, %struct.buffer_head* %146)
  %148 = load i8*, i8** %8, align 8
  %149 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %150 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %149, i32 0, i32 1
  store i8* %148, i8** %150, align 8
  store i32 0, i32* %14, align 4
  br label %151

151:                                              ; preds = %127, %122, %89, %59
  %152 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %153 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  store %struct.buffer_head* %152, %struct.buffer_head** %153, align 8
  br label %154

154:                                              ; preds = %151, %111
  %155 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %156 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @unlock_page(i32 %157)
  %159 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %160 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @page_cache_release(i32 %161)
  %163 = load i32, i32* %14, align 4
  store i32 %163, i32* %6, align 4
  br label %164

164:                                              ; preds = %154, %30
  %165 = load i32, i32* %6, align 4
  ret i32 %165
}

declare dso_local %struct.inode* @NILFS_BTNC_I(%struct.address_space*) #1

declare dso_local %struct.buffer_head* @nilfs_grab_buffer(%struct.inode*, %struct.address_space*, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %struct.TYPE_3__* @NILFS_I_NILFS(%struct.inode*) #1

declare dso_local i32 @set_buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local %struct.inode* @nilfs_dat_inode(%struct.TYPE_3__*) #1

declare dso_local i32 @nilfs_dat_translate(%struct.inode*, i8*, i64*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, %struct.buffer_head*) #1

declare dso_local i32 @unlock_page(i32) #1

declare dso_local i32 @page_cache_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
