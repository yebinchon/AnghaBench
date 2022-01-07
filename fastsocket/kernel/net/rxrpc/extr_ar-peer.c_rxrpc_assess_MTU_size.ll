; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-peer.c_rxrpc_assess_MTU_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-peer.c_rxrpc_assess_MTU_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_peer = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.rtable = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.flowi = type { %struct.TYPE_17__, %struct.TYPE_15__, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8*, i8* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32 }

@IPPROTO_UDP = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c" [route err %d]\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c" [if_mtu %u]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_peer*)* @rxrpc_assess_MTU_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_assess_MTU_size(%struct.rxrpc_peer* %0) #0 {
  %2 = alloca %struct.rxrpc_peer*, align 8
  %3 = alloca %struct.rtable*, align 8
  %4 = alloca %struct.flowi, align 8
  %5 = alloca i32, align 4
  store %struct.rxrpc_peer* %0, %struct.rxrpc_peer** %2, align 8
  %6 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %2, align 8
  %7 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %6, i32 0, i32 0
  store i32 1500, i32* %7, align 4
  %8 = call i32 @memset(%struct.flowi* %4, i32 0, i32 40)
  %9 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %2, align 8
  %10 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %42 [
    i32 128, label %14
  ]

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.flowi, %struct.flowi* %4, i32 0, i32 3
  store i32 0, i32* %15, align 8
  %16 = load i32, i32* @IPPROTO_UDP, align 4
  %17 = getelementptr inbounds %struct.flowi, %struct.flowi* %4, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.flowi, %struct.flowi* %4, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 2
  store i32 0, i32* %20, align 8
  %21 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %2, align 8
  %22 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.flowi, %struct.flowi* %4, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = getelementptr inbounds %struct.flowi, %struct.flowi* %4, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = call i8* @htons(i32 7001)
  %35 = getelementptr inbounds %struct.flowi, %struct.flowi* %4, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  store i8* %34, i8** %37, align 8
  %38 = call i8* @htons(i32 7000)
  %39 = getelementptr inbounds %struct.flowi, %struct.flowi* %4, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  store i8* %38, i8** %41, align 8
  br label %44

42:                                               ; preds = %1
  %43 = call i32 (...) @BUG()
  br label %44

44:                                               ; preds = %42, %14
  %45 = call i32 @ip_route_output_key(i32* @init_net, %struct.rtable** %3, %struct.flowi* %4)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @_leave(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %66

51:                                               ; preds = %44
  %52 = load %struct.rtable*, %struct.rtable** %3, align 8
  %53 = getelementptr inbounds %struct.rtable, %struct.rtable* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = call i32 @dst_mtu(i32* %54)
  %56 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %2, align 8
  %57 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.rtable*, %struct.rtable** %3, align 8
  %59 = getelementptr inbounds %struct.rtable, %struct.rtable* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = call i32 @dst_release(i32* %60)
  %62 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %2, align 8
  %63 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @_leave(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %51, %48
  ret void
}

declare dso_local i32 @memset(%struct.flowi*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ip_route_output_key(i32*, %struct.rtable**, %struct.flowi*) #1

declare dso_local i32 @_leave(i8*, i32) #1

declare dso_local i32 @dst_mtu(i32*) #1

declare dso_local i32 @dst_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
