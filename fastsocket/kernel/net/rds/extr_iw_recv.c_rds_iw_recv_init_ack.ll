; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_recv.c_rds_iw_recv_init_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_recv.c_rds_iw_recv_init_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_iw_connection = type { i32, %struct.ib_sge, %struct.ib_send_wr }
%struct.ib_sge = type { i32, i32, i32 }
%struct.ib_send_wr = type { i32, i32, i32, i32, %struct.ib_sge* }

@IB_WR_SEND = common dso_local global i32 0, align 4
@RDS_IW_ACK_WR_ID = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@IB_SEND_SOLICITED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_iw_recv_init_ack(%struct.rds_iw_connection* %0) #0 {
  %2 = alloca %struct.rds_iw_connection*, align 8
  %3 = alloca %struct.ib_send_wr*, align 8
  %4 = alloca %struct.ib_sge*, align 8
  store %struct.rds_iw_connection* %0, %struct.rds_iw_connection** %2, align 8
  %5 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %2, align 8
  %6 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %5, i32 0, i32 2
  store %struct.ib_send_wr* %6, %struct.ib_send_wr** %3, align 8
  %7 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %2, align 8
  %8 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %7, i32 0, i32 1
  store %struct.ib_sge* %8, %struct.ib_sge** %4, align 8
  %9 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %2, align 8
  %10 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.ib_sge*, %struct.ib_sge** %4, align 8
  %13 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.ib_sge*, %struct.ib_sge** %4, align 8
  %15 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %14, i32 0, i32 0
  store i32 4, i32* %15, align 4
  %16 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %2, align 8
  %17 = call i32 @rds_iw_local_dma_lkey(%struct.rds_iw_connection* %16)
  %18 = load %struct.ib_sge*, %struct.ib_sge** %4, align 8
  %19 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ib_sge*, %struct.ib_sge** %4, align 8
  %21 = load %struct.ib_send_wr*, %struct.ib_send_wr** %3, align 8
  %22 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %21, i32 0, i32 4
  store %struct.ib_sge* %20, %struct.ib_sge** %22, align 8
  %23 = load %struct.ib_send_wr*, %struct.ib_send_wr** %3, align 8
  %24 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load i32, i32* @IB_WR_SEND, align 4
  %26 = load %struct.ib_send_wr*, %struct.ib_send_wr** %3, align 8
  %27 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @RDS_IW_ACK_WR_ID, align 4
  %29 = load %struct.ib_send_wr*, %struct.ib_send_wr** %3, align 8
  %30 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %32 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.ib_send_wr*, %struct.ib_send_wr** %3, align 8
  %35 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  ret void
}

declare dso_local i32 @rds_iw_local_dma_lkey(%struct.rds_iw_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
