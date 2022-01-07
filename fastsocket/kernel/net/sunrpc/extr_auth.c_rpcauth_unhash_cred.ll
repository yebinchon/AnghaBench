; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth.c_rpcauth_unhash_cred.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth.c_rpcauth_unhash_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_cred = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_cred*)* @rpcauth_unhash_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcauth_unhash_cred(%struct.rpc_cred* %0) #0 {
  %2 = alloca %struct.rpc_cred*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.rpc_cred* %0, %struct.rpc_cred** %2, align 8
  %5 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %6 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32* %10, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %14 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %13, i32 0, i32 0
  %15 = call i64 @atomic_read(i32* %14)
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %22 = call i32 @rpcauth_unhash_cred_locked(%struct.rpc_cred* %21)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @rpcauth_unhash_cred_locked(%struct.rpc_cred*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
