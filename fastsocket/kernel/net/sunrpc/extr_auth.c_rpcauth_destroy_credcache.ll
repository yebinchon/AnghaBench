; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth.c_rpcauth_destroy_credcache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth.c_rpcauth_destroy_credcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_auth = type { %struct.rpc_cred_cache* }
%struct.rpc_cred_cache = type { %struct.rpc_cred_cache* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpcauth_destroy_credcache(%struct.rpc_auth* %0) #0 {
  %2 = alloca %struct.rpc_auth*, align 8
  %3 = alloca %struct.rpc_cred_cache*, align 8
  store %struct.rpc_auth* %0, %struct.rpc_auth** %2, align 8
  %4 = load %struct.rpc_auth*, %struct.rpc_auth** %2, align 8
  %5 = getelementptr inbounds %struct.rpc_auth, %struct.rpc_auth* %4, i32 0, i32 0
  %6 = load %struct.rpc_cred_cache*, %struct.rpc_cred_cache** %5, align 8
  store %struct.rpc_cred_cache* %6, %struct.rpc_cred_cache** %3, align 8
  %7 = load %struct.rpc_cred_cache*, %struct.rpc_cred_cache** %3, align 8
  %8 = icmp ne %struct.rpc_cred_cache* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.rpc_auth*, %struct.rpc_auth** %2, align 8
  %11 = getelementptr inbounds %struct.rpc_auth, %struct.rpc_auth* %10, i32 0, i32 0
  store %struct.rpc_cred_cache* null, %struct.rpc_cred_cache** %11, align 8
  %12 = load %struct.rpc_cred_cache*, %struct.rpc_cred_cache** %3, align 8
  %13 = call i32 @rpcauth_clear_credcache(%struct.rpc_cred_cache* %12)
  %14 = load %struct.rpc_cred_cache*, %struct.rpc_cred_cache** %3, align 8
  %15 = getelementptr inbounds %struct.rpc_cred_cache, %struct.rpc_cred_cache* %14, i32 0, i32 0
  %16 = load %struct.rpc_cred_cache*, %struct.rpc_cred_cache** %15, align 8
  %17 = call i32 @kfree(%struct.rpc_cred_cache* %16)
  %18 = load %struct.rpc_cred_cache*, %struct.rpc_cred_cache** %3, align 8
  %19 = call i32 @kfree(%struct.rpc_cred_cache* %18)
  br label %20

20:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @rpcauth_clear_credcache(%struct.rpc_cred_cache*) #1

declare dso_local i32 @kfree(%struct.rpc_cred_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
