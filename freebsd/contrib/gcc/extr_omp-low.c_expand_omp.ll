; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_expand_omp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_expand_omp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omp_region = type { i32, %struct.omp_region*, %struct.omp_region* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omp_region*)* @expand_omp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand_omp(%struct.omp_region* %0) #0 {
  %2 = alloca %struct.omp_region*, align 8
  store %struct.omp_region* %0, %struct.omp_region** %2, align 8
  br label %3

3:                                                ; preds = %37, %1
  %4 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %5 = icmp ne %struct.omp_region* %4, null
  br i1 %5, label %6, label %41

6:                                                ; preds = %3
  %7 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %8 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %7, i32 0, i32 2
  %9 = load %struct.omp_region*, %struct.omp_region** %8, align 8
  %10 = icmp ne %struct.omp_region* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %13 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %12, i32 0, i32 2
  %14 = load %struct.omp_region*, %struct.omp_region** %13, align 8
  call void @expand_omp(%struct.omp_region* %14)
  br label %15

15:                                               ; preds = %11, %6
  %16 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %17 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %35 [
    i32 131, label %19
    i32 134, label %22
    i32 129, label %25
    i32 130, label %28
    i32 128, label %29
    i32 133, label %32
    i32 132, label %32
    i32 135, label %32
  ]

19:                                               ; preds = %15
  %20 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %21 = call i32 @expand_omp_parallel(%struct.omp_region* %20)
  br label %37

22:                                               ; preds = %15
  %23 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %24 = call i32 @expand_omp_for(%struct.omp_region* %23)
  br label %37

25:                                               ; preds = %15
  %26 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %27 = call i32 @expand_omp_sections(%struct.omp_region* %26)
  br label %37

28:                                               ; preds = %15
  br label %37

29:                                               ; preds = %15
  %30 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %31 = call i32 @expand_omp_single(%struct.omp_region* %30)
  br label %37

32:                                               ; preds = %15, %15, %15
  %33 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %34 = call i32 @expand_omp_synch(%struct.omp_region* %33)
  br label %37

35:                                               ; preds = %15
  %36 = call i32 (...) @gcc_unreachable()
  br label %37

37:                                               ; preds = %35, %32, %29, %28, %25, %22, %19
  %38 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %39 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %38, i32 0, i32 1
  %40 = load %struct.omp_region*, %struct.omp_region** %39, align 8
  store %struct.omp_region* %40, %struct.omp_region** %2, align 8
  br label %3

41:                                               ; preds = %3
  ret void
}

declare dso_local i32 @expand_omp_parallel(%struct.omp_region*) #1

declare dso_local i32 @expand_omp_for(%struct.omp_region*) #1

declare dso_local i32 @expand_omp_sections(%struct.omp_region*) #1

declare dso_local i32 @expand_omp_single(%struct.omp_region*) #1

declare dso_local i32 @expand_omp_synch(%struct.omp_region*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
