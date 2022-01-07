; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_expand_omp_for.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_expand_omp_for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omp_region = type { i32, i64, i64, i32 }
%struct.omp_for_data = type { i32, i32, i32* }

@OMP_CLAUSE_SCHEDULE_STATIC = common dso_local global i32 0, align 4
@BUILT_IN_GOMP_LOOP_STATIC_START = common dso_local global i32 0, align 4
@BUILT_IN_GOMP_LOOP_STATIC_NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omp_region*)* @expand_omp_for to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand_omp_for(%struct.omp_region* %0) #0 {
  %2 = alloca %struct.omp_region*, align 8
  %3 = alloca %struct.omp_for_data, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.omp_region* %0, %struct.omp_region** %2, align 8
  %7 = call i32 (...) @push_gimplify_context()
  %8 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %9 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @last_stmt(i32 %10)
  %12 = call i32 @extract_omp_for_data(i32 %11, %struct.omp_for_data* %3)
  %13 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %16 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %3, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @OMP_CLAUSE_SCHEDULE_STATIC, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %3, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %46, label %25

25:                                               ; preds = %21
  %26 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %27 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %25
  %31 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %32 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %3, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %41 = call i32 @expand_omp_for_static_nochunk(%struct.omp_region* %40, %struct.omp_for_data* %3)
  br label %45

42:                                               ; preds = %35
  %43 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %44 = call i32 @expand_omp_for_static_chunk(%struct.omp_region* %43, %struct.omp_for_data* %3)
  br label %45

45:                                               ; preds = %42, %39
  br label %63

46:                                               ; preds = %30, %25, %21, %1
  %47 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %3, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %3, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %50, 4
  %52 = add nsw i32 %48, %51
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* @BUILT_IN_GOMP_LOOP_STATIC_START, align 4
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %53, %54
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* @BUILT_IN_GOMP_LOOP_STATIC_NEXT, align 4
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %56, %57
  store i32 %58, i32* %6, align 4
  %59 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @expand_omp_for_generic(%struct.omp_region* %59, %struct.omp_for_data* %3, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %46, %45
  %64 = call i32 @pop_gimplify_context(i32* null)
  ret void
}

declare dso_local i32 @push_gimplify_context(...) #1

declare dso_local i32 @extract_omp_for_data(i32, %struct.omp_for_data*) #1

declare dso_local i32 @last_stmt(i32) #1

declare dso_local i32 @expand_omp_for_static_nochunk(%struct.omp_region*, %struct.omp_for_data*) #1

declare dso_local i32 @expand_omp_for_static_chunk(%struct.omp_region*, %struct.omp_for_data*) #1

declare dso_local i32 @expand_omp_for_generic(%struct.omp_region*, %struct.omp_for_data*, i32, i32) #1

declare dso_local i32 @pop_gimplify_context(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
