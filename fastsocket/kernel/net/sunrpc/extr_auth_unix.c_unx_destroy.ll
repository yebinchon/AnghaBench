; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth_unix.c_unx_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth_unix.c_unx_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_auth = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"RPC:       destroying UNIX authenticator %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_auth*)* @unx_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unx_destroy(%struct.rpc_auth* %0) #0 {
  %2 = alloca %struct.rpc_auth*, align 8
  store %struct.rpc_auth* %0, %struct.rpc_auth** %2, align 8
  %3 = load %struct.rpc_auth*, %struct.rpc_auth** %2, align 8
  %4 = call i32 @dprintk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.rpc_auth* %3)
  %5 = load %struct.rpc_auth*, %struct.rpc_auth** %2, align 8
  %6 = getelementptr inbounds %struct.rpc_auth, %struct.rpc_auth* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @rpcauth_clear_credcache(i32 %7)
  ret void
}

declare dso_local i32 @dprintk(i8*, %struct.rpc_auth*) #1

declare dso_local i32 @rpcauth_clear_credcache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
