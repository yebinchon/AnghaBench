; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_tcp_recv.c_rds_tcp_data_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_tcp_recv.c_rds_tcp_data_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { {}*, i32, %struct.rds_connection* }
%struct.rds_connection = type { i32, %struct.rds_tcp_connection* }
%struct.rds_tcp_connection = type { {}* }

@.str = private unnamed_addr constant [27 x i8] c"data ready sk %p bytes %d\0A\00", align 1
@s_tcp_data_ready_calls = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@KM_SOFTIRQ0 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rds_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_tcp_data_ready(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca void (%struct.sock*, i32)*, align 8
  %6 = alloca %struct.rds_connection*, align 8
  %7 = alloca %struct.rds_tcp_connection*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @rdsdebug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.sock* %8, i32 %9)
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 1
  %13 = call i32 @read_lock(i32* %12)
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 2
  %16 = load %struct.rds_connection*, %struct.rds_connection** %15, align 8
  store %struct.rds_connection* %16, %struct.rds_connection** %6, align 8
  %17 = load %struct.rds_connection*, %struct.rds_connection** %6, align 8
  %18 = icmp ne %struct.rds_connection* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to void (%struct.sock*, i32)**
  %23 = load void (%struct.sock*, i32)*, void (%struct.sock*, i32)** %22, align 8
  store void (%struct.sock*, i32)* %23, void (%struct.sock*, i32)** %5, align 8
  br label %47

24:                                               ; preds = %2
  %25 = load %struct.rds_connection*, %struct.rds_connection** %6, align 8
  %26 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %25, i32 0, i32 1
  %27 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %26, align 8
  store %struct.rds_tcp_connection* %27, %struct.rds_tcp_connection** %7, align 8
  %28 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %7, align 8
  %29 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to void (%struct.sock*, i32)**
  %31 = load void (%struct.sock*, i32)*, void (%struct.sock*, i32)** %30, align 8
  store void (%struct.sock*, i32)* %31, void (%struct.sock*, i32)** %5, align 8
  %32 = load i32, i32* @s_tcp_data_ready_calls, align 4
  %33 = call i32 @rds_tcp_stats_inc(i32 %32)
  %34 = load %struct.rds_connection*, %struct.rds_connection** %6, align 8
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = load i32, i32* @KM_SOFTIRQ0, align 4
  %37 = call i32 @rds_tcp_read_sock(%struct.rds_connection* %34, i32 %35, i32 %36)
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %24
  %42 = load i32, i32* @rds_wq, align 4
  %43 = load %struct.rds_connection*, %struct.rds_connection** %6, align 8
  %44 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %43, i32 0, i32 0
  %45 = call i32 @queue_delayed_work(i32 %42, i32* %44, i32 0)
  br label %46

46:                                               ; preds = %41, %24
  br label %47

47:                                               ; preds = %46, %19
  %48 = load %struct.sock*, %struct.sock** %3, align 8
  %49 = getelementptr inbounds %struct.sock, %struct.sock* %48, i32 0, i32 1
  %50 = call i32 @read_unlock(i32* %49)
  %51 = load void (%struct.sock*, i32)*, void (%struct.sock*, i32)** %5, align 8
  %52 = load %struct.sock*, %struct.sock** %3, align 8
  %53 = load i32, i32* %4, align 4
  call void %51(%struct.sock* %52, i32 %53)
  ret void
}

declare dso_local i32 @rdsdebug(i8*, %struct.sock*, i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @rds_tcp_stats_inc(i32) #1

declare dso_local i32 @rds_tcp_read_sock(%struct.rds_connection*, i32, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
