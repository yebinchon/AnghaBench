; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_dynamic_alloc_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_dynamic_alloc_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.rpc_xprt = type { i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_rqst* (%struct.rpc_xprt*, i32)* @xprt_dynamic_alloc_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_rqst* @xprt_dynamic_alloc_slot(%struct.rpc_xprt* %0, i32 %1) #0 {
  %3 = alloca %struct.rpc_xprt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_rqst*, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @EAGAIN, align 4
  %7 = sub nsw i32 0, %6
  %8 = call %struct.rpc_rqst* @ERR_PTR(i32 %7)
  store %struct.rpc_rqst* %8, %struct.rpc_rqst** %5, align 8
  %9 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %10 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %9, i32 0, i32 0
  %11 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %12 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @atomic_add_unless(i32* %10, i32 1, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %30

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = call %struct.rpc_rqst* @kzalloc(i32 4, i32 %18)
  store %struct.rpc_rqst* %19, %struct.rpc_rqst** %5, align 8
  %20 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %21 = icmp ne %struct.rpc_rqst* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %30

23:                                               ; preds = %17
  %24 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %25 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %24, i32 0, i32 0
  %26 = call i32 @atomic_dec(i32* %25)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.rpc_rqst* @ERR_PTR(i32 %28)
  store %struct.rpc_rqst* %29, %struct.rpc_rqst** %5, align 8
  br label %30

30:                                               ; preds = %23, %22, %16
  %31 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  ret %struct.rpc_rqst* %31
}

declare dso_local %struct.rpc_rqst* @ERR_PTR(i32) #1

declare dso_local i32 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local %struct.rpc_rqst* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
