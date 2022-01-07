; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_spd_getinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_spd_getinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }
%struct.xfrmk_spdinfo = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@xfrm_policy_lock = common dso_local global i32 0, align 4
@init_net = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@XFRM_POLICY_IN = common dso_local global i64 0, align 8
@XFRM_POLICY_OUT = common dso_local global i64 0, align 8
@XFRM_POLICY_FWD = common dso_local global i64 0, align 8
@XFRM_POLICY_MAX = common dso_local global i64 0, align 8
@xfrm_policy_hashmax = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfrm_spd_getinfo(%struct.xfrmk_spdinfo* %0) #0 {
  %2 = alloca %struct.xfrmk_spdinfo*, align 8
  store %struct.xfrmk_spdinfo* %0, %struct.xfrmk_spdinfo** %2, align 8
  %3 = call i32 @read_lock_bh(i32* @xfrm_policy_lock)
  %4 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @init_net, i32 0, i32 0, i32 1), align 8
  %5 = load i64, i64* @XFRM_POLICY_IN, align 8
  %6 = getelementptr inbounds i32, i32* %4, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.xfrmk_spdinfo*, %struct.xfrmk_spdinfo** %2, align 8
  %9 = getelementptr inbounds %struct.xfrmk_spdinfo, %struct.xfrmk_spdinfo* %8, i32 0, i32 7
  store i32 %7, i32* %9, align 4
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @init_net, i32 0, i32 0, i32 1), align 8
  %11 = load i64, i64* @XFRM_POLICY_OUT, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.xfrmk_spdinfo*, %struct.xfrmk_spdinfo** %2, align 8
  %15 = getelementptr inbounds %struct.xfrmk_spdinfo, %struct.xfrmk_spdinfo* %14, i32 0, i32 6
  store i32 %13, i32* %15, align 4
  %16 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @init_net, i32 0, i32 0, i32 1), align 8
  %17 = load i64, i64* @XFRM_POLICY_FWD, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.xfrmk_spdinfo*, %struct.xfrmk_spdinfo** %2, align 8
  %21 = getelementptr inbounds %struct.xfrmk_spdinfo, %struct.xfrmk_spdinfo* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 4
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @init_net, i32 0, i32 0, i32 1), align 8
  %23 = load i64, i64* @XFRM_POLICY_IN, align 8
  %24 = load i64, i64* @XFRM_POLICY_MAX, align 8
  %25 = add i64 %23, %24
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.xfrmk_spdinfo*, %struct.xfrmk_spdinfo** %2, align 8
  %29 = getelementptr inbounds %struct.xfrmk_spdinfo, %struct.xfrmk_spdinfo* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @init_net, i32 0, i32 0, i32 1), align 8
  %31 = load i64, i64* @XFRM_POLICY_OUT, align 8
  %32 = load i64, i64* @XFRM_POLICY_MAX, align 8
  %33 = add i64 %31, %32
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.xfrmk_spdinfo*, %struct.xfrmk_spdinfo** %2, align 8
  %37 = getelementptr inbounds %struct.xfrmk_spdinfo, %struct.xfrmk_spdinfo* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @init_net, i32 0, i32 0, i32 1), align 8
  %39 = load i64, i64* @XFRM_POLICY_FWD, align 8
  %40 = load i64, i64* @XFRM_POLICY_MAX, align 8
  %41 = add i64 %39, %40
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.xfrmk_spdinfo*, %struct.xfrmk_spdinfo** %2, align 8
  %45 = getelementptr inbounds %struct.xfrmk_spdinfo, %struct.xfrmk_spdinfo* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @init_net, i32 0, i32 0, i32 0), align 8
  %47 = load %struct.xfrmk_spdinfo*, %struct.xfrmk_spdinfo** %2, align 8
  %48 = getelementptr inbounds %struct.xfrmk_spdinfo, %struct.xfrmk_spdinfo* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @xfrm_policy_hashmax, align 4
  %50 = load %struct.xfrmk_spdinfo*, %struct.xfrmk_spdinfo** %2, align 8
  %51 = getelementptr inbounds %struct.xfrmk_spdinfo, %struct.xfrmk_spdinfo* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = call i32 @read_unlock_bh(i32* @xfrm_policy_lock)
  ret void
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
