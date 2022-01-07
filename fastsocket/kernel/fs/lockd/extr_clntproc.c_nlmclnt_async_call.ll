; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_clntproc.c_nlmclnt_async_call.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_clntproc.c_nlmclnt_async_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_cred = type { i32 }
%struct.nlm_rqst = type { i32, i32 }
%struct.rpc_call_ops = type { i32 }
%struct.rpc_message = type { %struct.rpc_cred*, i32*, i32* }
%struct.rpc_task = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_cred*, %struct.nlm_rqst*, i32, %struct.rpc_call_ops*)* @nlmclnt_async_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlmclnt_async_call(%struct.rpc_cred* %0, %struct.nlm_rqst* %1, i32 %2, %struct.rpc_call_ops* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpc_cred*, align 8
  %7 = alloca %struct.nlm_rqst*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rpc_call_ops*, align 8
  %10 = alloca %struct.rpc_message, align 8
  %11 = alloca %struct.rpc_task*, align 8
  %12 = alloca i32, align 4
  store %struct.rpc_cred* %0, %struct.rpc_cred** %6, align 8
  store %struct.nlm_rqst* %1, %struct.nlm_rqst** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.rpc_call_ops* %3, %struct.rpc_call_ops** %9, align 8
  %13 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 0
  %14 = load %struct.rpc_cred*, %struct.rpc_cred** %6, align 8
  store %struct.rpc_cred* %14, %struct.rpc_cred** %13, align 8
  %15 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 1
  %16 = load %struct.nlm_rqst*, %struct.nlm_rqst** %7, align 8
  %17 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %16, i32 0, i32 0
  store i32* %17, i32** %15, align 8
  %18 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 2
  %19 = load %struct.nlm_rqst*, %struct.nlm_rqst** %7, align 8
  %20 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %19, i32 0, i32 1
  store i32* %20, i32** %18, align 8
  %21 = load %struct.nlm_rqst*, %struct.nlm_rqst** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.rpc_call_ops*, %struct.rpc_call_ops** %9, align 8
  %24 = call %struct.rpc_task* @__nlm_async_call(%struct.nlm_rqst* %21, i32 %22, %struct.rpc_message* %10, %struct.rpc_call_ops* %23)
  store %struct.rpc_task* %24, %struct.rpc_task** %11, align 8
  %25 = load %struct.rpc_task*, %struct.rpc_task** %11, align 8
  %26 = call i64 @IS_ERR(%struct.rpc_task* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load %struct.rpc_task*, %struct.rpc_task** %11, align 8
  %30 = call i32 @PTR_ERR(%struct.rpc_task* %29)
  store i32 %30, i32* %5, align 4
  br label %37

31:                                               ; preds = %4
  %32 = load %struct.rpc_task*, %struct.rpc_task** %11, align 8
  %33 = call i32 @rpc_wait_for_completion_task(%struct.rpc_task* %32)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.rpc_task*, %struct.rpc_task** %11, align 8
  %35 = call i32 @rpc_put_task(%struct.rpc_task* %34)
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %31, %28
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local %struct.rpc_task* @__nlm_async_call(%struct.nlm_rqst*, i32, %struct.rpc_message*, %struct.rpc_call_ops*) #1

declare dso_local i64 @IS_ERR(%struct.rpc_task*) #1

declare dso_local i32 @PTR_ERR(%struct.rpc_task*) #1

declare dso_local i32 @rpc_wait_for_completion_task(%struct.rpc_task*) #1

declare dso_local i32 @rpc_put_task(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
