; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_recv.c_rds_iw_recv_init_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_recv.c_rds_iw_recv_init_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_iw_connection = type { i64, %struct.TYPE_3__, %struct.rds_iw_recv_work* }
%struct.TYPE_3__ = type { i32 }
%struct.rds_iw_recv_work = type { i32, %struct.TYPE_4__, i32*, i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32* }
%struct.ib_sge = type { i32, i64, i64 }

@RDS_IW_RECV_SGE = common dso_local global i32 0, align 4
@RDS_FRAG_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_iw_recv_init_ring(%struct.rds_iw_connection* %0) #0 {
  %2 = alloca %struct.rds_iw_connection*, align 8
  %3 = alloca %struct.rds_iw_recv_work*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_sge*, align 8
  store %struct.rds_iw_connection* %0, %struct.rds_iw_connection** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %2, align 8
  %7 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %6, i32 0, i32 2
  %8 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %7, align 8
  store %struct.rds_iw_recv_work* %8, %struct.rds_iw_recv_work** %3, align 8
  br label %9

9:                                                ; preds = %68, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %2, align 8
  %12 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %73

16:                                               ; preds = %9
  %17 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %3, align 8
  %18 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %17, i32 0, i32 3
  store i32* null, i32** %18, align 8
  %19 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %3, align 8
  %20 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %19, i32 0, i32 2
  store i32* null, i32** %20, align 8
  %21 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %3, align 8
  %22 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  store i32* null, i32** %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %3, align 8
  %26 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %3, align 8
  %29 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %3, align 8
  %32 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* @RDS_IW_RECV_SGE, align 4
  %35 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %3, align 8
  %36 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %2, align 8
  %39 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %3, align 8
  %40 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.ib_sge* @rds_iw_data_sge(%struct.rds_iw_connection* %38, i32 %41)
  store %struct.ib_sge* %42, %struct.ib_sge** %5, align 8
  %43 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %44 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @RDS_FRAG_SIZE, align 4
  %46 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %47 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %49 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %2, align 8
  %51 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %3, align 8
  %52 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call %struct.ib_sge* @rds_iw_header_sge(%struct.rds_iw_connection* %50, i32 %53)
  store %struct.ib_sge* %54, %struct.ib_sge** %5, align 8
  %55 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %2, align 8
  %56 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = add i64 %57, %60
  %62 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %63 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %62, i32 0, i32 2
  store i64 %61, i64* %63, align 8
  %64 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %65 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %64, i32 0, i32 0
  store i32 4, i32* %65, align 8
  %66 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %67 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %16
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  %71 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %3, align 8
  %72 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %71, i32 1
  store %struct.rds_iw_recv_work* %72, %struct.rds_iw_recv_work** %3, align 8
  br label %9

73:                                               ; preds = %9
  ret void
}

declare dso_local %struct.ib_sge* @rds_iw_data_sge(%struct.rds_iw_connection*, i32) #1

declare dso_local %struct.ib_sge* @rds_iw_header_sge(%struct.rds_iw_connection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
