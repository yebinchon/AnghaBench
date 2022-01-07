; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_common.c_check_tp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_common.c_check_tp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_trafprm = type { i64, i64, i64, i32 }

@ATM_ANYCLASS = common dso_local global i64 0, align 8
@ATM_UBR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ATM_MAX_PCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_trafprm*)* @check_tp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_tp(%struct.atm_trafprm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atm_trafprm*, align 8
  store %struct.atm_trafprm* %0, %struct.atm_trafprm** %3, align 8
  %4 = load %struct.atm_trafprm*, %struct.atm_trafprm** %3, align 8
  %5 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.atm_trafprm*, %struct.atm_trafprm** %3, align 8
  %10 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ATM_ANYCLASS, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %76

15:                                               ; preds = %8
  %16 = load %struct.atm_trafprm*, %struct.atm_trafprm** %3, align 8
  %17 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ATM_UBR, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %15
  %22 = load %struct.atm_trafprm*, %struct.atm_trafprm** %3, align 8
  %23 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %21
  %27 = load %struct.atm_trafprm*, %struct.atm_trafprm** %3, align 8
  %28 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %26
  %32 = load %struct.atm_trafprm*, %struct.atm_trafprm** %3, align 8
  %33 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %76

39:                                               ; preds = %31, %26, %21, %15
  %40 = load %struct.atm_trafprm*, %struct.atm_trafprm** %3, align 8
  %41 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ATM_MAX_PCR, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %76

48:                                               ; preds = %39
  %49 = load %struct.atm_trafprm*, %struct.atm_trafprm** %3, align 8
  %50 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %48
  %54 = load %struct.atm_trafprm*, %struct.atm_trafprm** %3, align 8
  %55 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %53
  %59 = load %struct.atm_trafprm*, %struct.atm_trafprm** %3, align 8
  %60 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ATM_MAX_PCR, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load %struct.atm_trafprm*, %struct.atm_trafprm** %3, align 8
  %66 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.atm_trafprm*, %struct.atm_trafprm** %3, align 8
  %69 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %67, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %76

75:                                               ; preds = %64, %58, %53, %48
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %72, %45, %36, %14
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
