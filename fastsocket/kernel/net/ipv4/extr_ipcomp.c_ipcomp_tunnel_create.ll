; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ipcomp.c_ipcomp_tunnel_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ipcomp.c_ipcomp_tunnel_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_10__, i32, i32, %struct.TYPE_9__, i32, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@init_net = common dso_local global i32 0, align 4
@IPPROTO_IPIP = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@XFRM_STATE_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_state* (%struct.xfrm_state*)* @ipcomp_tunnel_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_state* @ipcomp_tunnel_create(%struct.xfrm_state* %0) #0 {
  %2 = alloca %struct.xfrm_state*, align 8
  %3 = alloca %struct.xfrm_state*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %2, align 8
  %4 = call %struct.xfrm_state* @xfrm_state_alloc(i32* @init_net)
  store %struct.xfrm_state* %4, %struct.xfrm_state** %3, align 8
  %5 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %6 = icmp eq %struct.xfrm_state* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %75

8:                                                ; preds = %1
  %9 = load i32, i32* @IPPROTO_IPIP, align 4
  %10 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %11 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  store i32 %9, i32* %12, align 4
  %13 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %14 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %19 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %22 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %27 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  %30 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %31 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %30, i32 0, i32 4
  %32 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %33 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %32, i32 0, i32 4
  %34 = call i32 @memcpy(i32* %31, i32* %33, i32 4)
  %35 = load i32, i32* @AF_INET, align 4
  %36 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %37 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 3
  store i32 %35, i32* %38, align 4
  %39 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %40 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %44 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 4
  %46 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %47 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %52 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 4
  %55 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %56 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %60 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %63 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %62, i32 0, i32 2
  %64 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %65 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %64, i32 0, i32 2
  %66 = call i32 @memcpy(i32* %63, i32* %65, i32 4)
  %67 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %68 = call i64 @xfrm_init_state(%struct.xfrm_state* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %8
  br label %77

71:                                               ; preds = %8
  %72 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %73 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %72, i32 0, i32 1
  %74 = call i32 @atomic_set(i32* %73, i32 1)
  br label %75

75:                                               ; preds = %77, %71, %7
  %76 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  ret %struct.xfrm_state* %76

77:                                               ; preds = %70
  %78 = load i32, i32* @XFRM_STATE_DEAD, align 4
  %79 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %80 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 4
  %82 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %83 = call i32 @xfrm_state_put(%struct.xfrm_state* %82)
  store %struct.xfrm_state* null, %struct.xfrm_state** %3, align 8
  br label %75
}

declare dso_local %struct.xfrm_state* @xfrm_state_alloc(i32*) #1

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
