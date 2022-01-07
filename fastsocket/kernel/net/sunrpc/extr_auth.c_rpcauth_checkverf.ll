; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth.c_rpcauth_checkverf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth.c_rpcauth_checkverf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.rpc_cred* }
%struct.rpc_cred = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { {}* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"RPC: %5u validating %s cred %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @rpcauth_checkverf(%struct.rpc_task* %0, i32* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.rpc_cred*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %7 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.rpc_cred*, %struct.rpc_cred** %9, align 8
  store %struct.rpc_cred* %10, %struct.rpc_cred** %5, align 8
  %11 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %12 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.rpc_cred*, %struct.rpc_cred** %5, align 8
  %15 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rpc_cred*, %struct.rpc_cred** %5, align 8
  %22 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %20, %struct.rpc_cred* %21)
  %23 = load %struct.rpc_cred*, %struct.rpc_cred** %5, align 8
  %24 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i32* (%struct.rpc_task*, i32*)**
  %28 = load i32* (%struct.rpc_task*, i32*)*, i32* (%struct.rpc_task*, i32*)** %27, align 8
  %29 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i32* %28(%struct.rpc_task* %29, i32* %30)
  ret i32* %31
}

declare dso_local i32 @dprintk(i8*, i32, i32, %struct.rpc_cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
