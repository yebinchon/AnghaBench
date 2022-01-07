; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_local_print_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_local_print_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_file = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"\09xprt:\09local %lu %lu %lu %ld %lu %lu %lu %llu %llu %lu %llu %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_xprt*, %struct.seq_file*)* @xs_local_print_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xs_local_print_stats(%struct.rpc_xprt* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.rpc_xprt*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i64, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %7 = call i64 @xprt_connected(%struct.rpc_xprt* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i64, i64* @jiffies, align 8
  %11 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %12 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %10, %13
  %15 = load i64, i64* @HZ, align 8
  %16 = sdiv i64 %14, %15
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %9, %2
  %18 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %19 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %20 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 10
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %24 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %28 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %33 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %37 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %41 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %45 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %49 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %53 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %57 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %61 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26, i32 %30, i64 %31, i32 %35, i32 %39, i32 %43, i32 %47, i32 %51, i32 %55, i32 %59, i32 %63)
  ret void
}

declare dso_local i64 @xprt_connected(%struct.rpc_xprt*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
