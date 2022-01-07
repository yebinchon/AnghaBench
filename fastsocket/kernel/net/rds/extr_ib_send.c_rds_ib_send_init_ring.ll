; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_send.c_rds_ib_send_init_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_send.c_rds_ib_send_init_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_connection = type { %struct.TYPE_8__*, i64, %struct.TYPE_5__, %struct.rds_ib_send_work* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.rds_ib_send_work = type { %struct.ib_sge*, %struct.TYPE_7__, i32* }
%struct.ib_sge = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.ib_sge* }
%struct.TYPE_6__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_ib_send_init_ring(%struct.rds_ib_connection* %0) #0 {
  %2 = alloca %struct.rds_ib_connection*, align 8
  %3 = alloca %struct.rds_ib_send_work*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_sge*, align 8
  store %struct.rds_ib_connection* %0, %struct.rds_ib_connection** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %2, align 8
  %7 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %6, i32 0, i32 3
  %8 = load %struct.rds_ib_send_work*, %struct.rds_ib_send_work** %7, align 8
  store %struct.rds_ib_send_work* %8, %struct.rds_ib_send_work** %3, align 8
  br label %9

9:                                                ; preds = %65, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %2, align 8
  %12 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %70

16:                                               ; preds = %9
  %17 = load %struct.rds_ib_send_work*, %struct.rds_ib_send_work** %3, align 8
  %18 = getelementptr inbounds %struct.rds_ib_send_work, %struct.rds_ib_send_work* %17, i32 0, i32 2
  store i32* null, i32** %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.rds_ib_send_work*, %struct.rds_ib_send_work** %3, align 8
  %21 = getelementptr inbounds %struct.rds_ib_send_work, %struct.rds_ib_send_work* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.rds_ib_send_work*, %struct.rds_ib_send_work** %3, align 8
  %24 = getelementptr inbounds %struct.rds_ib_send_work, %struct.rds_ib_send_work* %23, i32 0, i32 0
  %25 = load %struct.ib_sge*, %struct.ib_sge** %24, align 8
  %26 = load %struct.rds_ib_send_work*, %struct.rds_ib_send_work** %3, align 8
  %27 = getelementptr inbounds %struct.rds_ib_send_work, %struct.rds_ib_send_work* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  store %struct.ib_sge* %25, %struct.ib_sge** %28, align 8
  %29 = load %struct.rds_ib_send_work*, %struct.rds_ib_send_work** %3, align 8
  %30 = getelementptr inbounds %struct.rds_ib_send_work, %struct.rds_ib_send_work* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.rds_ib_send_work*, %struct.rds_ib_send_work** %3, align 8
  %34 = getelementptr inbounds %struct.rds_ib_send_work, %struct.rds_ib_send_work* %33, i32 0, i32 0
  %35 = load %struct.ib_sge*, %struct.ib_sge** %34, align 8
  %36 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %35, i64 0
  store %struct.ib_sge* %36, %struct.ib_sge** %5, align 8
  %37 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %2, align 8
  %38 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = add i64 %39, %42
  %44 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %45 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %47 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %46, i32 0, i32 0
  store i32 4, i32* %47, align 8
  %48 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %2, align 8
  %49 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %54 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %2, align 8
  %56 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rds_ib_send_work*, %struct.rds_ib_send_work** %3, align 8
  %61 = getelementptr inbounds %struct.rds_ib_send_work, %struct.rds_ib_send_work* %60, i32 0, i32 0
  %62 = load %struct.ib_sge*, %struct.ib_sge** %61, align 8
  %63 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %62, i64 1
  %64 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %63, i32 0, i32 1
  store i32 %59, i32* %64, align 4
  br label %65

65:                                               ; preds = %16
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  %68 = load %struct.rds_ib_send_work*, %struct.rds_ib_send_work** %3, align 8
  %69 = getelementptr inbounds %struct.rds_ib_send_work, %struct.rds_ib_send_work* %68, i32 1
  store %struct.rds_ib_send_work* %69, %struct.rds_ib_send_work** %3, align 8
  br label %9

70:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
