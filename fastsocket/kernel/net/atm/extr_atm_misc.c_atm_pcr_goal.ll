; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_atm_misc.c_atm_pcr_goal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_atm_misc.c_atm_pcr_goal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_trafprm = type { i32, i32, i32 }

@ATM_MAX_PCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atm_pcr_goal(%struct.atm_trafprm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atm_trafprm*, align 8
  store %struct.atm_trafprm* %0, %struct.atm_trafprm** %3, align 8
  %4 = load %struct.atm_trafprm*, %struct.atm_trafprm** %3, align 8
  %5 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.atm_trafprm*, %struct.atm_trafprm** %3, align 8
  %10 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ATM_MAX_PCR, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load %struct.atm_trafprm*, %struct.atm_trafprm** %3, align 8
  %16 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %45

19:                                               ; preds = %8, %1
  %20 = load %struct.atm_trafprm*, %struct.atm_trafprm** %3, align 8
  %21 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.atm_trafprm*, %struct.atm_trafprm** %3, align 8
  %26 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load %struct.atm_trafprm*, %struct.atm_trafprm** %3, align 8
  %31 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %2, align 4
  br label %45

33:                                               ; preds = %24, %19
  %34 = load %struct.atm_trafprm*, %struct.atm_trafprm** %3, align 8
  %35 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ATM_MAX_PCR, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.atm_trafprm*, %struct.atm_trafprm** %3, align 8
  %41 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %45

44:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %39, %29, %14
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
