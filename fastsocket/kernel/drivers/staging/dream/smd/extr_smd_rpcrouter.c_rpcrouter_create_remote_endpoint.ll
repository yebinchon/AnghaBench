; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_rpcrouter.c_rpcrouter_create_remote_endpoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_rpcrouter.c_rpcrouter_create_remote_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rr_remote_endpoint = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RPCROUTER_PID_REMOTE = common dso_local global i32 0, align 4
@remote_endpoints_lock = common dso_local global i32 0, align 4
@remote_endpoints = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rpcrouter_create_remote_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcrouter_create_remote_endpoint(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rr_remote_endpoint*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.rr_remote_endpoint* @kmalloc(i32 20, i32 %6)
  store %struct.rr_remote_endpoint* %7, %struct.rr_remote_endpoint** %4, align 8
  %8 = load %struct.rr_remote_endpoint*, %struct.rr_remote_endpoint** %4, align 8
  %9 = icmp ne %struct.rr_remote_endpoint* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %35

13:                                               ; preds = %1
  %14 = load %struct.rr_remote_endpoint*, %struct.rr_remote_endpoint** %4, align 8
  %15 = call i32 @memset(%struct.rr_remote_endpoint* %14, i32 0, i32 20)
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.rr_remote_endpoint*, %struct.rr_remote_endpoint** %4, align 8
  %18 = getelementptr inbounds %struct.rr_remote_endpoint, %struct.rr_remote_endpoint* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @RPCROUTER_PID_REMOTE, align 4
  %20 = load %struct.rr_remote_endpoint*, %struct.rr_remote_endpoint** %4, align 8
  %21 = getelementptr inbounds %struct.rr_remote_endpoint, %struct.rr_remote_endpoint* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.rr_remote_endpoint*, %struct.rr_remote_endpoint** %4, align 8
  %23 = getelementptr inbounds %struct.rr_remote_endpoint, %struct.rr_remote_endpoint* %22, i32 0, i32 2
  %24 = call i32 @init_waitqueue_head(i32* %23)
  %25 = load %struct.rr_remote_endpoint*, %struct.rr_remote_endpoint** %4, align 8
  %26 = getelementptr inbounds %struct.rr_remote_endpoint, %struct.rr_remote_endpoint* %25, i32 0, i32 1
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @spin_lock_irqsave(i32* @remote_endpoints_lock, i64 %28)
  %30 = load %struct.rr_remote_endpoint*, %struct.rr_remote_endpoint** %4, align 8
  %31 = getelementptr inbounds %struct.rr_remote_endpoint, %struct.rr_remote_endpoint* %30, i32 0, i32 0
  %32 = call i32 @list_add_tail(i32* %31, i32* @remote_endpoints)
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* @remote_endpoints_lock, i64 %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %13, %10
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.rr_remote_endpoint* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.rr_remote_endpoint*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
