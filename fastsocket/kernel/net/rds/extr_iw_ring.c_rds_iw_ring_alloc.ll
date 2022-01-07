; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_ring.c_rds_iw_ring_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_ring.c_rds_iw_ring_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_iw_work_ring = type { i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"ring %p val %u next %u free %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_iw_ring_alloc(%struct.rds_iw_work_ring* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.rds_iw_work_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rds_iw_work_ring* %0, %struct.rds_iw_work_ring** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.rds_iw_work_ring*, %struct.rds_iw_work_ring** %4, align 8
  %10 = getelementptr inbounds %struct.rds_iw_work_ring, %struct.rds_iw_work_ring* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.rds_iw_work_ring*, %struct.rds_iw_work_ring** %4, align 8
  %13 = call i32 @__rds_iw_ring_used(%struct.rds_iw_work_ring* %12)
  %14 = sub nsw i32 %11, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.rds_iw_work_ring*, %struct.rds_iw_work_ring** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.rds_iw_work_ring*, %struct.rds_iw_work_ring** %4, align 8
  %18 = getelementptr inbounds %struct.rds_iw_work_ring, %struct.rds_iw_work_ring* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @rdsdebug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.rds_iw_work_ring* %15, i32 %16, i32 %19, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @min(i32 %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.rds_iw_work_ring*, %struct.rds_iw_work_ring** %4, align 8
  %32 = getelementptr inbounds %struct.rds_iw_work_ring, %struct.rds_iw_work_ring* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct.rds_iw_work_ring*, %struct.rds_iw_work_ring** %4, align 8
  %36 = getelementptr inbounds %struct.rds_iw_work_ring, %struct.rds_iw_work_ring* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %37, %38
  %40 = load %struct.rds_iw_work_ring*, %struct.rds_iw_work_ring** %4, align 8
  %41 = getelementptr inbounds %struct.rds_iw_work_ring, %struct.rds_iw_work_ring* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = srem i32 %39, %42
  %44 = load %struct.rds_iw_work_ring*, %struct.rds_iw_work_ring** %4, align 8
  %45 = getelementptr inbounds %struct.rds_iw_work_ring, %struct.rds_iw_work_ring* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.rds_iw_work_ring*, %struct.rds_iw_work_ring** %4, align 8
  %48 = getelementptr inbounds %struct.rds_iw_work_ring, %struct.rds_iw_work_ring* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %27, %24, %3
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @__rds_iw_ring_used(%struct.rds_iw_work_ring*) #1

declare dso_local i32 @rdsdebug(i8*, %struct.rds_iw_work_ring*, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
