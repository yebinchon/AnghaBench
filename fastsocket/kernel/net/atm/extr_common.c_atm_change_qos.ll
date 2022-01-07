; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_common.c_atm_change_qos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_common.c_atm_change_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { %struct.TYPE_12__*, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.atm_vcc*, %struct.atm_qos*, i32)* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.atm_qos = type { i64, %struct.TYPE_14__, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@AF_ATMPVC = common dso_local global i64 0, align 8
@ATM_MF_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*, %struct.atm_qos*)* @atm_change_qos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atm_change_qos(%struct.atm_vcc* %0, %struct.atm_qos* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atm_vcc*, align 8
  %5 = alloca %struct.atm_qos*, align 8
  %6 = alloca i32, align 4
  store %struct.atm_vcc* %0, %struct.atm_vcc** %4, align 8
  store %struct.atm_qos* %1, %struct.atm_qos** %5, align 8
  %7 = load %struct.atm_qos*, %struct.atm_qos** %5, align 8
  %8 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %11 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %9, %13
  br i1 %14, label %37, label %15

15:                                               ; preds = %2
  %16 = load %struct.atm_qos*, %struct.atm_qos** %5, align 8
  %17 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %21 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %19, %24
  br i1 %25, label %37, label %26

26:                                               ; preds = %15
  %27 = load %struct.atm_qos*, %struct.atm_qos** %5, align 8
  %28 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %32 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %30, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %26, %15, %2
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %96

40:                                               ; preds = %26
  %41 = load %struct.atm_qos*, %struct.atm_qos** %5, align 8
  %42 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %41, i32 0, i32 2
  %43 = load %struct.atm_qos*, %struct.atm_qos** %5, align 8
  %44 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @adjust_tp(%struct.TYPE_14__* %42, i64 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %40
  %50 = load %struct.atm_qos*, %struct.atm_qos** %5, align 8
  %51 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %50, i32 0, i32 1
  %52 = load %struct.atm_qos*, %struct.atm_qos** %5, align 8
  %53 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @adjust_tp(%struct.TYPE_14__* %51, i64 %54)
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %49, %40
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %96

61:                                               ; preds = %56
  %62 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %63 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %62, i32 0, i32 0
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32 (%struct.atm_vcc*, %struct.atm_qos*, i32)*, i32 (%struct.atm_vcc*, %struct.atm_qos*, i32)** %67, align 8
  %69 = icmp ne i32 (%struct.atm_vcc*, %struct.atm_qos*, i32)* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %61
  %71 = load i32, i32* @EOPNOTSUPP, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %96

73:                                               ; preds = %61
  %74 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %75 = call %struct.TYPE_13__* @sk_atm(%struct.atm_vcc* %74)
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @AF_ATMPVC, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %73
  %81 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %82 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %81, i32 0, i32 0
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32 (%struct.atm_vcc*, %struct.atm_qos*, i32)*, i32 (%struct.atm_vcc*, %struct.atm_qos*, i32)** %86, align 8
  %88 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %89 = load %struct.atm_qos*, %struct.atm_qos** %5, align 8
  %90 = load i32, i32* @ATM_MF_SET, align 4
  %91 = call i32 %87(%struct.atm_vcc* %88, %struct.atm_qos* %89, i32 %90)
  store i32 %91, i32* %3, align 4
  br label %96

92:                                               ; preds = %73
  %93 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %94 = load %struct.atm_qos*, %struct.atm_qos** %5, align 8
  %95 = call i32 @svc_change_qos(%struct.atm_vcc* %93, %struct.atm_qos* %94)
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %92, %80, %70, %59, %37
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @adjust_tp(%struct.TYPE_14__*, i64) #1

declare dso_local %struct.TYPE_13__* @sk_atm(%struct.atm_vcc*) #1

declare dso_local i32 @svc_change_qos(%struct.atm_vcc*, %struct.atm_qos*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
