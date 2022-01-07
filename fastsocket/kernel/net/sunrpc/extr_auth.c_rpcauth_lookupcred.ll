; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth.c_rpcauth_lookupcred.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth.c_rpcauth_lookupcred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_cred = type { i32 }
%struct.rpc_auth = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rpc_cred* (%struct.rpc_auth*, %struct.auth_cred*, i32)*, i32 }
%struct.auth_cred = type { i32, i32, i32 }
%struct.cred = type { i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"RPC:       looking up %s cred\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_cred* @rpcauth_lookupcred(%struct.rpc_auth* %0, i32 %1) #0 {
  %3 = alloca %struct.rpc_auth*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.auth_cred, align 4
  %6 = alloca %struct.rpc_cred*, align 8
  %7 = alloca %struct.cred*, align 8
  store %struct.rpc_auth* %0, %struct.rpc_auth** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %8, %struct.cred** %7, align 8
  %9 = load %struct.rpc_auth*, %struct.rpc_auth** %3, align 8
  %10 = getelementptr inbounds %struct.rpc_auth, %struct.rpc_auth* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = call i32 @memset(%struct.auth_cred* %5, i32 0, i32 12)
  %16 = load %struct.cred*, %struct.cred** %7, align 8
  %17 = getelementptr inbounds %struct.cred, %struct.cred* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.auth_cred, %struct.auth_cred* %5, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load %struct.cred*, %struct.cred** %7, align 8
  %21 = getelementptr inbounds %struct.cred, %struct.cred* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.auth_cred, %struct.auth_cred* %5, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load %struct.cred*, %struct.cred** %7, align 8
  %25 = getelementptr inbounds %struct.cred, %struct.cred* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @get_group_info(i32 %26)
  %28 = getelementptr inbounds %struct.auth_cred, %struct.auth_cred* %5, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.rpc_auth*, %struct.rpc_auth** %3, align 8
  %30 = getelementptr inbounds %struct.rpc_auth, %struct.rpc_auth* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.rpc_cred* (%struct.rpc_auth*, %struct.auth_cred*, i32)*, %struct.rpc_cred* (%struct.rpc_auth*, %struct.auth_cred*, i32)** %32, align 8
  %34 = load %struct.rpc_auth*, %struct.rpc_auth** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call %struct.rpc_cred* %33(%struct.rpc_auth* %34, %struct.auth_cred* %5, i32 %35)
  store %struct.rpc_cred* %36, %struct.rpc_cred** %6, align 8
  %37 = getelementptr inbounds %struct.auth_cred, %struct.auth_cred* %5, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @put_group_info(i32 %38)
  %40 = load %struct.rpc_cred*, %struct.rpc_cred** %6, align 8
  ret %struct.rpc_cred* %40
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @memset(%struct.auth_cred*, i32, i32) #1

declare dso_local i32 @get_group_info(i32) #1

declare dso_local i32 @put_group_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
