; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_transport.c_xprt_rdma_print_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_transport.c_xprt_rdma_print_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_file = type { i32 }
%struct.rpcrdma_xprt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [92 x i8] c"\09xprt:\09rdma %u %lu %lu %lu %ld %lu %lu %lu %Lu %Lu %lu %lu %lu %Lu %Lu %Lu %Lu %lu %lu %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_xprt*, %struct.seq_file*)* @xprt_rdma_print_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xprt_rdma_print_stats(%struct.rpc_xprt* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.rpc_xprt*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.rpcrdma_xprt*, align 8
  %6 = alloca i64, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %7 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %8 = call %struct.rpcrdma_xprt* @rpcx_to_rdmax(%struct.rpc_xprt* %7)
  store %struct.rpcrdma_xprt* %8, %struct.rpcrdma_xprt** %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %10 = call i64 @xprt_connected(%struct.rpc_xprt* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i64, i64* @jiffies, align 8
  %14 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %15 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %13, %16
  %18 = load i64, i64* @HZ, align 8
  %19 = sdiv i64 %17, %18
  store i64 %19, i64* %6, align 8
  br label %20

20:                                               ; preds = %12, %2
  %21 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %22 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %23 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %27 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %31 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %36 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %40 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %44 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %48 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %52 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %56 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 9
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %60 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %64 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %68 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %72 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %76 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %80 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %84 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %88 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %92 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0), i32 0, i32 %25, i32 %29, i32 %33, i64 %34, i32 %38, i32 %42, i32 %46, i32 %50, i32 %54, i32 %58, i32 %62, i32 %66, i32 %70, i32 %74, i32 %78, i32 %82, i32 %86, i32 %90, i32 %94)
  ret void
}

declare dso_local %struct.rpcrdma_xprt* @rpcx_to_rdmax(%struct.rpc_xprt*) #1

declare dso_local i64 @xprt_connected(%struct.rpc_xprt*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
