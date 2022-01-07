; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_remove_exit_barriers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_remove_exit_barriers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omp_region = type { i64, %struct.omp_region*, %struct.omp_region* }

@OMP_PARALLEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omp_region*)* @remove_exit_barriers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_exit_barriers(%struct.omp_region* %0) #0 {
  %2 = alloca %struct.omp_region*, align 8
  store %struct.omp_region* %0, %struct.omp_region** %2, align 8
  %3 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %4 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @OMP_PARALLEL, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %10 = call i32 @remove_exit_barrier(%struct.omp_region* %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %13 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %12, i32 0, i32 2
  %14 = load %struct.omp_region*, %struct.omp_region** %13, align 8
  %15 = icmp ne %struct.omp_region* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %11
  %17 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %18 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %17, i32 0, i32 2
  %19 = load %struct.omp_region*, %struct.omp_region** %18, align 8
  store %struct.omp_region* %19, %struct.omp_region** %2, align 8
  %20 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  call void @remove_exit_barriers(%struct.omp_region* %20)
  br label %21

21:                                               ; preds = %26, %16
  %22 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %23 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %22, i32 0, i32 1
  %24 = load %struct.omp_region*, %struct.omp_region** %23, align 8
  %25 = icmp ne %struct.omp_region* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %28 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %27, i32 0, i32 1
  %29 = load %struct.omp_region*, %struct.omp_region** %28, align 8
  store %struct.omp_region* %29, %struct.omp_region** %2, align 8
  %30 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  call void @remove_exit_barriers(%struct.omp_region* %30)
  br label %21

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %11
  ret void
}

declare dso_local i32 @remove_exit_barrier(%struct.omp_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
