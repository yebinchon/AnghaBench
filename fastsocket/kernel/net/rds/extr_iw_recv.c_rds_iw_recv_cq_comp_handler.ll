; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_recv.c_rds_iw_recv_cq_comp_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_recv.c_rds_iw_recv_cq_comp_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.rds_connection = type { %struct.rds_iw_connection* }
%struct.rds_iw_connection = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"conn %p cq %p\0A\00", align 1
@s_iw_rx_cq_call = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_iw_recv_cq_comp_handler(%struct.ib_cq* %0, i8* %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rds_connection*, align 8
  %6 = alloca %struct.rds_iw_connection*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.rds_connection*
  store %struct.rds_connection* %8, %struct.rds_connection** %5, align 8
  %9 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %10 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %9, i32 0, i32 0
  %11 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %10, align 8
  store %struct.rds_iw_connection* %11, %struct.rds_iw_connection** %6, align 8
  %12 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %13 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %14 = call i32 @rdsdebug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.rds_connection* %12, %struct.ib_cq* %13)
  %15 = load i32, i32* @s_iw_rx_cq_call, align 4
  %16 = call i32 @rds_iw_stats_inc(i32 %15)
  %17 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %6, align 8
  %18 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %17, i32 0, i32 0
  %19 = call i32 @tasklet_schedule(i32* %18)
  ret void
}

declare dso_local i32 @rdsdebug(i8*, %struct.rds_connection*, %struct.ib_cq*) #1

declare dso_local i32 @rds_iw_stats_inc(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
