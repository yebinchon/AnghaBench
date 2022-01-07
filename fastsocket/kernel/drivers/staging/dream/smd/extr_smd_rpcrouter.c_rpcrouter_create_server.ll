; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_rpcrouter.c_rpcrouter_create_server.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_rpcrouter.c_rpcrouter_create_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rr_server = type { i32, i64, i64, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@server_list_lock = common dso_local global i32 0, align 4
@server_list = common dso_local global i32 0, align 4
@RPCROUTER_PID_REMOTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rr_server* (i64, i64, i64, i64)* @rpcrouter_create_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rr_server* @rpcrouter_create_server(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.rr_server*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rr_server*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.rr_server* @kmalloc(i32 40, i32 %13)
  store %struct.rr_server* %14, %struct.rr_server** %10, align 8
  %15 = load %struct.rr_server*, %struct.rr_server** %10, align 8
  %16 = icmp ne %struct.rr_server* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.rr_server* @ERR_PTR(i32 %19)
  store %struct.rr_server* %20, %struct.rr_server** %5, align 8
  br label %67

21:                                               ; preds = %4
  %22 = load %struct.rr_server*, %struct.rr_server** %10, align 8
  %23 = call i32 @memset(%struct.rr_server* %22, i32 0, i32 40)
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.rr_server*, %struct.rr_server** %10, align 8
  %26 = getelementptr inbounds %struct.rr_server, %struct.rr_server* %25, i32 0, i32 4
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.rr_server*, %struct.rr_server** %10, align 8
  %29 = getelementptr inbounds %struct.rr_server, %struct.rr_server* %28, i32 0, i32 3
  store i64 %27, i64* %29, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.rr_server*, %struct.rr_server** %10, align 8
  %32 = getelementptr inbounds %struct.rr_server, %struct.rr_server* %31, i32 0, i32 2
  store i64 %30, i64* %32, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.rr_server*, %struct.rr_server** %10, align 8
  %35 = getelementptr inbounds %struct.rr_server, %struct.rr_server* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @spin_lock_irqsave(i32* @server_list_lock, i64 %36)
  %38 = load %struct.rr_server*, %struct.rr_server** %10, align 8
  %39 = getelementptr inbounds %struct.rr_server, %struct.rr_server* %38, i32 0, i32 0
  %40 = call i32 @list_add_tail(i32* %39, i32* @server_list)
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* @server_list_lock, i64 %41)
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @RPCROUTER_PID_REMOTE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %21
  %47 = load %struct.rr_server*, %struct.rr_server** %10, align 8
  %48 = call i32 @msm_rpcrouter_create_server_cdev(%struct.rr_server* %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %55

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %21
  %54 = load %struct.rr_server*, %struct.rr_server** %10, align 8
  store %struct.rr_server* %54, %struct.rr_server** %5, align 8
  br label %67

55:                                               ; preds = %51
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @spin_lock_irqsave(i32* @server_list_lock, i64 %56)
  %58 = load %struct.rr_server*, %struct.rr_server** %10, align 8
  %59 = getelementptr inbounds %struct.rr_server, %struct.rr_server* %58, i32 0, i32 0
  %60 = call i32 @list_del(i32* %59)
  %61 = load i64, i64* %11, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* @server_list_lock, i64 %61)
  %63 = load %struct.rr_server*, %struct.rr_server** %10, align 8
  %64 = call i32 @kfree(%struct.rr_server* %63)
  %65 = load i32, i32* %12, align 4
  %66 = call %struct.rr_server* @ERR_PTR(i32 %65)
  store %struct.rr_server* %66, %struct.rr_server** %5, align 8
  br label %67

67:                                               ; preds = %55, %53, %17
  %68 = load %struct.rr_server*, %struct.rr_server** %5, align 8
  ret %struct.rr_server* %68
}

declare dso_local %struct.rr_server* @kmalloc(i32, i32) #1

declare dso_local %struct.rr_server* @ERR_PTR(i32) #1

declare dso_local i32 @memset(%struct.rr_server*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msm_rpcrouter_create_server_cdev(%struct.rr_server*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.rr_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
