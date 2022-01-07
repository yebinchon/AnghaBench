; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth.c_rpcauth_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth.c_rpcauth_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_authops = type { i64 }

@EPERM = common dso_local global i32 0, align 4
@RPC_AUTH_MAXFLAVOR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@rpc_authflavor_lock = common dso_local global i32 0, align 4
@auth_flavors = common dso_local global %struct.rpc_authops** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcauth_register(%struct.rpc_authops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rpc_authops*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.rpc_authops* %0, %struct.rpc_authops** %3, align 8
  %6 = load i32, i32* @EPERM, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.rpc_authops*, %struct.rpc_authops** %3, align 8
  %9 = getelementptr inbounds %struct.rpc_authops, %struct.rpc_authops* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* @RPC_AUTH_MAXFLAVOR, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %31

16:                                               ; preds = %1
  %17 = call i32 @spin_lock(i32* @rpc_authflavor_lock)
  %18 = load %struct.rpc_authops**, %struct.rpc_authops*** @auth_flavors, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.rpc_authops*, %struct.rpc_authops** %18, i64 %19
  %21 = load %struct.rpc_authops*, %struct.rpc_authops** %20, align 8
  %22 = icmp eq %struct.rpc_authops* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.rpc_authops*, %struct.rpc_authops** %3, align 8
  %25 = load %struct.rpc_authops**, %struct.rpc_authops*** @auth_flavors, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds %struct.rpc_authops*, %struct.rpc_authops** %25, i64 %26
  store %struct.rpc_authops* %24, %struct.rpc_authops** %27, align 8
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %23, %16
  %29 = call i32 @spin_unlock(i32* @rpc_authflavor_lock)
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %28, %13
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
