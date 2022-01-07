; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_can_completely_scalarize_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_can_completely_scalarize_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sra_elt = type { %struct.sra_elt*, %struct.sra_elt*, %struct.sra_elt*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sra_elt*)* @can_completely_scalarize_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_completely_scalarize_p(%struct.sra_elt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sra_elt*, align 8
  %4 = alloca %struct.sra_elt*, align 8
  store %struct.sra_elt* %0, %struct.sra_elt** %3, align 8
  %5 = load %struct.sra_elt*, %struct.sra_elt** %3, align 8
  %6 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

10:                                               ; preds = %1
  %11 = load %struct.sra_elt*, %struct.sra_elt** %3, align 8
  %12 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %11, i32 0, i32 2
  %13 = load %struct.sra_elt*, %struct.sra_elt** %12, align 8
  store %struct.sra_elt* %13, %struct.sra_elt** %4, align 8
  br label %14

14:                                               ; preds = %23, %10
  %15 = load %struct.sra_elt*, %struct.sra_elt** %4, align 8
  %16 = icmp ne %struct.sra_elt* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load %struct.sra_elt*, %struct.sra_elt** %4, align 8
  %19 = call i32 @can_completely_scalarize_p(%struct.sra_elt* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %45

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.sra_elt*, %struct.sra_elt** %4, align 8
  %25 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %24, i32 0, i32 0
  %26 = load %struct.sra_elt*, %struct.sra_elt** %25, align 8
  store %struct.sra_elt* %26, %struct.sra_elt** %4, align 8
  br label %14

27:                                               ; preds = %14
  %28 = load %struct.sra_elt*, %struct.sra_elt** %3, align 8
  %29 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %28, i32 0, i32 1
  %30 = load %struct.sra_elt*, %struct.sra_elt** %29, align 8
  store %struct.sra_elt* %30, %struct.sra_elt** %4, align 8
  br label %31

31:                                               ; preds = %40, %27
  %32 = load %struct.sra_elt*, %struct.sra_elt** %4, align 8
  %33 = icmp ne %struct.sra_elt* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load %struct.sra_elt*, %struct.sra_elt** %4, align 8
  %36 = call i32 @can_completely_scalarize_p(%struct.sra_elt* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %45

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.sra_elt*, %struct.sra_elt** %4, align 8
  %42 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %41, i32 0, i32 0
  %43 = load %struct.sra_elt*, %struct.sra_elt** %42, align 8
  store %struct.sra_elt* %43, %struct.sra_elt** %4, align 8
  br label %31

44:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %38, %21, %9
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
