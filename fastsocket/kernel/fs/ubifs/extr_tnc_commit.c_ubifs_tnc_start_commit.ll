; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc_commit.c_ubifs_tnc_start_commit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc_commit.c_ubifs_tnc_start_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i32, i32, %struct.TYPE_2__, i32, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ubifs_zbranch = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"number of index LEBs %d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"size of index %llu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_tnc_start_commit(%struct.ubifs_info* %0, %struct.ubifs_zbranch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_zbranch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_zbranch* %1, %struct.ubifs_zbranch** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %10 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %13 = call i32 @dbg_check_tnc(%struct.ubifs_info* %12, i32 1)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %111

17:                                               ; preds = %2
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %19 = call i32 @get_znodes_to_commit(%struct.ubifs_info* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %57

22:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @alloc_idx_lebs(%struct.ubifs_info* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @ENOSPC, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 1, i32* %8, align 4
  br label %36

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %108

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35, %30
  %37 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @layout_commit(%struct.ubifs_info* %37, i32 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %108

44:                                               ; preds = %36
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %46 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %45, i32 0, i32 8
  %47 = call i64 @atomic_long_read(i32* %46)
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @ubifs_assert(i32 %49)
  %51 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %52 = call i32 @free_unused_idx_lebs(%struct.ubifs_info* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %111

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56, %17
  %58 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %59 = call i32 @destroy_old_idx(%struct.ubifs_info* %58)
  %60 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %61 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %62 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %61, i32 0, i32 7
  %63 = call i32 @memcpy(%struct.ubifs_zbranch* %60, i32* %62, i32 4)
  %64 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %65 = call i32 @ubifs_save_dirty_idx_lnums(%struct.ubifs_info* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  br label %111

69:                                               ; preds = %57
  %70 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %71 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %70, i32 0, i32 4
  %72 = call i32 @spin_lock(i32* %71)
  %73 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %74 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %77 = call i64 @ubifs_calc_min_idx_lebs(%struct.ubifs_info* %76)
  %78 = icmp eq i64 %75, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @ubifs_assert(i32 %79)
  %81 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %82 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %85 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 8
  %86 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %87 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %86, i32 0, i32 5
  store i64 0, i64* %87, align 8
  %88 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %89 = call i64 @ubifs_calc_min_idx_lebs(%struct.ubifs_info* %88)
  %90 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %91 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %93 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %92, i32 0, i32 4
  %94 = call i32 @spin_unlock(i32* %93)
  %95 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %96 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %95, i32 0, i32 1
  %97 = call i32 @mutex_unlock(i32* %96)
  %98 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %99 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @dbg_cmt(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %101)
  %103 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %104 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @dbg_cmt(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %3, align 4
  br label %116

108:                                              ; preds = %43, %34
  %109 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %110 = call i32 @free_idx_lebs(%struct.ubifs_info* %109)
  br label %111

111:                                              ; preds = %108, %68, %55, %16
  %112 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %113 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %112, i32 0, i32 1
  %114 = call i32 @mutex_unlock(i32* %113)
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %111, %69
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dbg_check_tnc(%struct.ubifs_info*, i32) #1

declare dso_local i32 @get_znodes_to_commit(%struct.ubifs_info*) #1

declare dso_local i32 @alloc_idx_lebs(%struct.ubifs_info*, i32) #1

declare dso_local i32 @layout_commit(%struct.ubifs_info*, i32, i32) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i32 @free_unused_idx_lebs(%struct.ubifs_info*) #1

declare dso_local i32 @destroy_old_idx(%struct.ubifs_info*) #1

declare dso_local i32 @memcpy(%struct.ubifs_zbranch*, i32*, i32) #1

declare dso_local i32 @ubifs_save_dirty_idx_lnums(%struct.ubifs_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ubifs_calc_min_idx_lebs(%struct.ubifs_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dbg_cmt(i8*, i32) #1

declare dso_local i32 @free_idx_lebs(%struct.ubifs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
