; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth.c_rpcauth_bindcred.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth.c_rpcauth_bindcred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { %struct.rpc_rqst* }
%struct.rpc_rqst = type { %struct.rpc_cred* }
%struct.rpc_cred = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rpc_cred* (%struct.rpc_task*, %struct.rpc_cred*, i32)* }

@RPC_TASK_ASYNC = common dso_local global i32 0, align 4
@RPCAUTH_LOOKUP_NEW = common dso_local global i32 0, align 4
@RPC_TASK_ROOTCREDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, %struct.rpc_cred*, i32)* @rpcauth_bindcred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcauth_bindcred(%struct.rpc_task* %0, %struct.rpc_cred* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_task*, align 8
  %6 = alloca %struct.rpc_cred*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rpc_rqst*, align 8
  %9 = alloca %struct.rpc_cred*, align 8
  %10 = alloca i32, align 4
  store %struct.rpc_task* %0, %struct.rpc_task** %5, align 8
  store %struct.rpc_cred* %1, %struct.rpc_cred** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %12 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %11, i32 0, i32 0
  %13 = load %struct.rpc_rqst*, %struct.rpc_rqst** %12, align 8
  store %struct.rpc_rqst* %13, %struct.rpc_rqst** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @RPC_TASK_ASYNC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @RPCAUTH_LOOKUP_NEW, align 4
  %20 = load i32, i32* %10, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %10, align 4
  br label %22

22:                                               ; preds = %18, %3
  %23 = load %struct.rpc_cred*, %struct.rpc_cred** %6, align 8
  %24 = icmp ne %struct.rpc_cred* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load %struct.rpc_cred*, %struct.rpc_cred** %6, align 8
  %27 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.rpc_cred* (%struct.rpc_task*, %struct.rpc_cred*, i32)*, %struct.rpc_cred* (%struct.rpc_task*, %struct.rpc_cred*, i32)** %29, align 8
  %31 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %32 = load %struct.rpc_cred*, %struct.rpc_cred** %6, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call %struct.rpc_cred* %30(%struct.rpc_task* %31, %struct.rpc_cred* %32, i32 %33)
  store %struct.rpc_cred* %34, %struct.rpc_cred** %9, align 8
  br label %49

35:                                               ; preds = %22
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @RPC_TASK_ROOTCREDS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call %struct.rpc_cred* @rpcauth_bind_root_cred(%struct.rpc_task* %41, i32 %42)
  store %struct.rpc_cred* %43, %struct.rpc_cred** %9, align 8
  br label %48

44:                                               ; preds = %35
  %45 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call %struct.rpc_cred* @rpcauth_bind_new_cred(%struct.rpc_task* %45, i32 %46)
  store %struct.rpc_cred* %47, %struct.rpc_cred** %9, align 8
  br label %48

48:                                               ; preds = %44, %40
  br label %49

49:                                               ; preds = %48, %25
  %50 = load %struct.rpc_cred*, %struct.rpc_cred** %9, align 8
  %51 = call i64 @IS_ERR(%struct.rpc_cred* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.rpc_cred*, %struct.rpc_cred** %9, align 8
  %55 = call i32 @PTR_ERR(%struct.rpc_cred* %54)
  store i32 %55, i32* %4, align 4
  br label %70

56:                                               ; preds = %49
  %57 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %58 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %57, i32 0, i32 0
  %59 = load %struct.rpc_cred*, %struct.rpc_cred** %58, align 8
  %60 = icmp ne %struct.rpc_cred* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %63 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %62, i32 0, i32 0
  %64 = load %struct.rpc_cred*, %struct.rpc_cred** %63, align 8
  %65 = call i32 @put_rpccred(%struct.rpc_cred* %64)
  br label %66

66:                                               ; preds = %61, %56
  %67 = load %struct.rpc_cred*, %struct.rpc_cred** %9, align 8
  %68 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %69 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %68, i32 0, i32 0
  store %struct.rpc_cred* %67, %struct.rpc_cred** %69, align 8
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %66, %53
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.rpc_cred* @rpcauth_bind_root_cred(%struct.rpc_task*, i32) #1

declare dso_local %struct.rpc_cred* @rpcauth_bind_new_cred(%struct.rpc_task*, i32) #1

declare dso_local i64 @IS_ERR(%struct.rpc_cred*) #1

declare dso_local i32 @PTR_ERR(%struct.rpc_cred*) #1

declare dso_local i32 @put_rpccred(%struct.rpc_cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
