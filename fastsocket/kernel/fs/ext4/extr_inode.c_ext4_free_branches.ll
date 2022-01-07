; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_free_branches.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_free_branches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i32, i64 }

@.str = private unnamed_addr constant [36 x i8] c"Read failure, inode=%lu, block=%llu\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"free child branches\00", align 1
@EXT4_FREE_BLOCKS_METADATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"call ext4_handle_dirty_metadata\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"free data blocks\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.inode*, %struct.buffer_head*, i64*, i64*, i32)* @ext4_free_branches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_free_branches(i32* %0, %struct.inode* %1, %struct.buffer_head* %2, i64* %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = call i64 @ext4_handle_is_aborted(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  br label %138

21:                                               ; preds = %6
  %22 = load i32, i32* %12, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %12, align 4
  %24 = icmp ne i32 %22, 0
  br i1 %24, label %25, label %129

25:                                               ; preds = %21
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @EXT4_ADDR_PER_BLOCK(i32 %28)
  store i32 %29, i32* %16, align 4
  %30 = load i64*, i64** %11, align 8
  store i64* %30, i64** %14, align 8
  br label %31

31:                                               ; preds = %127, %51, %42, %25
  %32 = load i64*, i64** %14, align 8
  %33 = getelementptr inbounds i64, i64* %32, i32 -1
  store i64* %33, i64** %14, align 8
  %34 = load i64*, i64** %10, align 8
  %35 = icmp uge i64* %33, %34
  br i1 %35, label %36, label %128

36:                                               ; preds = %31
  %37 = load i64*, i64** %14, align 8
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @le32_to_cpu(i64 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  br label %31

43:                                               ; preds = %36
  %44 = load %struct.inode*, %struct.inode** %8, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %13, align 4
  %48 = call %struct.buffer_head* @sb_bread(i32 %46, i32 %47)
  store %struct.buffer_head* %48, %struct.buffer_head** %15, align 8
  %49 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %50 = icmp ne %struct.buffer_head* %49, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %43
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.inode*, %struct.inode** %8, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @ext4_error(i32 %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58)
  br label %31

60:                                               ; preds = %43
  %61 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %62 = call i32 @BUFFER_TRACE(%struct.buffer_head* %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32*, i32** %7, align 8
  %64 = load %struct.inode*, %struct.inode** %8, align 8
  %65 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %66 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %67 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i64*
  %70 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %71 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i64*
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i32, i32* %12, align 4
  call void @ext4_free_branches(i32* %63, %struct.inode* %64, %struct.buffer_head* %65, i64* %69, i64* %76, i32 %77)
  %78 = load i32*, i32** %7, align 8
  %79 = load %struct.inode*, %struct.inode** %8, align 8
  %80 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %81 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %82 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @ext4_forget(i32* %78, i32 1, %struct.inode* %79, %struct.buffer_head* %80, i32 %83)
  %85 = load i32*, i32** %7, align 8
  %86 = call i64 @ext4_handle_is_aborted(i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %60
  br label %138

89:                                               ; preds = %60
  %90 = load i32*, i32** %7, align 8
  %91 = load %struct.inode*, %struct.inode** %8, align 8
  %92 = call i64 @try_to_extend_transaction(i32* %90, %struct.inode* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = load i32*, i32** %7, align 8
  %96 = load %struct.inode*, %struct.inode** %8, align 8
  %97 = call i32 @ext4_mark_inode_dirty(i32* %95, %struct.inode* %96)
  %98 = load i32*, i32** %7, align 8
  %99 = load %struct.inode*, %struct.inode** %8, align 8
  %100 = load %struct.inode*, %struct.inode** %8, align 8
  %101 = call i32 @blocks_for_truncate(%struct.inode* %100)
  %102 = call i32 @ext4_truncate_restart_trans(i32* %98, %struct.inode* %99, i32 %101)
  br label %103

103:                                              ; preds = %94, %89
  %104 = load i32*, i32** %7, align 8
  %105 = load %struct.inode*, %struct.inode** %8, align 8
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* @EXT4_FREE_BLOCKS_METADATA, align 4
  %108 = call i32 @ext4_free_blocks(i32* %104, %struct.inode* %105, i32 %106, i32 1, i32 %107)
  %109 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %110 = icmp ne %struct.buffer_head* %109, null
  br i1 %110, label %111, label %127

111:                                              ; preds = %103
  %112 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %113 = call i32 @BUFFER_TRACE(%struct.buffer_head* %112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %114 = load i32*, i32** %7, align 8
  %115 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %116 = call i32 @ext4_journal_get_write_access(i32* %114, %struct.buffer_head* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %111
  %119 = load i64*, i64** %14, align 8
  store i64 0, i64* %119, align 8
  %120 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %121 = call i32 @BUFFER_TRACE(%struct.buffer_head* %120, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %122 = load i32*, i32** %7, align 8
  %123 = load %struct.inode*, %struct.inode** %8, align 8
  %124 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %125 = call i32 @ext4_handle_dirty_metadata(i32* %122, %struct.inode* %123, %struct.buffer_head* %124)
  br label %126

126:                                              ; preds = %118, %111
  br label %127

127:                                              ; preds = %126, %103
  br label %31

128:                                              ; preds = %31
  br label %138

129:                                              ; preds = %21
  %130 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %131 = call i32 @BUFFER_TRACE(%struct.buffer_head* %130, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %132 = load i32*, i32** %7, align 8
  %133 = load %struct.inode*, %struct.inode** %8, align 8
  %134 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %135 = load i64*, i64** %10, align 8
  %136 = load i64*, i64** %11, align 8
  %137 = call i32 @ext4_free_data(i32* %132, %struct.inode* %133, %struct.buffer_head* %134, i64* %135, i64* %136)
  br label %138

138:                                              ; preds = %20, %88, %129, %128
  ret void
}

declare dso_local i64 @ext4_handle_is_aborted(i32*) #1

declare dso_local i32 @EXT4_ADDR_PER_BLOCK(i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local %struct.buffer_head* @sb_bread(i32, i32) #1

declare dso_local i32 @ext4_error(i32, i8*, i32, i32) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext4_forget(i32*, i32, %struct.inode*, %struct.buffer_head*, i32) #1

declare dso_local i64 @try_to_extend_transaction(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_truncate_restart_trans(i32*, %struct.inode*, i32) #1

declare dso_local i32 @blocks_for_truncate(%struct.inode*) #1

declare dso_local i32 @ext4_free_blocks(i32*, %struct.inode*, i32, i32, i32) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ext4_handle_dirty_metadata(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ext4_free_data(i32*, %struct.inode*, %struct.buffer_head*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
