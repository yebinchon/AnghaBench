; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_recv.c_rds_poll_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_recv.c_rds_poll_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_iw_connection = type { i32, %struct.rds_iw_recv_work*, i32, %struct.rds_connection* }
%struct.rds_iw_recv_work = type { i32 }
%struct.rds_connection = type { i32 }
%struct.rds_iw_ack_state = type { i32 }
%struct.ib_wc = type { i64, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"wc wr_id 0x%llx status %u byte_len %u imm_data %u\0A\00", align 1
@s_iw_rx_cq_event = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [71 x i8] c"recv completion on %pI4 had status %u, disconnecting and reconnecting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_iw_connection*, %struct.rds_iw_ack_state*)* @rds_poll_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_poll_cq(%struct.rds_iw_connection* %0, %struct.rds_iw_ack_state* %1) #0 {
  %3 = alloca %struct.rds_iw_connection*, align 8
  %4 = alloca %struct.rds_iw_ack_state*, align 8
  %5 = alloca %struct.rds_connection*, align 8
  %6 = alloca %struct.ib_wc, align 8
  %7 = alloca %struct.rds_iw_recv_work*, align 8
  store %struct.rds_iw_connection* %0, %struct.rds_iw_connection** %3, align 8
  store %struct.rds_iw_ack_state* %1, %struct.rds_iw_ack_state** %4, align 8
  %8 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %9 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %8, i32 0, i32 3
  %10 = load %struct.rds_connection*, %struct.rds_connection** %9, align 8
  store %struct.rds_connection* %10, %struct.rds_connection** %5, align 8
  br label %11

11:                                               ; preds = %68, %2
  %12 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %13 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @ib_poll_cq(i32 %14, i32 1, %struct.ib_wc* %6)
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %72

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @be32_to_cpu(i32 %26)
  %28 = call i32 @rdsdebug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %19, i64 %21, i32 %23, i32 %27)
  %29 = load i32, i32* @s_iw_rx_cq_event, align 4
  %30 = call i32 @rds_iw_stats_inc(i32 %29)
  %31 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %32 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %31, i32 0, i32 1
  %33 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %32, align 8
  %34 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %35 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %34, i32 0, i32 0
  %36 = call i64 @rds_iw_ring_oldest(i32* %35)
  %37 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %33, i64 %36
  store %struct.rds_iw_recv_work* %37, %struct.rds_iw_recv_work** %7, align 8
  %38 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %39 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %7, align 8
  %40 = call i32 @rds_iw_recv_unmap_page(%struct.rds_iw_connection* %38, %struct.rds_iw_recv_work* %39)
  %41 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %42 = call i64 @rds_conn_up(%struct.rds_connection* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %17
  %45 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %46 = call i64 @rds_conn_connecting(%struct.rds_connection* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %44, %17
  %49 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IB_WC_SUCCESS, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %55 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %7, align 8
  %56 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.rds_iw_ack_state*, %struct.rds_iw_ack_state** %4, align 8
  %59 = call i32 @rds_iw_process_recv(%struct.rds_connection* %54, %struct.rds_iw_recv_work* %55, i32 %57, %struct.rds_iw_ack_state* %58)
  br label %67

60:                                               ; preds = %48
  %61 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %62 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %63 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @rds_iw_conn_error(%struct.rds_connection* %61, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32* %63, i64 %65)
  br label %67

67:                                               ; preds = %60, %53
  br label %68

68:                                               ; preds = %67, %44
  %69 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %70 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %69, i32 0, i32 0
  %71 = call i32 @rds_iw_ring_free(i32* %70, i32 1)
  br label %11

72:                                               ; preds = %11
  ret void
}

declare dso_local i64 @ib_poll_cq(i32, i32, %struct.ib_wc*) #1

declare dso_local i32 @rdsdebug(i8*, i64, i64, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @rds_iw_stats_inc(i32) #1

declare dso_local i64 @rds_iw_ring_oldest(i32*) #1

declare dso_local i32 @rds_iw_recv_unmap_page(%struct.rds_iw_connection*, %struct.rds_iw_recv_work*) #1

declare dso_local i64 @rds_conn_up(%struct.rds_connection*) #1

declare dso_local i64 @rds_conn_connecting(%struct.rds_connection*) #1

declare dso_local i32 @rds_iw_process_recv(%struct.rds_connection*, %struct.rds_iw_recv_work*, i32, %struct.rds_iw_ack_state*) #1

declare dso_local i32 @rds_iw_conn_error(%struct.rds_connection*, i8*, i32*, i64) #1

declare dso_local i32 @rds_iw_ring_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
