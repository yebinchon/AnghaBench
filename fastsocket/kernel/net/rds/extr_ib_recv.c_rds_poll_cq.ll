; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_recv.c_rds_poll_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_recv.c_rds_poll_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_connection = type { i32, %struct.TYPE_5__*, %struct.rds_ib_recv_work*, i32, %struct.rds_connection* }
%struct.TYPE_5__ = type { i32 }
%struct.rds_ib_recv_work = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.rds_connection = type { i32 }
%struct.rds_ib_ack_state = type { i32 }
%struct.ib_wc = type { i64, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"wc wr_id 0x%llx status %u (%s) byte_len %u imm_data %u\0A\00", align 1
@s_ib_rx_cq_event = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [76 x i8] c"recv completion on %pI4 had status %u (%s), disconnecting and reconnecting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_ib_connection*, %struct.rds_ib_ack_state*)* @rds_poll_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_poll_cq(%struct.rds_ib_connection* %0, %struct.rds_ib_ack_state* %1) #0 {
  %3 = alloca %struct.rds_ib_connection*, align 8
  %4 = alloca %struct.rds_ib_ack_state*, align 8
  %5 = alloca %struct.rds_connection*, align 8
  %6 = alloca %struct.ib_wc, align 8
  %7 = alloca %struct.rds_ib_recv_work*, align 8
  store %struct.rds_ib_connection* %0, %struct.rds_ib_connection** %3, align 8
  store %struct.rds_ib_ack_state* %1, %struct.rds_ib_ack_state** %4, align 8
  %8 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %9 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %8, i32 0, i32 4
  %10 = load %struct.rds_connection*, %struct.rds_connection** %9, align 8
  store %struct.rds_connection* %10, %struct.rds_connection** %5, align 8
  br label %11

11:                                               ; preds = %82, %2
  %12 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %13 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @ib_poll_cq(i32 %14, i32 1, %struct.ib_wc* %6)
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %86

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @rds_ib_wc_status_str(i64 %23)
  %25 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @be32_to_cpu(i32 %29)
  %31 = call i32 @rdsdebug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %19, i64 %21, i32 %24, i32 %26, i32 %30)
  %32 = load i32, i32* @s_ib_rx_cq_event, align 4
  %33 = call i32 @rds_ib_stats_inc(i32 %32)
  %34 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %35 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %34, i32 0, i32 2
  %36 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %35, align 8
  %37 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %38 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %37, i32 0, i32 0
  %39 = call i64 @rds_ib_ring_oldest(i32* %38)
  %40 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %36, i64 %39
  store %struct.rds_ib_recv_work* %40, %struct.rds_ib_recv_work** %7, align 8
  %41 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %42 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %7, align 8
  %47 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %51 = call i32 @ib_dma_unmap_sg(i32 %45, i32* %49, i32 1, i32 %50)
  %52 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @IB_WC_SUCCESS, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %17
  %57 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %58 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %7, align 8
  %59 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.rds_ib_ack_state*, %struct.rds_ib_ack_state** %4, align 8
  %62 = call i32 @rds_ib_process_recv(%struct.rds_connection* %57, %struct.rds_ib_recv_work* %58, i32 %60, %struct.rds_ib_ack_state* %61)
  br label %82

63:                                               ; preds = %17
  %64 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %65 = call i64 @rds_conn_up(%struct.rds_connection* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %69 = call i64 @rds_conn_connecting(%struct.rds_connection* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %67, %63
  %72 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %73 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %74 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @rds_ib_wc_status_str(i64 %78)
  %80 = call i32 @rds_ib_conn_error(%struct.rds_connection* %72, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32* %74, i64 %76, i32 %79)
  br label %81

81:                                               ; preds = %71, %67
  br label %82

82:                                               ; preds = %81, %56
  %83 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %84 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %83, i32 0, i32 0
  %85 = call i32 @rds_ib_ring_free(i32* %84, i32 1)
  br label %11

86:                                               ; preds = %11
  ret void
}

declare dso_local i64 @ib_poll_cq(i32, i32, %struct.ib_wc*) #1

declare dso_local i32 @rdsdebug(i8*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @rds_ib_wc_status_str(i64) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @rds_ib_stats_inc(i32) #1

declare dso_local i64 @rds_ib_ring_oldest(i32*) #1

declare dso_local i32 @ib_dma_unmap_sg(i32, i32*, i32, i32) #1

declare dso_local i32 @rds_ib_process_recv(%struct.rds_connection*, %struct.rds_ib_recv_work*, i32, %struct.rds_ib_ack_state*) #1

declare dso_local i64 @rds_conn_up(%struct.rds_connection*) #1

declare dso_local i64 @rds_conn_connecting(%struct.rds_connection*) #1

declare dso_local i32 @rds_ib_conn_error(%struct.rds_connection*, i8*, i32*, i64, i32) #1

declare dso_local i32 @rds_ib_ring_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
