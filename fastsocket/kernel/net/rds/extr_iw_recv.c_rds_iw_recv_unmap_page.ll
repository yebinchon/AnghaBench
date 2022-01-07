; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_recv.c_rds_iw_recv_unmap_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_recv.c_rds_iw_recv_unmap_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_iw_connection = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rds_iw_recv_work = type { %struct.rds_page_frag* }
%struct.rds_page_frag = type { i64, i32 }

@.str = private unnamed_addr constant [25 x i8] c"recv %p frag %p page %p\0A\00", align 1
@RDS_FRAG_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_iw_connection*, %struct.rds_iw_recv_work*)* @rds_iw_recv_unmap_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_iw_recv_unmap_page(%struct.rds_iw_connection* %0, %struct.rds_iw_recv_work* %1) #0 {
  %3 = alloca %struct.rds_iw_connection*, align 8
  %4 = alloca %struct.rds_iw_recv_work*, align 8
  %5 = alloca %struct.rds_page_frag*, align 8
  store %struct.rds_iw_connection* %0, %struct.rds_iw_connection** %3, align 8
  store %struct.rds_iw_recv_work* %1, %struct.rds_iw_recv_work** %4, align 8
  %6 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %4, align 8
  %7 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %6, i32 0, i32 0
  %8 = load %struct.rds_page_frag*, %struct.rds_page_frag** %7, align 8
  store %struct.rds_page_frag* %8, %struct.rds_page_frag** %5, align 8
  %9 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %4, align 8
  %10 = load %struct.rds_page_frag*, %struct.rds_page_frag** %5, align 8
  %11 = load %struct.rds_page_frag*, %struct.rds_page_frag** %5, align 8
  %12 = getelementptr inbounds %struct.rds_page_frag, %struct.rds_page_frag* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @rdsdebug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.rds_iw_recv_work* %9, %struct.rds_page_frag* %10, i32 %13)
  %15 = load %struct.rds_page_frag*, %struct.rds_page_frag** %5, align 8
  %16 = getelementptr inbounds %struct.rds_page_frag, %struct.rds_page_frag* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %3, align 8
  %21 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rds_page_frag*, %struct.rds_page_frag** %5, align 8
  %26 = getelementptr inbounds %struct.rds_page_frag, %struct.rds_page_frag* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @RDS_FRAG_SIZE, align 4
  %29 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %30 = call i32 @ib_dma_unmap_page(i32 %24, i64 %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %19, %2
  %32 = load %struct.rds_page_frag*, %struct.rds_page_frag** %5, align 8
  %33 = getelementptr inbounds %struct.rds_page_frag, %struct.rds_page_frag* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  ret void
}

declare dso_local i32 @rdsdebug(i8*, %struct.rds_iw_recv_work*, %struct.rds_page_frag*, i32) #1

declare dso_local i32 @ib_dma_unmap_page(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
