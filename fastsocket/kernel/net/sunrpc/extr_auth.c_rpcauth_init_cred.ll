; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth.c_rpcauth_init_cred.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth.c_rpcauth_init_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_cred = type { i32, i32, i32, %struct.rpc_credops*, %struct.rpc_auth*, i32, i32, i32 }
%struct.auth_cred = type { i32 }
%struct.rpc_auth = type { i32 }
%struct.rpc_credops = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@RPCAUTH_CRED_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpcauth_init_cred(%struct.rpc_cred* %0, %struct.auth_cred* %1, %struct.rpc_auth* %2, %struct.rpc_credops* %3) #0 {
  %5 = alloca %struct.rpc_cred*, align 8
  %6 = alloca %struct.auth_cred*, align 8
  %7 = alloca %struct.rpc_auth*, align 8
  %8 = alloca %struct.rpc_credops*, align 8
  store %struct.rpc_cred* %0, %struct.rpc_cred** %5, align 8
  store %struct.auth_cred* %1, %struct.auth_cred** %6, align 8
  store %struct.rpc_auth* %2, %struct.rpc_auth** %7, align 8
  store %struct.rpc_credops* %3, %struct.rpc_credops** %8, align 8
  %9 = load %struct.rpc_cred*, %struct.rpc_cred** %5, align 8
  %10 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %9, i32 0, i32 7
  %11 = call i32 @INIT_HLIST_NODE(i32* %10)
  %12 = load %struct.rpc_cred*, %struct.rpc_cred** %5, align 8
  %13 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %12, i32 0, i32 6
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.rpc_cred*, %struct.rpc_cred** %5, align 8
  %16 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %15, i32 0, i32 5
  %17 = call i32 @atomic_set(i32* %16, i32 1)
  %18 = load %struct.rpc_auth*, %struct.rpc_auth** %7, align 8
  %19 = load %struct.rpc_cred*, %struct.rpc_cred** %5, align 8
  %20 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %19, i32 0, i32 4
  store %struct.rpc_auth* %18, %struct.rpc_auth** %20, align 8
  %21 = load %struct.rpc_credops*, %struct.rpc_credops** %8, align 8
  %22 = load %struct.rpc_cred*, %struct.rpc_cred** %5, align 8
  %23 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %22, i32 0, i32 3
  store %struct.rpc_credops* %21, %struct.rpc_credops** %23, align 8
  %24 = load i32, i32* @jiffies, align 4
  %25 = load %struct.rpc_cred*, %struct.rpc_cred** %5, align 8
  %26 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.auth_cred*, %struct.auth_cred** %6, align 8
  %28 = getelementptr inbounds %struct.auth_cred, %struct.auth_cred* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rpc_cred*, %struct.rpc_cred** %5, align 8
  %31 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  ret void
}

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
