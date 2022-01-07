; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_transport.c_rds_trans_stats_info_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_transport.c_rds_trans_stats_info_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_transport = type { i32 (%struct.rds_info_iterator.0*, i32)* }
%struct.rds_info_iterator.0 = type opaque
%struct.rds_info_iterator = type { i32 }

@rds_trans_sem = common dso_local global i32 0, align 4
@RDS_TRANS_COUNT = common dso_local global i32 0, align 4
@transports = common dso_local global %struct.rds_transport** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_trans_stats_info_copy(%struct.rds_info_iterator* %0, i32 %1) #0 {
  %3 = alloca %struct.rds_info_iterator*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rds_transport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rds_info_iterator* %0, %struct.rds_info_iterator** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %3, align 8
  %10 = call i32 @rds_info_iter_unmap(%struct.rds_info_iterator* %9)
  %11 = call i32 @down_read(i32* @rds_trans_sem)
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %48, %2
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @RDS_TRANS_COUNT, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %51

16:                                               ; preds = %12
  %17 = load %struct.rds_transport**, %struct.rds_transport*** @transports, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.rds_transport*, %struct.rds_transport** %17, i64 %19
  %21 = load %struct.rds_transport*, %struct.rds_transport** %20, align 8
  store %struct.rds_transport* %21, %struct.rds_transport** %5, align 8
  %22 = load %struct.rds_transport*, %struct.rds_transport** %5, align 8
  %23 = icmp ne %struct.rds_transport* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.rds_transport*, %struct.rds_transport** %5, align 8
  %26 = getelementptr inbounds %struct.rds_transport, %struct.rds_transport* %25, i32 0, i32 0
  %27 = load i32 (%struct.rds_info_iterator.0*, i32)*, i32 (%struct.rds_info_iterator.0*, i32)** %26, align 8
  %28 = icmp ne i32 (%struct.rds_info_iterator.0*, i32)* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %16
  br label %48

30:                                               ; preds = %24
  %31 = load %struct.rds_transport*, %struct.rds_transport** %5, align 8
  %32 = getelementptr inbounds %struct.rds_transport, %struct.rds_transport* %31, i32 0, i32 0
  %33 = load i32 (%struct.rds_info_iterator.0*, i32)*, i32 (%struct.rds_info_iterator.0*, i32)** %32, align 8
  %34 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %3, align 8
  %35 = bitcast %struct.rds_info_iterator* %34 to %struct.rds_info_iterator.0*
  %36 = load i32, i32* %4, align 4
  %37 = call i32 %33(%struct.rds_info_iterator.0* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @min(i32 %38, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = zext i32 %41 to i64
  %43 = sub nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = add i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %30, %29
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %12

51:                                               ; preds = %12
  %52 = call i32 @up_read(i32* @rds_trans_sem)
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @rds_info_iter_unmap(%struct.rds_info_iterator*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
