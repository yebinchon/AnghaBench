; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_input.c_xfrm_prepare_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_input.c_xfrm_prepare_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_9__, %struct.TYPE_8__*, %struct.xfrm_mode* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { {}* }
%struct.xfrm_mode = type { i32 (%struct.xfrm_state*, %struct.sk_buff*)*, %struct.TYPE_6__* }
%struct.sk_buff = type opaque
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff.0 = type { i32 }
%struct.TYPE_10__ = type { i32 }

@AF_UNSPEC = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm_prepare_input(%struct.xfrm_state* %0, %struct.sk_buff.0* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca %struct.sk_buff.0*, align 8
  %6 = alloca %struct.xfrm_mode*, align 8
  %7 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %4, align 8
  store %struct.sk_buff.0* %1, %struct.sk_buff.0** %5, align 8
  %8 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %9 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %8, i32 0, i32 2
  %10 = load %struct.xfrm_mode*, %struct.xfrm_mode** %9, align 8
  store %struct.xfrm_mode* %10, %struct.xfrm_mode** %6, align 8
  %11 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %12 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %11, i32 0, i32 1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.xfrm_state*, %struct.sk_buff.0*)**
  %18 = load i32 (%struct.xfrm_state*, %struct.sk_buff.0*)*, i32 (%struct.xfrm_state*, %struct.sk_buff.0*)** %17, align 8
  %19 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %20 = load %struct.sk_buff.0*, %struct.sk_buff.0** %5, align 8
  %21 = call i32 %18(%struct.xfrm_state* %19, %struct.sk_buff.0* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %61

26:                                               ; preds = %2
  %27 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %28 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AF_UNSPEC, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %26
  %34 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %35 = load %struct.sk_buff.0*, %struct.sk_buff.0** %5, align 8
  %36 = call %struct.TYPE_10__* @XFRM_MODE_SKB_CB(%struct.sk_buff.0* %35)
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.xfrm_mode* @xfrm_ip2inner_mode(%struct.xfrm_state* %34, i32 %38)
  store %struct.xfrm_mode* %39, %struct.xfrm_mode** %6, align 8
  %40 = load %struct.xfrm_mode*, %struct.xfrm_mode** %6, align 8
  %41 = icmp eq %struct.xfrm_mode* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* @EAFNOSUPPORT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %61

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %26
  %47 = load %struct.xfrm_mode*, %struct.xfrm_mode** %6, align 8
  %48 = getelementptr inbounds %struct.xfrm_mode, %struct.xfrm_mode* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sk_buff.0*, %struct.sk_buff.0** %5, align 8
  %53 = getelementptr inbounds %struct.sk_buff.0, %struct.sk_buff.0* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.xfrm_mode*, %struct.xfrm_mode** %6, align 8
  %55 = getelementptr inbounds %struct.xfrm_mode, %struct.xfrm_mode* %54, i32 0, i32 0
  %56 = load i32 (%struct.xfrm_state*, %struct.sk_buff*)*, i32 (%struct.xfrm_state*, %struct.sk_buff*)** %55, align 8
  %57 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %58 = load %struct.sk_buff.0*, %struct.sk_buff.0** %5, align 8
  %59 = bitcast %struct.sk_buff.0* %58 to %struct.sk_buff*
  %60 = call i32 %56(%struct.xfrm_state* %57, %struct.sk_buff* %59)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %46, %42, %24
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.xfrm_mode* @xfrm_ip2inner_mode(%struct.xfrm_state*, i32) #1

declare dso_local %struct.TYPE_10__* @XFRM_MODE_SKB_CB(%struct.sk_buff.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
