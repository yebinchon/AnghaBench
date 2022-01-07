; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_recv.c_rds_ib_send_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_recv.c_rds_ib_send_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_connection = type { i32, i32, i32, %struct.TYPE_2__*, i32, %struct.rds_header* }
%struct.TYPE_2__ = type { i32 }
%struct.rds_header = type { i32, i32 }
%struct.ib_send_wr = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"send_ack: ic %p ack %llu\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@IB_ACK_IN_FLIGHT = common dso_local global i32 0, align 4
@IB_ACK_REQUESTED = common dso_local global i32 0, align 4
@s_ib_ack_send_failure = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"sending ack failed\0A\00", align 1
@s_ib_ack_sent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_ib_connection*, i32)* @rds_ib_send_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_ib_send_ack(%struct.rds_ib_connection* %0, i32 %1) #0 {
  %3 = alloca %struct.rds_ib_connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rds_header*, align 8
  %6 = alloca %struct.ib_send_wr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.rds_ib_connection* %0, %struct.rds_ib_connection** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %10 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %9, i32 0, i32 5
  %11 = load %struct.rds_header*, %struct.rds_header** %10, align 8
  store %struct.rds_header* %11, %struct.rds_header** %5, align 8
  %12 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %13 = call i64 @rds_ib_get_ack(%struct.rds_ib_connection* %12)
  store i64 %13, i64* %7, align 8
  %14 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @rdsdebug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.rds_ib_connection* %14, i64 %15)
  %17 = load %struct.rds_header*, %struct.rds_header** %5, align 8
  %18 = call i32 @rds_message_populate_header(%struct.rds_header* %17, i32 0, i32 0, i32 0)
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @cpu_to_be64(i64 %19)
  %21 = load %struct.rds_header*, %struct.rds_header** %5, align 8
  %22 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.rds_header*, %struct.rds_header** %5, align 8
  %25 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.rds_header*, %struct.rds_header** %5, align 8
  %27 = call i32 @rds_message_make_checksum(%struct.rds_header* %26)
  %28 = load i32, i32* @jiffies, align 4
  %29 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %30 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %32 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %37 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %36, i32 0, i32 2
  %38 = call i32 @ib_post_send(i32 %35, i32* %37, %struct.ib_send_wr** %6)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %2
  %43 = load i32, i32* @IB_ACK_IN_FLIGHT, align 4
  %44 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %45 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %44, i32 0, i32 1
  %46 = call i32 @clear_bit(i32 %43, i32* %45)
  %47 = load i32, i32* @IB_ACK_REQUESTED, align 4
  %48 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %49 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %48, i32 0, i32 1
  %50 = call i32 @set_bit(i32 %47, i32* %49)
  %51 = load i32, i32* @s_ib_ack_send_failure, align 4
  %52 = call i32 @rds_ib_stats_inc(i32 %51)
  %53 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %54 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @rds_ib_conn_error(i32 %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %60

57:                                               ; preds = %2
  %58 = load i32, i32* @s_ib_ack_sent, align 4
  %59 = call i32 @rds_ib_stats_inc(i32 %58)
  br label %60

60:                                               ; preds = %57, %42
  ret void
}

declare dso_local i64 @rds_ib_get_ack(%struct.rds_ib_connection*) #1

declare dso_local i32 @rdsdebug(i8*, %struct.rds_ib_connection*, i64) #1

declare dso_local i32 @rds_message_populate_header(%struct.rds_header*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @rds_message_make_checksum(%struct.rds_header*) #1

declare dso_local i32 @ib_post_send(i32, i32*, %struct.ib_send_wr**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rds_ib_stats_inc(i32) #1

declare dso_local i32 @rds_ib_conn_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
