; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_et-forest.c_et_recomp_min.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_et-forest.c_et_recomp_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_occ = type { i64, i64, %struct.et_occ*, %struct.et_occ*, %struct.et_occ* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et_occ*)* @et_recomp_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et_recomp_min(%struct.et_occ* %0) #0 {
  %2 = alloca %struct.et_occ*, align 8
  %3 = alloca %struct.et_occ*, align 8
  store %struct.et_occ* %0, %struct.et_occ** %2, align 8
  %4 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %5 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %4, i32 0, i32 4
  %6 = load %struct.et_occ*, %struct.et_occ** %5, align 8
  store %struct.et_occ* %6, %struct.et_occ** %3, align 8
  %7 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %8 = icmp ne %struct.et_occ* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %11 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %10, i32 0, i32 3
  %12 = load %struct.et_occ*, %struct.et_occ** %11, align 8
  %13 = icmp ne %struct.et_occ* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %9
  %15 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %16 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %19 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %18, i32 0, i32 3
  %20 = load %struct.et_occ*, %struct.et_occ** %19, align 8
  %21 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %17, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %14, %1
  %25 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %26 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %25, i32 0, i32 3
  %27 = load %struct.et_occ*, %struct.et_occ** %26, align 8
  store %struct.et_occ* %27, %struct.et_occ** %3, align 8
  br label %28

28:                                               ; preds = %24, %14, %9
  %29 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %30 = icmp ne %struct.et_occ* %29, null
  br i1 %30, label %31, label %51

31:                                               ; preds = %28
  %32 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %33 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %38 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %41 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %45 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.et_occ*, %struct.et_occ** %3, align 8
  %47 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %46, i32 0, i32 2
  %48 = load %struct.et_occ*, %struct.et_occ** %47, align 8
  %49 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %50 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %49, i32 0, i32 2
  store %struct.et_occ* %48, %struct.et_occ** %50, align 8
  br label %60

51:                                               ; preds = %31, %28
  %52 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %53 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %56 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %58 = load %struct.et_occ*, %struct.et_occ** %2, align 8
  %59 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %58, i32 0, i32 2
  store %struct.et_occ* %57, %struct.et_occ** %59, align 8
  br label %60

60:                                               ; preds = %51, %36
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
