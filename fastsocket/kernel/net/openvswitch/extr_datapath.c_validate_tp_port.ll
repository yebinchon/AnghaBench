; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_validate_tp_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_validate_tp_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow_key = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sw_flow_key*)* @validate_tp_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_tp_port(%struct.sw_flow_key* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sw_flow_key*, align 8
  store %struct.sw_flow_key* %0, %struct.sw_flow_key** %3, align 8
  %4 = load %struct.sw_flow_key*, %struct.sw_flow_key** %3, align 8
  %5 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i32, i32* @ETH_P_IP, align 4
  %9 = call i64 @htons(i32 %8)
  %10 = icmp eq i64 %7, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = load %struct.sw_flow_key*, %struct.sw_flow_key** %3, align 8
  %13 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %11
  %19 = load %struct.sw_flow_key*, %struct.sw_flow_key** %3, align 8
  %20 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %11
  store i32 0, i32* %2, align 4
  br label %55

26:                                               ; preds = %18
  br label %52

27:                                               ; preds = %1
  %28 = load %struct.sw_flow_key*, %struct.sw_flow_key** %3, align 8
  %29 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @ETH_P_IPV6, align 4
  %33 = call i64 @htons(i32 %32)
  %34 = icmp eq i64 %31, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %27
  %36 = load %struct.sw_flow_key*, %struct.sw_flow_key** %3, align 8
  %37 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = load %struct.sw_flow_key*, %struct.sw_flow_key** %3, align 8
  %44 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42, %35
  store i32 0, i32* %2, align 4
  br label %55

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %27
  br label %52

52:                                               ; preds = %51, %26
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %52, %49, %25
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
