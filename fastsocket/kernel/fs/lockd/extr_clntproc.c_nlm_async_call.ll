; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_clntproc.c_nlm_async_call.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_clntproc.c_nlm_async_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_rqst = type { i32, i32 }
%struct.rpc_call_ops = type { i32 }
%struct.rpc_message = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlm_async_call(%struct.nlm_rqst* %0, i32 %1, %struct.rpc_call_ops* %2) #0 {
  %4 = alloca %struct.nlm_rqst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpc_call_ops*, align 8
  %7 = alloca %struct.rpc_message, align 8
  store %struct.nlm_rqst* %0, %struct.nlm_rqst** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rpc_call_ops* %2, %struct.rpc_call_ops** %6, align 8
  %8 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %7, i32 0, i32 0
  %9 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  %10 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %9, i32 0, i32 0
  store i32* %10, i32** %8, align 8
  %11 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %7, i32 0, i32 1
  %12 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  %13 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %12, i32 0, i32 1
  store i32* %13, i32** %11, align 8
  %14 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.rpc_call_ops*, %struct.rpc_call_ops** %6, align 8
  %17 = call i32 @nlm_do_async_call(%struct.nlm_rqst* %14, i32 %15, %struct.rpc_message* %7, %struct.rpc_call_ops* %16)
  ret i32 %17
}

declare dso_local i32 @nlm_do_async_call(%struct.nlm_rqst*, i32, %struct.rpc_message*, %struct.rpc_call_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
