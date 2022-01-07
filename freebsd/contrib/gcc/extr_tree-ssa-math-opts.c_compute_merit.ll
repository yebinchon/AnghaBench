; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-math-opts.c_compute_merit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-math-opts.c_compute_merit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.occurrence = type { i64, i32, %struct.occurrence*, %struct.occurrence* }

@flag_exceptions = common dso_local global i64 0, align 8
@CDI_POST_DOMINATORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.occurrence*)* @compute_merit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_merit(%struct.occurrence* %0) #0 {
  %2 = alloca %struct.occurrence*, align 8
  %3 = alloca %struct.occurrence*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.occurrence* %0, %struct.occurrence** %2, align 8
  %6 = load %struct.occurrence*, %struct.occurrence** %2, align 8
  %7 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = load %struct.occurrence*, %struct.occurrence** %2, align 8
  %10 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %9, i32 0, i32 2
  %11 = load %struct.occurrence*, %struct.occurrence** %10, align 8
  store %struct.occurrence* %11, %struct.occurrence** %3, align 8
  br label %12

12:                                               ; preds = %47, %1
  %13 = load %struct.occurrence*, %struct.occurrence** %3, align 8
  %14 = icmp ne %struct.occurrence* %13, null
  br i1 %14, label %15, label %51

15:                                               ; preds = %12
  %16 = load %struct.occurrence*, %struct.occurrence** %3, align 8
  %17 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %16, i32 0, i32 2
  %18 = load %struct.occurrence*, %struct.occurrence** %17, align 8
  %19 = icmp ne %struct.occurrence* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load %struct.occurrence*, %struct.occurrence** %3, align 8
  call void @compute_merit(%struct.occurrence* %21)
  br label %22

22:                                               ; preds = %20, %15
  %23 = load i64, i64* @flag_exceptions, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @single_noncomplex_succ(i32 %26)
  store i32 %27, i32* %5, align 4
  br label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i32, i32* @CDI_POST_DOMINATORS, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.occurrence*, %struct.occurrence** %3, align 8
  %34 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @dominated_by_p(i32 %31, i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load %struct.occurrence*, %struct.occurrence** %3, align 8
  %40 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.occurrence*, %struct.occurrence** %2, align 8
  %43 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, %41
  store i64 %45, i64* %43, align 8
  br label %46

46:                                               ; preds = %38, %30
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.occurrence*, %struct.occurrence** %3, align 8
  %49 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %48, i32 0, i32 3
  %50 = load %struct.occurrence*, %struct.occurrence** %49, align 8
  store %struct.occurrence* %50, %struct.occurrence** %3, align 8
  br label %12

51:                                               ; preds = %12
  ret void
}

declare dso_local i32 @single_noncomplex_succ(i32) #1

declare dso_local i64 @dominated_by_p(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
