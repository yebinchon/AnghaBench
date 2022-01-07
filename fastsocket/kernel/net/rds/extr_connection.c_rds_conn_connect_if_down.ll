; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_connection.c_rds_conn_connect_if_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_connection.c_rds_conn_connect_if_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { i32, i32 }

@RDS_CONN_DOWN = common dso_local global i64 0, align 8
@RDS_RECONNECT_PENDING = common dso_local global i32 0, align 4
@rds_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_conn_connect_if_down(%struct.rds_connection* %0) #0 {
  %2 = alloca %struct.rds_connection*, align 8
  store %struct.rds_connection* %0, %struct.rds_connection** %2, align 8
  %3 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %4 = call i64 @rds_conn_state(%struct.rds_connection* %3)
  %5 = load i64, i64* @RDS_CONN_DOWN, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load i32, i32* @RDS_RECONNECT_PENDING, align 4
  %9 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %10 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %9, i32 0, i32 1
  %11 = call i32 @test_and_set_bit(i32 %8, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = load i32, i32* @rds_wq, align 4
  %15 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %16 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %15, i32 0, i32 0
  %17 = call i32 @queue_delayed_work(i32 %14, i32* %16, i32 0)
  br label %18

18:                                               ; preds = %13, %7, %1
  ret void
}

declare dso_local i64 @rds_conn_state(%struct.rds_connection*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
