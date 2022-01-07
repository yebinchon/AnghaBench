; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_clear_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_clear_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i32 }

@EXT4_FREE_BLOCKS_METADATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"call ext4_handle_dirty_metadata\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"retaking write access\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.inode*, %struct.buffer_head*, i32, i64, i64*, i64*)* @ext4_clear_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_clear_blocks(i32* %0, %struct.inode* %1, %struct.buffer_head* %2, i32 %3, i64 %4, i64* %5, i64* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.buffer_head*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  store i64* %6, i64** %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %20 = load %struct.inode*, %struct.inode** %9, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @S_ISDIR(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %7
  %26 = load %struct.inode*, %struct.inode** %9, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @S_ISLNK(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25, %7
  %32 = load i32, i32* @EXT4_FREE_BLOCKS_METADATA, align 4
  %33 = load i32, i32* %17, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %17, align 4
  store i32 1, i32* %16, align 4
  br label %35

35:                                               ; preds = %31, %25
  %36 = load i32*, i32** %8, align 8
  %37 = load %struct.inode*, %struct.inode** %9, align 8
  %38 = call i64 @try_to_extend_transaction(i32* %36, %struct.inode* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %35
  %41 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %42 = icmp ne %struct.buffer_head* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %45 = call i32 @BUFFER_TRACE(%struct.buffer_head* %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %46 = load i32*, i32** %8, align 8
  %47 = load %struct.inode*, %struct.inode** %9, align 8
  %48 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %49 = call i32 @ext4_handle_dirty_metadata(i32* %46, %struct.inode* %47, %struct.buffer_head* %48)
  br label %50

50:                                               ; preds = %43, %40
  %51 = load i32*, i32** %8, align 8
  %52 = load %struct.inode*, %struct.inode** %9, align 8
  %53 = call i32 @ext4_mark_inode_dirty(i32* %51, %struct.inode* %52)
  %54 = load i32*, i32** %8, align 8
  %55 = load %struct.inode*, %struct.inode** %9, align 8
  %56 = load %struct.inode*, %struct.inode** %9, align 8
  %57 = call i32 @blocks_for_truncate(%struct.inode* %56)
  %58 = call i32 @ext4_truncate_restart_trans(i32* %54, %struct.inode* %55, i32 %57)
  %59 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %60 = icmp ne %struct.buffer_head* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %50
  %62 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %63 = call i32 @BUFFER_TRACE(%struct.buffer_head* %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32*, i32** %8, align 8
  %65 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %66 = call i32 @ext4_journal_get_write_access(i32* %64, %struct.buffer_head* %65)
  br label %67

67:                                               ; preds = %61, %50
  br label %68

68:                                               ; preds = %67, %35
  %69 = load i64*, i64** %13, align 8
  store i64* %69, i64** %15, align 8
  br label %70

70:                                               ; preds = %94, %68
  %71 = load i64*, i64** %15, align 8
  %72 = load i64*, i64** %14, align 8
  %73 = icmp ult i64* %71, %72
  br i1 %73, label %74, label %97

74:                                               ; preds = %70
  %75 = load i64*, i64** %15, align 8
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @le32_to_cpu(i64 %76)
  store i64 %77, i64* %18, align 8
  %78 = load i64, i64* %18, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %74
  %81 = load i64*, i64** %15, align 8
  store i64 0, i64* %81, align 8
  %82 = load %struct.inode*, %struct.inode** %9, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i64, i64* %18, align 8
  %86 = call %struct.buffer_head* @sb_find_get_block(i32 %84, i64 %85)
  store %struct.buffer_head* %86, %struct.buffer_head** %19, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %16, align 4
  %89 = load %struct.inode*, %struct.inode** %9, align 8
  %90 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %91 = load i64, i64* %18, align 8
  %92 = call i32 @ext4_forget(i32* %87, i32 %88, %struct.inode* %89, %struct.buffer_head* %90, i64 %91)
  br label %93

93:                                               ; preds = %80, %74
  br label %94

94:                                               ; preds = %93
  %95 = load i64*, i64** %15, align 8
  %96 = getelementptr inbounds i64, i64* %95, i32 1
  store i64* %96, i64** %15, align 8
  br label %70

97:                                               ; preds = %70
  %98 = load i32*, i32** %8, align 8
  %99 = load %struct.inode*, %struct.inode** %9, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load i64, i64* %12, align 8
  %102 = load i32, i32* %17, align 4
  %103 = call i32 @ext4_free_blocks(i32* %98, %struct.inode* %99, i32 %100, i64 %101, i32 %102)
  ret void
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @try_to_extend_transaction(i32*, %struct.inode*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext4_handle_dirty_metadata(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_truncate_restart_trans(i32*, %struct.inode*, i32) #1

declare dso_local i32 @blocks_for_truncate(%struct.inode*) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local %struct.buffer_head* @sb_find_get_block(i32, i64) #1

declare dso_local i32 @ext4_forget(i32*, i32, %struct.inode*, %struct.buffer_head*, i64) #1

declare dso_local i32 @ext4_free_blocks(i32*, %struct.inode*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
