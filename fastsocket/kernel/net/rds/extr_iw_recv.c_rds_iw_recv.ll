; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_recv.c_rds_iw_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_recv.c_rds_iw_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { %struct.rds_iw_connection* }
%struct.rds_iw_connection = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"conn %p\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@s_iw_rx_refill_from_thread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_iw_recv(%struct.rds_connection* %0) #0 {
  %2 = alloca %struct.rds_connection*, align 8
  %3 = alloca %struct.rds_iw_connection*, align 8
  %4 = alloca i32, align 4
  store %struct.rds_connection* %0, %struct.rds_connection** %2, align 8
  %5 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %6 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %5, i32 0, i32 0
  %7 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %6, align 8
  store %struct.rds_iw_connection* %7, %struct.rds_iw_connection** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %9 = call i32 @rdsdebug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.rds_connection* %8)
  %10 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %11 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = load i32, i32* @GFP_HIGHUSER, align 4
  %16 = call i64 @rds_iw_recv_refill(%struct.rds_connection* %13, i32 %14, i32 %15, i32 0)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @s_iw_rx_refill_from_thread, align 4
  %23 = call i32 @rds_iw_stats_inc(i32 %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %26 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %29 = call i64 @rds_conn_up(%struct.rds_connection* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %33 = call i32 @rds_iw_attempt_ack(%struct.rds_iw_connection* %32)
  br label %34

34:                                               ; preds = %31, %24
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @rdsdebug(i8*, %struct.rds_connection*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @rds_iw_recv_refill(%struct.rds_connection*, i32, i32, i32) #1

declare dso_local i32 @rds_iw_stats_inc(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @rds_conn_up(%struct.rds_connection*) #1

declare dso_local i32 @rds_iw_attempt_ack(%struct.rds_iw_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
