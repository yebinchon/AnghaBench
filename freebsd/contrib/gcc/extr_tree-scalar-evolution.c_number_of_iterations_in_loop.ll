; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_number_of_iterations_in_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_number_of_iterations_in_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32, i64 }
%struct.tree_niter_desc = type { i64, i32 }

@chrec_dont_know = common dso_local global i64 0, align 8
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"(number_of_iterations_in_loop\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @number_of_iterations_in_loop(%struct.loop* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.loop*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tree_niter_desc, align 8
  store %struct.loop* %0, %struct.loop** %3, align 8
  %8 = load %struct.loop*, %struct.loop** %3, align 8
  %9 = getelementptr inbounds %struct.loop, %struct.loop* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  store i64 %14, i64* %2, align 8
  br label %67

15:                                               ; preds = %1
  %16 = load i64, i64* @chrec_dont_know, align 8
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* @dump_file, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load i32, i32* @dump_flags, align 4
  %21 = load i32, i32* @TDF_DETAILS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i64, i64* @dump_file, align 8
  %26 = call i32 @fprintf(i64 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %19, %15
  %28 = load %struct.loop*, %struct.loop** %3, align 8
  %29 = getelementptr inbounds %struct.loop, %struct.loop* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %63

34:                                               ; preds = %27
  %35 = load %struct.loop*, %struct.loop** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @number_of_iterations_exit(%struct.loop* %35, i32 %36, %struct.tree_niter_desc* %7, i32 0)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %63

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %7, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @TREE_TYPE(i64 %42)
  store i64 %43, i64* %5, align 8
  %44 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %7, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @integer_nonzerop(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i64, i64* %5, align 8
  %50 = call i64 @build_int_cst(i64 %49, i32 0)
  store i64 %50, i64* %4, align 8
  br label %62

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %7, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @integer_zerop(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %7, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %4, align 8
  br label %61

59:                                               ; preds = %51
  %60 = load i64, i64* @chrec_dont_know, align 8
  store i64 %60, i64* %4, align 8
  br label %61

61:                                               ; preds = %59, %56
  br label %62

62:                                               ; preds = %61, %48
  br label %63

63:                                               ; preds = %62, %39, %33
  %64 = load %struct.loop*, %struct.loop** %3, align 8
  %65 = load i64, i64* %4, align 8
  %66 = call i64 @set_nb_iterations_in_loop(%struct.loop* %64, i64 %65)
  store i64 %66, i64* %2, align 8
  br label %67

67:                                               ; preds = %63, %13
  %68 = load i64, i64* %2, align 8
  ret i64 %68
}

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @number_of_iterations_exit(%struct.loop*, i32, %struct.tree_niter_desc*, i32) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @integer_nonzerop(i32) #1

declare dso_local i64 @build_int_cst(i64, i32) #1

declare dso_local i64 @integer_zerop(i32) #1

declare dso_local i64 @set_nb_iterations_in_loop(%struct.loop*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
