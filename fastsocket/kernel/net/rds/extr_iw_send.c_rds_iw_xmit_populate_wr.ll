; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_send.c_rds_iw_xmit_populate_wr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_send.c_rds_iw_xmit_populate_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_iw_connection = type { i32, %struct.rds_iw_send_work* }
%struct.rds_iw_send_work = type { %struct.ib_sge*, %struct.TYPE_2__, i32*, i32 }
%struct.ib_sge = type { i64, i32, i8* }
%struct.TYPE_2__ = type { i32, i32, i32*, i32 }

@IB_WR_SEND = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_iw_connection*, %struct.rds_iw_send_work*, i32, i64, i32, i32)* @rds_iw_xmit_populate_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_iw_xmit_populate_wr(%struct.rds_iw_connection* %0, %struct.rds_iw_send_work* %1, i32 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.rds_iw_connection*, align 8
  %8 = alloca %struct.rds_iw_send_work*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_sge*, align 8
  store %struct.rds_iw_connection* %0, %struct.rds_iw_connection** %7, align 8
  store %struct.rds_iw_send_work* %1, %struct.rds_iw_send_work** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %9, align 4
  %15 = zext i32 %14 to i64
  %16 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %8, align 8
  %17 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %7, align 8
  %18 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %17, i32 0, i32 1
  %19 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %18, align 8
  %20 = ptrtoint %struct.rds_iw_send_work* %16 to i64
  %21 = ptrtoint %struct.rds_iw_send_work* %19 to i64
  %22 = sub i64 %20, %21
  %23 = sdiv exact i64 %22, 48
  %24 = icmp ne i64 %15, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %8, align 8
  %29 = getelementptr inbounds %struct.rds_iw_send_work, %struct.rds_iw_send_work* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* @IB_WR_SEND, align 4
  %32 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %8, align 8
  %33 = getelementptr inbounds %struct.rds_iw_send_work, %struct.rds_iw_send_work* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  store i32 %31, i32* %34, align 8
  %35 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %8, align 8
  %36 = getelementptr inbounds %struct.rds_iw_send_work, %struct.rds_iw_send_work* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 2, i32* %37, align 4
  %38 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %8, align 8
  %39 = getelementptr inbounds %struct.rds_iw_send_work, %struct.rds_iw_send_work* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  store i32* null, i32** %40, align 8
  %41 = load i32, i32* @jiffies, align 4
  %42 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %8, align 8
  %43 = getelementptr inbounds %struct.rds_iw_send_work, %struct.rds_iw_send_work* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %8, align 8
  %45 = getelementptr inbounds %struct.rds_iw_send_work, %struct.rds_iw_send_work* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %6
  %49 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %7, align 8
  %50 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %8, align 8
  %51 = getelementptr inbounds %struct.rds_iw_send_work, %struct.rds_iw_send_work* %50, i32 0, i32 0
  %52 = load %struct.ib_sge*, %struct.ib_sge** %51, align 8
  %53 = call %struct.ib_sge* @rds_iw_data_sge(%struct.rds_iw_connection* %49, %struct.ib_sge* %52)
  store %struct.ib_sge* %53, %struct.ib_sge** %13, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load %struct.ib_sge*, %struct.ib_sge** %13, align 8
  %56 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.ib_sge*, %struct.ib_sge** %13, align 8
  %59 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %7, align 8
  %61 = call i8* @rds_iw_local_dma_lkey(%struct.rds_iw_connection* %60)
  %62 = load %struct.ib_sge*, %struct.ib_sge** %13, align 8
  %63 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %7, align 8
  %65 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %8, align 8
  %66 = getelementptr inbounds %struct.rds_iw_send_work, %struct.rds_iw_send_work* %65, i32 0, i32 0
  %67 = load %struct.ib_sge*, %struct.ib_sge** %66, align 8
  %68 = call %struct.ib_sge* @rds_iw_header_sge(%struct.rds_iw_connection* %64, %struct.ib_sge* %67)
  store %struct.ib_sge* %68, %struct.ib_sge** %13, align 8
  br label %77

69:                                               ; preds = %6
  %70 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %8, align 8
  %71 = getelementptr inbounds %struct.rds_iw_send_work, %struct.rds_iw_send_work* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  %73 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %8, align 8
  %74 = getelementptr inbounds %struct.rds_iw_send_work, %struct.rds_iw_send_work* %73, i32 0, i32 0
  %75 = load %struct.ib_sge*, %struct.ib_sge** %74, align 8
  %76 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %75, i64 0
  store %struct.ib_sge* %76, %struct.ib_sge** %13, align 8
  br label %77

77:                                               ; preds = %69, %48
  %78 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %7, align 8
  %79 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = zext i32 %80 to i64
  %82 = load i32, i32* %9, align 4
  %83 = zext i32 %82 to i64
  %84 = mul i64 %83, 4
  %85 = add i64 %81, %84
  %86 = load %struct.ib_sge*, %struct.ib_sge** %13, align 8
  %87 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.ib_sge*, %struct.ib_sge** %13, align 8
  %89 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %88, i32 0, i32 1
  store i32 4, i32* %89, align 8
  %90 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %7, align 8
  %91 = call i8* @rds_iw_local_dma_lkey(%struct.rds_iw_connection* %90)
  %92 = load %struct.ib_sge*, %struct.ib_sge** %13, align 8
  %93 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.ib_sge* @rds_iw_data_sge(%struct.rds_iw_connection*, %struct.ib_sge*) #1

declare dso_local i8* @rds_iw_local_dma_lkey(%struct.rds_iw_connection*) #1

declare dso_local %struct.ib_sge* @rds_iw_header_sge(%struct.rds_iw_connection*, %struct.ib_sge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
