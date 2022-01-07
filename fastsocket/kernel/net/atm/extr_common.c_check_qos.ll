; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_common.c_check_qos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_common.c_check_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_qos = type { %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ATM_ANYCLASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_qos*)* @check_qos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_qos(%struct.atm_qos* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atm_qos*, align 8
  %4 = alloca i32, align 4
  store %struct.atm_qos* %0, %struct.atm_qos** %3, align 8
  %5 = load %struct.atm_qos*, %struct.atm_qos** %3, align 8
  %6 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = load %struct.atm_qos*, %struct.atm_qos** %3, align 8
  %12 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %70

19:                                               ; preds = %10, %1
  %20 = load %struct.atm_qos*, %struct.atm_qos** %3, align 8
  %21 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.atm_qos*, %struct.atm_qos** %3, align 8
  %25 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %23, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %19
  %30 = load %struct.atm_qos*, %struct.atm_qos** %3, align 8
  %31 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %29
  %36 = load %struct.atm_qos*, %struct.atm_qos** %3, align 8
  %37 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %35
  %42 = load %struct.atm_qos*, %struct.atm_qos** %3, align 8
  %43 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ATM_ANYCLASS, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = load %struct.atm_qos*, %struct.atm_qos** %3, align 8
  %50 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ATM_ANYCLASS, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %70

58:                                               ; preds = %48, %41, %35, %29, %19
  %59 = load %struct.atm_qos*, %struct.atm_qos** %3, align 8
  %60 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %59, i32 0, i32 1
  %61 = call i32 @check_tp(%struct.TYPE_2__* %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %70

66:                                               ; preds = %58
  %67 = load %struct.atm_qos*, %struct.atm_qos** %3, align 8
  %68 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %67, i32 0, i32 0
  %69 = call i32 @check_tp(%struct.TYPE_2__* %68)
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %66, %64, %55, %16
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @check_tp(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
