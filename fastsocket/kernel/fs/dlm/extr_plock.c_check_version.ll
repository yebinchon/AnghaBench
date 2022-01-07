; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_plock.c_check_version.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_plock.c_check_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_plock_info = type { i64* }

@DLM_PLOCK_VERSION_MAJOR = common dso_local global i64 0, align 8
@DLM_PLOCK_VERSION_MINOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"plock device version mismatch: kernel (%u.%u.%u), user (%u.%u.%u)\00", align 1
@DLM_PLOCK_VERSION_PATCH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_plock_info*)* @check_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_version(%struct.dlm_plock_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dlm_plock_info*, align 8
  store %struct.dlm_plock_info* %0, %struct.dlm_plock_info** %3, align 8
  %4 = load i64, i64* @DLM_PLOCK_VERSION_MAJOR, align 8
  %5 = load %struct.dlm_plock_info*, %struct.dlm_plock_info** %3, align 8
  %6 = getelementptr inbounds %struct.dlm_plock_info, %struct.dlm_plock_info* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %4, %9
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* @DLM_PLOCK_VERSION_MINOR, align 8
  %13 = load %struct.dlm_plock_info*, %struct.dlm_plock_info** %3, align 8
  %14 = getelementptr inbounds %struct.dlm_plock_info, %struct.dlm_plock_info* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %12, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %11, %1
  %20 = load i64, i64* @DLM_PLOCK_VERSION_MAJOR, align 8
  %21 = load i64, i64* @DLM_PLOCK_VERSION_MINOR, align 8
  %22 = load i32, i32* @DLM_PLOCK_VERSION_PATCH, align 4
  %23 = load %struct.dlm_plock_info*, %struct.dlm_plock_info** %3, align 8
  %24 = getelementptr inbounds %struct.dlm_plock_info, %struct.dlm_plock_info* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.dlm_plock_info*, %struct.dlm_plock_info** %3, align 8
  %29 = getelementptr inbounds %struct.dlm_plock_info, %struct.dlm_plock_info* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.dlm_plock_info*, %struct.dlm_plock_info** %3, align 8
  %34 = getelementptr inbounds %struct.dlm_plock_info, %struct.dlm_plock_info* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 2
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @log_print(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %20, i64 %21, i32 %22, i64 %27, i64 %32, i64 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %19
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @log_print(i8*, i64, i64, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
