; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_recv.c_rds_ib_recv_tasklet_fn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_recv.c_rds_ib_recv_tasklet_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_connection = type { i64, i32, i32, %struct.rds_connection* }
%struct.rds_connection = type { i32 }
%struct.rds_ib_ack_state = type { i64, i64, i32, i32, i64, i32 }

@IB_CQ_SOLICITED = common dso_local global i32 0, align 4
@s_ib_rx_ring_empty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_ib_recv_tasklet_fn(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.rds_ib_connection*, align 8
  %4 = alloca %struct.rds_connection*, align 8
  %5 = alloca %struct.rds_ib_ack_state, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.rds_ib_connection*
  store %struct.rds_ib_connection* %7, %struct.rds_ib_connection** %3, align 8
  %8 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %9 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %8, i32 0, i32 3
  %10 = load %struct.rds_connection*, %struct.rds_connection** %9, align 8
  store %struct.rds_connection* %10, %struct.rds_connection** %4, align 8
  %11 = bitcast %struct.rds_ib_ack_state* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 40, i1 false)
  %12 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %13 = call i32 @rds_poll_cq(%struct.rds_ib_connection* %12, %struct.rds_ib_ack_state* %5)
  %14 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %15 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IB_CQ_SOLICITED, align 4
  %18 = call i32 @ib_req_notify_cq(i32 %16, i32 %17)
  %19 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %20 = call i32 @rds_poll_cq(%struct.rds_ib_connection* %19, %struct.rds_ib_ack_state* %5)
  %21 = getelementptr inbounds %struct.rds_ib_ack_state, %struct.rds_ib_ack_state* %5, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %26 = getelementptr inbounds %struct.rds_ib_ack_state, %struct.rds_ib_ack_state* %5, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.rds_ib_ack_state, %struct.rds_ib_ack_state* %5, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @rds_ib_set_ack(%struct.rds_ib_connection* %25, i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %24, %1
  %32 = getelementptr inbounds %struct.rds_ib_ack_state, %struct.rds_ib_ack_state* %5, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.rds_ib_ack_state, %struct.rds_ib_ack_state* %5, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %39 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %37, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %35
  %43 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %44 = getelementptr inbounds %struct.rds_ib_ack_state, %struct.rds_ib_ack_state* %5, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @rds_send_drop_acked(%struct.rds_connection* %43, i64 %45, i32* null)
  %47 = getelementptr inbounds %struct.rds_ib_ack_state, %struct.rds_ib_ack_state* %5, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %50 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %42, %35, %31
  %52 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %53 = call i64 @rds_conn_up(%struct.rds_connection* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %57 = call i32 @rds_ib_attempt_ack(%struct.rds_ib_connection* %56)
  br label %58

58:                                               ; preds = %55, %51
  %59 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %60 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %59, i32 0, i32 1
  %61 = call i64 @rds_ib_ring_empty(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @s_ib_rx_ring_empty, align 4
  %65 = call i32 @rds_ib_stats_inc(i32 %64)
  br label %66

66:                                               ; preds = %63, %58
  %67 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %68 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %67, i32 0, i32 1
  %69 = call i64 @rds_ib_ring_low(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %73 = call i32 @rds_ib_recv_refill(%struct.rds_connection* %72, i32 0)
  br label %74

74:                                               ; preds = %71, %66
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rds_poll_cq(%struct.rds_ib_connection*, %struct.rds_ib_ack_state*) #2

declare dso_local i32 @ib_req_notify_cq(i32, i32) #2

declare dso_local i32 @rds_ib_set_ack(%struct.rds_ib_connection*, i32, i32) #2

declare dso_local i32 @rds_send_drop_acked(%struct.rds_connection*, i64, i32*) #2

declare dso_local i64 @rds_conn_up(%struct.rds_connection*) #2

declare dso_local i32 @rds_ib_attempt_ack(%struct.rds_ib_connection*) #2

declare dso_local i64 @rds_ib_ring_empty(i32*) #2

declare dso_local i32 @rds_ib_stats_inc(i32) #2

declare dso_local i64 @rds_ib_ring_low(i32*) #2

declare dso_local i32 @rds_ib_recv_refill(%struct.rds_connection*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
