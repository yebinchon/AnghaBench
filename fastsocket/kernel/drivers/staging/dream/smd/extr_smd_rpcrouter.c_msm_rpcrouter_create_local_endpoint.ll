; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_rpcrouter.c_msm_rpcrouter_create_local_endpoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_rpcrouter.c_msm_rpcrouter_create_local_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_rpc_endpoint = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i64, i32, i64 }
%struct.rr_server = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RPCROUTER_PID_LOCAL = common dso_local global i32 0, align 4
@msm_rpcrouter_devno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Creating local ept %p @ %08x:%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Creating a master local ept %p\0A\00", align 1
@WAKE_LOCK_SUSPEND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"rpc_read\00", align 1
@local_endpoints_lock = common dso_local global i32 0, align 4
@local_endpoints = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.msm_rpc_endpoint* @msm_rpcrouter_create_local_endpoint(i64 %0) #0 {
  %2 = alloca %struct.msm_rpc_endpoint*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.msm_rpc_endpoint*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rr_server*, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.msm_rpc_endpoint* @kmalloc(i32 80, i32 %7)
  store %struct.msm_rpc_endpoint* %8, %struct.msm_rpc_endpoint** %4, align 8
  %9 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %4, align 8
  %10 = icmp ne %struct.msm_rpc_endpoint* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.msm_rpc_endpoint* null, %struct.msm_rpc_endpoint** %2, align 8
  br label %102

12:                                               ; preds = %1
  %13 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %4, align 8
  %14 = call i32 @memset(%struct.msm_rpc_endpoint* %13, i32 0, i32 80)
  %15 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %4, align 8
  %16 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %15, i32 0, i32 0
  store i32 -1, i32* %16, align 8
  %17 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %4, align 8
  %18 = ptrtoint %struct.msm_rpc_endpoint* %17 to i64
  %19 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %4, align 8
  %20 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %19, i32 0, i32 13
  store i64 %18, i64* %20, align 8
  %21 = load i32, i32* @RPCROUTER_PID_LOCAL, align 4
  %22 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %4, align 8
  %23 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %22, i32 0, i32 12
  store i32 %21, i32* %23, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %4, align 8
  %26 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %25, i32 0, i32 11
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @msm_rpcrouter_devno, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %72

30:                                               ; preds = %12
  %31 = load i64, i64* %3, align 8
  %32 = call i64 @MKDEV(i32 0, i32 0)
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %72

34:                                               ; preds = %30
  %35 = load i64, i64* %3, align 8
  %36 = call %struct.rr_server* @rpcrouter_lookup_server_by_dev(i64 %35)
  store %struct.rr_server* %36, %struct.rr_server** %6, align 8
  %37 = load %struct.rr_server*, %struct.rr_server** %6, align 8
  %38 = icmp ne %struct.rr_server* %37, null
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load %struct.rr_server*, %struct.rr_server** %6, align 8
  %43 = getelementptr inbounds %struct.rr_server, %struct.rr_server* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %4, align 8
  %46 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.rr_server*, %struct.rr_server** %6, align 8
  %48 = getelementptr inbounds %struct.rr_server, %struct.rr_server* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %4, align 8
  %51 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %50, i32 0, i32 10
  store i32 %49, i32* %51, align 8
  %52 = load %struct.rr_server*, %struct.rr_server** %6, align 8
  %53 = getelementptr inbounds %struct.rr_server, %struct.rr_server* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @cpu_to_be32(i32 %54)
  %56 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %4, align 8
  %57 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %56, i32 0, i32 9
  store i8* %55, i8** %57, align 8
  %58 = load %struct.rr_server*, %struct.rr_server** %6, align 8
  %59 = getelementptr inbounds %struct.rr_server, %struct.rr_server* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @cpu_to_be32(i32 %60)
  %62 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %4, align 8
  %63 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %62, i32 0, i32 8
  store i8* %61, i8** %63, align 8
  %64 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %4, align 8
  %65 = load %struct.rr_server*, %struct.rr_server** %6, align 8
  %66 = getelementptr inbounds %struct.rr_server, %struct.rr_server* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.rr_server*, %struct.rr_server** %6, align 8
  %69 = getelementptr inbounds %struct.rr_server, %struct.rr_server* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, %struct.msm_rpc_endpoint*, ...) @D(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.msm_rpc_endpoint* %64, i32 %67, i32 %70)
  br label %77

72:                                               ; preds = %30, %12
  %73 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %4, align 8
  %74 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %73, i32 0, i32 1
  store i32 -1, i32* %74, align 4
  %75 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %4, align 8
  %76 = call i32 (i8*, %struct.msm_rpc_endpoint*, ...) @D(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.msm_rpc_endpoint* %75)
  br label %77

77:                                               ; preds = %72, %34
  %78 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %4, align 8
  %79 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %78, i32 0, i32 7
  %80 = call i32 @init_waitqueue_head(i32* %79)
  %81 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %4, align 8
  %82 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %81, i32 0, i32 6
  %83 = call i32 @INIT_LIST_HEAD(i32* %82)
  %84 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %4, align 8
  %85 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %84, i32 0, i32 5
  %86 = call i32 @spin_lock_init(i32* %85)
  %87 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %4, align 8
  %88 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %87, i32 0, i32 4
  %89 = load i32, i32* @WAKE_LOCK_SUSPEND, align 4
  %90 = call i32 @wake_lock_init(i32* %88, i32 %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %91 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %4, align 8
  %92 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %91, i32 0, i32 3
  %93 = call i32 @INIT_LIST_HEAD(i32* %92)
  %94 = load i64, i64* %5, align 8
  %95 = call i32 @spin_lock_irqsave(i32* @local_endpoints_lock, i64 %94)
  %96 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %4, align 8
  %97 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %96, i32 0, i32 2
  %98 = call i32 @list_add_tail(i32* %97, i32* @local_endpoints)
  %99 = load i64, i64* %5, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* @local_endpoints_lock, i64 %99)
  %101 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %4, align 8
  store %struct.msm_rpc_endpoint* %101, %struct.msm_rpc_endpoint** %2, align 8
  br label %102

102:                                              ; preds = %77, %11
  %103 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %2, align 8
  ret %struct.msm_rpc_endpoint* %103
}

declare dso_local %struct.msm_rpc_endpoint* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.msm_rpc_endpoint*, i32, i32) #1

declare dso_local i64 @MKDEV(i32, i32) #1

declare dso_local %struct.rr_server* @rpcrouter_lookup_server_by_dev(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @D(i8*, %struct.msm_rpc_endpoint*, ...) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @wake_lock_init(i32*, i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
