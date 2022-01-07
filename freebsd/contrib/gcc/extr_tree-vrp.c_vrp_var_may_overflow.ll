; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_vrp_var_may_overflow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_vrp_var_may_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.loop = type { i32 }

@current_loops = common dso_local global %struct.TYPE_2__* null, align 8
@POLYNOMIAL_CHREC = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c": loop information indicates does not overflow\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @vrp_var_may_overflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vrp_var_may_overflow(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.loop*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_loops, align 8
  %11 = icmp eq %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %82

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = call %struct.loop* @loop_containing_stmt(i64 %14)
  store %struct.loop* %15, %struct.loop** %6, align 8
  %16 = load %struct.loop*, %struct.loop** %6, align 8
  %17 = icmp eq %struct.loop* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %82

19:                                               ; preds = %13
  %20 = load %struct.loop*, %struct.loop** %6, align 8
  %21 = load %struct.loop*, %struct.loop** %6, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @analyze_scalar_evolution(%struct.loop* %21, i64 %22)
  %24 = call i64 @instantiate_parameters(%struct.loop* %20, i32 %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @TREE_CODE(i64 %25)
  %27 = load i64, i64* @POLYNOMIAL_CHREC, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %82

30:                                               ; preds = %19
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.loop*, %struct.loop** %6, align 8
  %33 = getelementptr inbounds %struct.loop, %struct.loop* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @initial_condition_in_loop_num(i64 %31, i32 %34)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.loop*, %struct.loop** %6, align 8
  %38 = getelementptr inbounds %struct.loop, %struct.loop* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @evolution_part_in_loop_num(i64 %36, i32 %39)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @NULL_TREE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %30
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @is_gimple_min_invariant(i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @valid_value_p(i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48, %44, %30
  store i32 1, i32* %3, align 4
  br label %82

53:                                               ; preds = %48
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_loops, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i64 @CHREC_VARIABLE(i64 %60)
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @scev_probably_wraps_p(i64 %54, i64 %55, i64 %56, i32 %63, i32 1)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  store i32 1, i32* %3, align 4
  br label %82

67:                                               ; preds = %53
  %68 = load i64, i64* @dump_file, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load i32, i32* @dump_flags, align 4
  %72 = load i32, i32* @TDF_DETAILS, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i64, i64* @dump_file, align 8
  %77 = load i64, i64* %4, align 8
  %78 = call i32 @print_generic_expr(i64 %76, i64 %77, i32 0)
  %79 = load i64, i64* @dump_file, align 8
  %80 = call i32 @fprintf(i64 %79, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %81

81:                                               ; preds = %75, %70, %67
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %66, %52, %29, %18, %12
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.loop* @loop_containing_stmt(i64) #1

declare dso_local i64 @instantiate_parameters(%struct.loop*, i32) #1

declare dso_local i32 @analyze_scalar_evolution(%struct.loop*, i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @initial_condition_in_loop_num(i64, i32) #1

declare dso_local i64 @evolution_part_in_loop_num(i64, i32) #1

declare dso_local i32 @is_gimple_min_invariant(i64) #1

declare dso_local i32 @valid_value_p(i64) #1

declare dso_local i64 @scev_probably_wraps_p(i64, i64, i64, i32, i32) #1

declare dso_local i64 @CHREC_VARIABLE(i64) #1

declare dso_local i32 @print_generic_expr(i64, i64, i32) #1

declare dso_local i32 @fprintf(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
