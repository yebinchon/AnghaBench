; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_ialloc.c_sysv_count_free_inodes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_ialloc.c_sysv_count_free_inodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.sysv_sb_info = type { i32, i32, i32* }
%struct.buffer_head = type { i32 }
%struct.sysv_inode = type { i64, i64 }

@SYSV_ROOT_INO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"sysv_count_free_inodes: free inode count was %d, correcting to %d\0A\00", align 1
@MS_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"sysv_count_free_inodes: unable to read inode table\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sysv_count_free_inodes(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.sysv_sb_info*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.sysv_inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %9 = load %struct.super_block*, %struct.super_block** %2, align 8
  %10 = call %struct.sysv_sb_info* @SYSV_SB(%struct.super_block* %9)
  store %struct.sysv_sb_info* %10, %struct.sysv_sb_info** %3, align 8
  %11 = load %struct.super_block*, %struct.super_block** %2, align 8
  %12 = call i32 @lock_super(%struct.super_block* %11)
  %13 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %14 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %15 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @fs16_to_cpu(%struct.sysv_sb_info* %13, i32 %17)
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %19 = load i32, i32* @SYSV_ROOT_INO, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  %21 = load %struct.super_block*, %struct.super_block** %2, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call %struct.sysv_inode* @sysv_raw_inode(%struct.super_block* %21, i32 %22, %struct.buffer_head** %4)
  store %struct.sysv_inode* %23, %struct.sysv_inode** %5, align 8
  %24 = load %struct.sysv_inode*, %struct.sysv_inode** %5, align 8
  %25 = icmp ne %struct.sysv_inode* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  br label %103

27:                                               ; preds = %1
  br label %28

28:                                               ; preds = %68, %27
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %31 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sle i32 %29, %32
  br i1 %33, label %34, label %69

34:                                               ; preds = %28
  %35 = load %struct.sysv_inode*, %struct.sysv_inode** %5, align 8
  %36 = getelementptr inbounds %struct.sysv_inode, %struct.sysv_inode* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.sysv_inode*, %struct.sysv_inode** %5, align 8
  %41 = getelementptr inbounds %struct.sysv_inode, %struct.sysv_inode* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %44, %39, %34
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  %50 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %51 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %48, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %47
  %56 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %57 = call i32 @brelse(%struct.buffer_head* %56)
  %58 = load %struct.super_block*, %struct.super_block** %2, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call %struct.sysv_inode* @sysv_raw_inode(%struct.super_block* %58, i32 %59, %struct.buffer_head** %4)
  store %struct.sysv_inode* %60, %struct.sysv_inode** %5, align 8
  %61 = load %struct.sysv_inode*, %struct.sysv_inode** %5, align 8
  %62 = icmp ne %struct.sysv_inode* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %55
  br label %103

64:                                               ; preds = %55
  br label %68

65:                                               ; preds = %47
  %66 = load %struct.sysv_inode*, %struct.sysv_inode** %5, align 8
  %67 = getelementptr inbounds %struct.sysv_inode, %struct.sysv_inode* %66, i32 1
  store %struct.sysv_inode* %67, %struct.sysv_inode** %5, align 8
  br label %68

68:                                               ; preds = %65, %64
  br label %28

69:                                               ; preds = %28
  %70 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %71 = call i32 @brelse(%struct.buffer_head* %70)
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %82

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %105, %102, %76
  %78 = load %struct.super_block*, %struct.super_block** %2, align 8
  %79 = call i32 @unlock_super(%struct.super_block* %78)
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  ret i64 %81

82:                                               ; preds = %75
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load %struct.super_block*, %struct.super_block** %2, align 8
  %87 = getelementptr inbounds %struct.super_block, %struct.super_block* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @MS_RDONLY, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %82
  %93 = load %struct.super_block*, %struct.super_block** %2, align 8
  %94 = call %struct.sysv_sb_info* @SYSV_SB(%struct.super_block* %93)
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @cpu_to_fs16(%struct.sysv_sb_info* %94, i32 %95)
  %97 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %98 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  store i32 %96, i32* %99, align 4
  %100 = load %struct.super_block*, %struct.super_block** %2, align 8
  %101 = call i32 @dirty_sb(%struct.super_block* %100)
  br label %102

102:                                              ; preds = %92, %82
  br label %77

103:                                              ; preds = %63, %26
  %104 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %7, align 4
  br label %77
}

declare dso_local %struct.sysv_sb_info* @SYSV_SB(%struct.super_block*) #1

declare dso_local i32 @lock_super(%struct.super_block*) #1

declare dso_local i32 @fs16_to_cpu(%struct.sysv_sb_info*, i32) #1

declare dso_local %struct.sysv_inode* @sysv_raw_inode(%struct.super_block*, i32, %struct.buffer_head**) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @unlock_super(%struct.super_block*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @cpu_to_fs16(%struct.sysv_sb_info*, i32) #1

declare dso_local i32 @dirty_sb(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
