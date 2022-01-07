; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth.c_rpcauth_generic_bind_cred.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth.c_rpcauth_generic_bind_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.rpc_cred = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"RPC: %5u holding %s cred %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_cred* @rpcauth_generic_bind_cred(%struct.rpc_task* %0, %struct.rpc_cred* %1, i32 %2) #0 {
  %4 = alloca %struct.rpc_task*, align 8
  %5 = alloca %struct.rpc_cred*, align 8
  %6 = alloca i32, align 4
  store %struct.rpc_task* %0, %struct.rpc_task** %4, align 8
  store %struct.rpc_cred* %1, %struct.rpc_cred** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %8 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.rpc_cred*, %struct.rpc_cred** %5, align 8
  %11 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rpc_cred*, %struct.rpc_cred** %5, align 8
  %18 = call i32 @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %16, %struct.rpc_cred* %17)
  %19 = load %struct.rpc_cred*, %struct.rpc_cred** %5, align 8
  %20 = call %struct.rpc_cred* @get_rpccred(%struct.rpc_cred* %19)
  ret %struct.rpc_cred* %20
}

declare dso_local i32 @dprintk(i8*, i32, i32, %struct.rpc_cred*) #1

declare dso_local %struct.rpc_cred* @get_rpccred(%struct.rpc_cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
