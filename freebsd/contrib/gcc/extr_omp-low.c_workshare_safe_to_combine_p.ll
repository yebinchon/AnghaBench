; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_workshare_safe_to_combine_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_workshare_safe_to_combine_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omp_for_data = type { i64, i64, i64, i64 }

@OMP_SECTIONS = common dso_local global i64 0, align 8
@OMP_FOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @workshare_safe_to_combine_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @workshare_safe_to_combine_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.omp_for_data, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @last_stmt(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @last_stmt(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i64 @TREE_CODE(i32 %13)
  %15 = load i64, i64* @OMP_SECTIONS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %52

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @TREE_CODE(i32 %19)
  %21 = load i64, i64* @OMP_FOR, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @gcc_assert(i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @extract_omp_for_data(i32 %25, %struct.omp_for_data* %6)
  %27 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %6, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @is_gimple_min_invariant(i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %6, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @is_gimple_min_invariant(i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %6, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @is_gimple_min_invariant(i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %6, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %6, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @is_gimple_min_invariant(i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45, %36, %31, %18
  store i32 0, i32* %3, align 4
  br label %52

51:                                               ; preds = %45, %41
  store i32 1, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %50, %17
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @last_stmt(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @extract_omp_for_data(i32, %struct.omp_for_data*) #1

declare dso_local i32 @is_gimple_min_invariant(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
