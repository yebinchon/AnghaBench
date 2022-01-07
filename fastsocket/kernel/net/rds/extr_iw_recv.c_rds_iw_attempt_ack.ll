; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_recv.c_rds_iw_attempt_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_recv.c_rds_iw_attempt_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_iw_connection = type { i32 }

@IB_ACK_REQUESTED = common dso_local global i32 0, align 4
@IB_ACK_IN_FLIGHT = common dso_local global i32 0, align 4
@s_iw_ack_send_delayed = common dso_local global i32 0, align 4
@RDS_MAX_ADV_CREDIT = common dso_local global i32 0, align 4
@s_iw_tx_throttle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_iw_attempt_ack(%struct.rds_iw_connection* %0) #0 {
  %2 = alloca %struct.rds_iw_connection*, align 8
  %3 = alloca i32, align 4
  store %struct.rds_iw_connection* %0, %struct.rds_iw_connection** %2, align 8
  %4 = load i32, i32* @IB_ACK_REQUESTED, align 4
  %5 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %2, align 8
  %6 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %5, i32 0, i32 0
  %7 = call i32 @test_bit(i32 %4, i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %39

10:                                               ; preds = %1
  %11 = load i32, i32* @IB_ACK_IN_FLIGHT, align 4
  %12 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %2, align 8
  %13 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %12, i32 0, i32 0
  %14 = call i64 @test_and_set_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* @s_iw_ack_send_delayed, align 4
  %18 = call i32 @rds_iw_stats_inc(i32 %17)
  br label %39

19:                                               ; preds = %10
  %20 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %2, align 8
  %21 = load i32, i32* @RDS_MAX_ADV_CREDIT, align 4
  %22 = call i32 @rds_iw_send_grab_credits(%struct.rds_iw_connection* %20, i32 1, i32* %3, i32 0, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @s_iw_tx_throttle, align 4
  %26 = call i32 @rds_iw_stats_inc(i32 %25)
  %27 = load i32, i32* @IB_ACK_IN_FLIGHT, align 4
  %28 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %2, align 8
  %29 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %28, i32 0, i32 0
  %30 = call i32 @clear_bit(i32 %27, i32* %29)
  br label %39

31:                                               ; preds = %19
  %32 = load i32, i32* @IB_ACK_REQUESTED, align 4
  %33 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %2, align 8
  %34 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %33, i32 0, i32 0
  %35 = call i32 @clear_bit(i32 %32, i32* %34)
  %36 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @rds_iw_send_ack(%struct.rds_iw_connection* %36, i32 %37)
  br label %39

39:                                               ; preds = %31, %24, %16, %9
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @rds_iw_stats_inc(i32) #1

declare dso_local i32 @rds_iw_send_grab_credits(%struct.rds_iw_connection*, i32, i32*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @rds_iw_send_ack(%struct.rds_iw_connection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
