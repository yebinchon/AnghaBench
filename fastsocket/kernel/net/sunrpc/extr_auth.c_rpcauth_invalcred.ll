; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth.c_rpcauth_invalcred.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth.c_rpcauth_invalcred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.rpc_cred* }
%struct.rpc_cred = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"RPC: %5u invalidating %s cred %p\0A\00", align 1
@RPCAUTH_CRED_UPTODATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpcauth_invalcred(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca %struct.rpc_cred*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %4 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %5 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.rpc_cred*, %struct.rpc_cred** %7, align 8
  store %struct.rpc_cred* %8, %struct.rpc_cred** %3, align 8
  %9 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %10 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.rpc_cred*, %struct.rpc_cred** %3, align 8
  %13 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rpc_cred*, %struct.rpc_cred** %3, align 8
  %20 = call i32 @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %18, %struct.rpc_cred* %19)
  %21 = load %struct.rpc_cred*, %struct.rpc_cred** %3, align 8
  %22 = icmp ne %struct.rpc_cred* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load i32, i32* @RPCAUTH_CRED_UPTODATE, align 4
  %25 = load %struct.rpc_cred*, %struct.rpc_cred** %3, align 8
  %26 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %25, i32 0, i32 0
  %27 = call i32 @clear_bit(i32 %24, i32* %26)
  br label %28

28:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @dprintk(i8*, i32, i32, %struct.rpc_cred*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
