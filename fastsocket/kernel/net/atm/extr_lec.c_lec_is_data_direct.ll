; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_lec.c_lec_is_data_direct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_lec.c_lec_is_data_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64* }

@LEC_DATA_DIRECT_8023 = common dso_local global i64 0, align 8
@LEC_DATA_DIRECT_8025 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*)* @lec_is_data_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lec_is_data_direct(%struct.atm_vcc* %0) #0 {
  %2 = alloca %struct.atm_vcc*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %2, align 8
  %3 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %4 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i64 0
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 4
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @LEC_DATA_DIRECT_8023, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %30, label %16

16:                                               ; preds = %1
  %17 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %18 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 4
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LEC_DATA_DIRECT_8025, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %16, %1
  %31 = phi i1 [ true, %1 ], [ %29, %16 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
