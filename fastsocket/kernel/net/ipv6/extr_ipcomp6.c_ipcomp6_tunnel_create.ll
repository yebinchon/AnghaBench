; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ipcomp6.c_ipcomp6_tunnel_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ipcomp6.c_ipcomp6_tunnel_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_10__, i32, i32, %struct.TYPE_9__, i32, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32* }

@init_net = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@XFRM_STATE_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_state* (%struct.xfrm_state*)* @ipcomp6_tunnel_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_state* @ipcomp6_tunnel_create(%struct.xfrm_state* %0) #0 {
  %2 = alloca %struct.xfrm_state*, align 8
  %3 = alloca %struct.xfrm_state*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %2, align 8
  store %struct.xfrm_state* null, %struct.xfrm_state** %3, align 8
  %4 = call %struct.xfrm_state* @xfrm_state_alloc(i32* @init_net)
  store %struct.xfrm_state* %4, %struct.xfrm_state** %3, align 8
  %5 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %6 = icmp ne %struct.xfrm_state* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %79

8:                                                ; preds = %1
  %9 = load i32, i32* @IPPROTO_IPV6, align 4
  %10 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %11 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  store i32 %9, i32* %12, align 4
  %13 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %14 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = bitcast %struct.TYPE_8__* %15 to i32*
  %17 = call i32 @xfrm6_tunnel_alloc_spi(i32* %16)
  %18 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %19 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 8
  %21 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %22 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %8
  br label %81

27:                                               ; preds = %8
  %28 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %29 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %34 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @memcpy(i32* %32, i32* %37, i32 4)
  %39 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %40 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %39, i32 0, i32 4
  %41 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %42 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %41, i32 0, i32 4
  %43 = call i32 @memcpy(i32* %40, i32* %42, i32 4)
  %44 = load i32, i32* @AF_INET6, align 4
  %45 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %46 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 4
  %48 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %49 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %53 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 8
  %55 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %56 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %61 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @memcpy(i32* %59, i32* %64, i32 4)
  %66 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %67 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %66, i32 0, i32 2
  %68 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %69 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %68, i32 0, i32 2
  %70 = call i32 @memcpy(i32* %67, i32* %69, i32 4)
  %71 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %72 = call i64 @xfrm_init_state(%struct.xfrm_state* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %27
  br label %81

75:                                               ; preds = %27
  %76 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %77 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %76, i32 0, i32 1
  %78 = call i32 @atomic_set(i32* %77, i32 1)
  br label %79

79:                                               ; preds = %81, %75, %7
  %80 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  ret %struct.xfrm_state* %80

81:                                               ; preds = %74, %26
  %82 = load i32, i32* @XFRM_STATE_DEAD, align 4
  %83 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %84 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  %86 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %87 = call i32 @xfrm_state_put(%struct.xfrm_state* %86)
  store %struct.xfrm_state* null, %struct.xfrm_state** %3, align 8
  br label %79
}

declare dso_local %struct.xfrm_state* @xfrm_state_alloc(i32*) #1

declare dso_local i32 @xfrm6_tunnel_alloc_spi(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @xfrm_init_state(%struct.xfrm_state*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
