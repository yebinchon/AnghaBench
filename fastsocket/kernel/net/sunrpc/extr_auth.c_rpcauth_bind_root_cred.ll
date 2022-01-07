; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth.c_rpcauth_bind_root_cred.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth.c_rpcauth_bind_root_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_cred = type { i32 }
%struct.rpc_task = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.rpc_auth* }
%struct.rpc_auth = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.rpc_cred* (%struct.rpc_auth*, %struct.auth_cred*, i32)*, i32 }
%struct.auth_cred = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"RPC: %5u looking up %s cred\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_cred* (%struct.rpc_task*, i32)* @rpcauth_bind_root_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_cred* @rpcauth_bind_root_cred(%struct.rpc_task* %0, i32 %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_auth*, align 8
  %6 = alloca %struct.auth_cred, align 4
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %8 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.rpc_auth*, %struct.rpc_auth** %10, align 8
  store %struct.rpc_auth* %11, %struct.rpc_auth** %5, align 8
  %12 = bitcast %struct.auth_cred* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  %13 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %14 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %17 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.rpc_auth*, %struct.rpc_auth** %19, align 8
  %21 = getelementptr inbounds %struct.rpc_auth, %struct.rpc_auth* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %24)
  %26 = load %struct.rpc_auth*, %struct.rpc_auth** %5, align 8
  %27 = getelementptr inbounds %struct.rpc_auth, %struct.rpc_auth* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.rpc_cred* (%struct.rpc_auth*, %struct.auth_cred*, i32)*, %struct.rpc_cred* (%struct.rpc_auth*, %struct.auth_cred*, i32)** %29, align 8
  %31 = load %struct.rpc_auth*, %struct.rpc_auth** %5, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call %struct.rpc_cred* %30(%struct.rpc_auth* %31, %struct.auth_cred* %6, i32 %32)
  ret %struct.rpc_cred* %33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dprintk(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
