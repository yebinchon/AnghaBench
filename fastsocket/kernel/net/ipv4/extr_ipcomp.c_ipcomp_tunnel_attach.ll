; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ipcomp.c_ipcomp_tunnel_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ipcomp.c_ipcomp_tunnel_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32, %struct.xfrm_state*, %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@init_net = common dso_local global i32 0, align 4
@IPPROTO_IPIP = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*)* @ipcomp_tunnel_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipcomp_tunnel_attach(%struct.xfrm_state* %0) #0 {
  %2 = alloca %struct.xfrm_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %7 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %11 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %9, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %17 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %21 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IPPROTO_IPIP, align 4
  %26 = load i32, i32* @AF_INET, align 4
  %27 = call %struct.xfrm_state* @xfrm_state_lookup_with_mark(i32* @init_net, i32 %15, i32* %19, i32 %24, i32 %25, i32 %26)
  store %struct.xfrm_state* %27, %struct.xfrm_state** %4, align 8
  %28 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %29 = icmp ne %struct.xfrm_state* %28, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %1
  %31 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %32 = call %struct.xfrm_state* @ipcomp_tunnel_create(%struct.xfrm_state* %31)
  store %struct.xfrm_state* %32, %struct.xfrm_state** %4, align 8
  %33 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %34 = icmp ne %struct.xfrm_state* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %50

38:                                               ; preds = %30
  %39 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %40 = call i32 @xfrm_state_insert(%struct.xfrm_state* %39)
  %41 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %42 = call i32 @xfrm_state_hold(%struct.xfrm_state* %41)
  br label %43

43:                                               ; preds = %38, %1
  %44 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %45 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %46 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %45, i32 0, i32 1
  store %struct.xfrm_state* %44, %struct.xfrm_state** %46, align 8
  %47 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %48 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %47, i32 0, i32 0
  %49 = call i32 @atomic_inc(i32* %48)
  br label %50

50:                                               ; preds = %43, %35
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.xfrm_state* @xfrm_state_lookup_with_mark(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local %struct.xfrm_state* @ipcomp_tunnel_create(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_state_insert(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_state_hold(%struct.xfrm_state*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
