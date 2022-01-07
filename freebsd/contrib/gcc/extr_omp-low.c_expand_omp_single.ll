; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_expand_omp_single.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_expand_omp_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omp_region = type { i32, i32 }
%struct.TYPE_2__ = type { i8* }

@OMP_CLAUSE_COPYPRIVATE = common dso_local global i32 0, align 4
@OMP_SINGLE = common dso_local global i64 0, align 8
@EDGE_FALLTHRU = common dso_local global i8* null, align 8
@BSI_SAME_STMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omp_region*)* @expand_omp_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand_omp_single(%struct.omp_region* %0) #0 {
  %2 = alloca %struct.omp_region*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.omp_region* %0, %struct.omp_region** %2, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %9 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.omp_region*, %struct.omp_region** %2, align 8
  %12 = getelementptr inbounds %struct.omp_region, %struct.omp_region* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @bsi_last(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @bsi_stmt(i32 %16)
  %18 = call i32 @OMP_SINGLE_CLAUSES(i32 %17)
  %19 = load i32, i32* @OMP_CLAUSE_COPYPRIVATE, align 4
  %20 = call i64 @find_omp_clause(i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %23

23:                                               ; preds = %22, %1
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @bsi_stmt(i32 %24)
  %26 = call i64 @TREE_CODE(i32 %25)
  %27 = load i64, i64* @OMP_SINGLE, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @gcc_assert(i32 %29)
  %31 = call i32 @bsi_remove(i32* %5, i32 1)
  %32 = load i8*, i8** @EDGE_FALLTHRU, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call %struct.TYPE_2__* @single_succ_edge(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i8* %32, i8** %35, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @bsi_last(i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @bsi_stmt(i32 %38)
  %40 = call i32 @OMP_RETURN_NOWAIT(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %23
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42, %23
  %46 = call i32 (...) @alloc_stmt_list()
  store i32 %46, i32* %7, align 4
  %47 = call i32 @build_omp_barrier(i32* %7)
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @BSI_SAME_STMT, align 4
  %50 = call i32 @bsi_insert_after(i32* %5, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %45, %42
  %52 = call i32 @bsi_remove(i32* %5, i32 1)
  %53 = load i8*, i8** @EDGE_FALLTHRU, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call %struct.TYPE_2__* @single_succ_edge(i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i8* %53, i8** %56, align 8
  ret void
}

declare dso_local i32 @bsi_last(i32) #1

declare dso_local i64 @find_omp_clause(i32, i32) #1

declare dso_local i32 @OMP_SINGLE_CLAUSES(i32) #1

declare dso_local i32 @bsi_stmt(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @bsi_remove(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @single_succ_edge(i32) #1

declare dso_local i32 @OMP_RETURN_NOWAIT(i32) #1

declare dso_local i32 @alloc_stmt_list(...) #1

declare dso_local i32 @build_omp_barrier(i32*) #1

declare dso_local i32 @bsi_insert_after(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
