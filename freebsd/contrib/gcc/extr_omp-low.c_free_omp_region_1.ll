; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_free_omp_region_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_free_omp_region_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omp_region = type { %struct.omp_region*, %struct.omp_region* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omp_region*)* @free_omp_region_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_omp_region_1(%struct.omp_region* %0) #0 {
  %2 = alloca %struct.omp_region*, align 8
  %3 = alloca %struct.omp_region*, align 8
  %4 = alloca %struct.omp_region*, align 8
  store %struct.omp_region* %0, %struct.omp_region** %2, align 8
  %5 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %6 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %5, i32 0, i32 1
  %7 = load %struct.omp_region*, %struct.omp_region** %6, align 8
  store %struct.omp_region* %7, %struct.omp_region** %3, align 8
  br label %8

8:                                                ; preds = %16, %1
  %9 = load %struct.omp_region*, %struct.omp_region** %3, align 8
  %10 = icmp ne %struct.omp_region* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load %struct.omp_region*, %struct.omp_region** %3, align 8
  %13 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %12, i32 0, i32 0
  %14 = load %struct.omp_region*, %struct.omp_region** %13, align 8
  store %struct.omp_region* %14, %struct.omp_region** %4, align 8
  %15 = load %struct.omp_region*, %struct.omp_region** %3, align 8
  call void @free_omp_region_1(%struct.omp_region* %15)
  br label %16

16:                                               ; preds = %11
  %17 = load %struct.omp_region*, %struct.omp_region** %4, align 8
  store %struct.omp_region* %17, %struct.omp_region** %3, align 8
  br label %8

18:                                               ; preds = %8
  %19 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %20 = call i32 @free(%struct.omp_region* %19)
  ret void
}

declare dso_local i32 @free(%struct.omp_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
