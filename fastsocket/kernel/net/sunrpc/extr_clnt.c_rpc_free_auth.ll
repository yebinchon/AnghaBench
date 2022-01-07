; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_rpc_free_auth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_rpc_free_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_clnt*)* @rpc_free_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_free_auth(%struct.rpc_clnt* %0) #0 {
  %2 = alloca %struct.rpc_clnt*, align 8
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %2, align 8
  %3 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %4 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %9 = call i32 @rpc_free_client(%struct.rpc_clnt* %8)
  br label %27

10:                                               ; preds = %1
  %11 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %12 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %11, i32 0, i32 0
  %13 = call i32 @atomic_inc(i32* %12)
  %14 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %15 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @rpcauth_release(i32* %16)
  %18 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %19 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %18, i32 0, i32 1
  store i32* null, i32** %19, align 8
  %20 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %21 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %20, i32 0, i32 0
  %22 = call i64 @atomic_dec_and_test(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %10
  %25 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %26 = call i32 @rpc_free_client(%struct.rpc_clnt* %25)
  br label %27

27:                                               ; preds = %7, %24, %10
  ret void
}

declare dso_local i32 @rpc_free_client(%struct.rpc_clnt*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rpcauth_release(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
