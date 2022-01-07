; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_extent.c_hfs_get_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_extent.c_hfs_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfs_get_block(%struct.inode* %0, i64 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %10, align 8
  %17 = load i64, i64* %7, align 8
  %18 = trunc i64 %17 to i32
  %19 = load %struct.super_block*, %struct.super_block** %10, align 8
  %20 = call %struct.TYPE_3__* @HFS_SB(%struct.super_block* %19)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sdiv i32 %18, %22
  store i32 %23, i32* %12, align 4
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %24, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %4
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %31, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37, %30
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %159

43:                                               ; preds = %37
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %45)
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %44, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = call i32 @hfs_extend_file(%struct.inode* %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %5, align 4
  br label %159

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %43
  br label %60

59:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %59, %58
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  %63 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %62)
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %61, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load %struct.inode*, %struct.inode** %6, align 8
  %69 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %68)
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @hfs_ext_find_block(i32 %71, i32 %72)
  store i32 %73, i32* %11, align 4
  br label %108

74:                                               ; preds = %60
  %75 = load %struct.inode*, %struct.inode** %6, align 8
  %76 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %75)
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 5
  %78 = call i32 @mutex_lock(i32* %77)
  %79 = load %struct.inode*, %struct.inode** %6, align 8
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @hfs_ext_read_extent(%struct.inode* %79, i32 %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %74
  %85 = load %struct.inode*, %struct.inode** %6, align 8
  %86 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %85)
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.inode*, %struct.inode** %6, align 8
  %91 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %90)
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %89, %93
  %95 = call i32 @hfs_ext_find_block(i32 %88, i32 %94)
  store i32 %95, i32* %11, align 4
  br label %103

96:                                               ; preds = %74
  %97 = load %struct.inode*, %struct.inode** %6, align 8
  %98 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %97)
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 5
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  br label %159

103:                                              ; preds = %84
  %104 = load %struct.inode*, %struct.inode** %6, align 8
  %105 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %104)
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 5
  %107 = call i32 @mutex_unlock(i32* %106)
  br label %108

108:                                              ; preds = %103, %67
  %109 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %110 = load %struct.super_block*, %struct.super_block** %10, align 8
  %111 = load %struct.super_block*, %struct.super_block** %10, align 8
  %112 = call %struct.TYPE_3__* @HFS_SB(%struct.super_block* %111)
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.super_block*, %struct.super_block** %10, align 8
  %117 = call %struct.TYPE_3__* @HFS_SB(%struct.super_block* %116)
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = mul nsw i32 %115, %119
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %114, %121
  %123 = load i64, i64* %7, align 8
  %124 = trunc i64 %123 to i32
  %125 = load %struct.super_block*, %struct.super_block** %10, align 8
  %126 = call %struct.TYPE_3__* @HFS_SB(%struct.super_block* %125)
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = srem i32 %124, %128
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %122, %130
  %132 = call i32 @map_bh(%struct.buffer_head* %109, %struct.super_block* %110, i64 %131)
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %158

135:                                              ; preds = %108
  %136 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %137 = call i32 @set_buffer_new(%struct.buffer_head* %136)
  %138 = load %struct.super_block*, %struct.super_block** %10, align 8
  %139 = getelementptr inbounds %struct.super_block, %struct.super_block* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.inode*, %struct.inode** %6, align 8
  %142 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %141)
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, %140
  store i32 %145, i32* %143, align 4
  %146 = load %struct.inode*, %struct.inode** %6, align 8
  %147 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %146)
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* %148, align 8
  %151 = load %struct.inode*, %struct.inode** %6, align 8
  %152 = load %struct.super_block*, %struct.super_block** %10, align 8
  %153 = getelementptr inbounds %struct.super_block, %struct.super_block* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @inode_add_bytes(%struct.inode* %151, i32 %154)
  %156 = load %struct.inode*, %struct.inode** %6, align 8
  %157 = call i32 @mark_inode_dirty(%struct.inode* %156)
  br label %158

158:                                              ; preds = %135, %108
  store i32 0, i32* %5, align 4
  br label %159

159:                                              ; preds = %158, %96, %55, %40
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local %struct.TYPE_3__* @HFS_SB(%struct.super_block*) #1

declare dso_local %struct.TYPE_4__* @HFS_I(%struct.inode*) #1

declare dso_local i32 @hfs_extend_file(%struct.inode*) #1

declare dso_local i32 @hfs_ext_find_block(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hfs_ext_read_extent(%struct.inode*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, %struct.super_block*, i64) #1

declare dso_local i32 @set_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @inode_add_bytes(%struct.inode*, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
