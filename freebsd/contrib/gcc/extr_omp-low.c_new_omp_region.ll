; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_new_omp_region.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_new_omp_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omp_region = type { i32, %struct.omp_region*, %struct.omp_region*, i32, %struct.omp_region* }

@root_omp_region = common dso_local global %struct.omp_region* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.omp_region* @new_omp_region(i32 %0, i32 %1, %struct.omp_region* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.omp_region*, align 8
  %7 = alloca %struct.omp_region*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.omp_region* %2, %struct.omp_region** %6, align 8
  %8 = call %struct.omp_region* @xcalloc(i32 1, i32 40)
  store %struct.omp_region* %8, %struct.omp_region** %7, align 8
  %9 = load %struct.omp_region*, %struct.omp_region** %6, align 8
  %10 = load %struct.omp_region*, %struct.omp_region** %7, align 8
  %11 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %10, i32 0, i32 4
  store %struct.omp_region* %9, %struct.omp_region** %11, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.omp_region*, %struct.omp_region** %7, align 8
  %14 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.omp_region*, %struct.omp_region** %7, align 8
  %17 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.omp_region*, %struct.omp_region** %6, align 8
  %19 = icmp ne %struct.omp_region* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load %struct.omp_region*, %struct.omp_region** %6, align 8
  %22 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %21, i32 0, i32 2
  %23 = load %struct.omp_region*, %struct.omp_region** %22, align 8
  %24 = load %struct.omp_region*, %struct.omp_region** %7, align 8
  %25 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %24, i32 0, i32 1
  store %struct.omp_region* %23, %struct.omp_region** %25, align 8
  %26 = load %struct.omp_region*, %struct.omp_region** %7, align 8
  %27 = load %struct.omp_region*, %struct.omp_region** %6, align 8
  %28 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %27, i32 0, i32 2
  store %struct.omp_region* %26, %struct.omp_region** %28, align 8
  br label %34

29:                                               ; preds = %3
  %30 = load %struct.omp_region*, %struct.omp_region** @root_omp_region, align 8
  %31 = load %struct.omp_region*, %struct.omp_region** %7, align 8
  %32 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %31, i32 0, i32 1
  store %struct.omp_region* %30, %struct.omp_region** %32, align 8
  %33 = load %struct.omp_region*, %struct.omp_region** %7, align 8
  store %struct.omp_region* %33, %struct.omp_region** @root_omp_region, align 8
  br label %34

34:                                               ; preds = %29, %20
  %35 = load %struct.omp_region*, %struct.omp_region** %7, align 8
  ret %struct.omp_region* %35
}

declare dso_local %struct.omp_region* @xcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
