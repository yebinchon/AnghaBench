; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_build_outer_var_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_build_outer_var_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_6__*)* @build_outer_var_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_outer_var_ref(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = call i32 @maybe_lookup_decl_in_outer_ctx(i32 %7, %struct.TYPE_6__* %8)
  %10 = call i64 @is_global_var(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  store i32 %13, i32* %5, align 4
  br label %61

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @is_variable_sized(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @DECL_VALUE_EXPR(i32 %19)
  %21 = call i32 @TREE_OPERAND(i32 %20, i32 0)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = call i32 @build_outer_var_ref(i32 %22, %struct.TYPE_6__* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @build_fold_indirect_ref(i32 %25)
  store i32 %26, i32* %5, align 4
  br label %60

27:                                               ; preds = %14
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = call i64 @is_parallel_ctx(%struct.TYPE_6__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @use_pointer_for_field(i32 %32, i32 0)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = call i32 @build_receiver_ref(i32 %34, i32 %35, %struct.TYPE_6__* %36)
  store i32 %37, i32* %5, align 4
  br label %59

38:                                               ; preds = %27
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @lookup_decl(i32 %44, i64 %47)
  store i32 %48, i32* %5, align 4
  br label %58

49:                                               ; preds = %38
  %50 = load i32, i32* %3, align 4
  %51 = call i64 @is_reference(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* %3, align 4
  store i32 %54, i32* %5, align 4
  br label %57

55:                                               ; preds = %49
  %56 = call i32 (...) @gcc_unreachable()
  br label %57

57:                                               ; preds = %55, %53
  br label %58

58:                                               ; preds = %57, %43
  br label %59

59:                                               ; preds = %58, %31
  br label %60

60:                                               ; preds = %59, %18
  br label %61

61:                                               ; preds = %60, %12
  %62 = load i32, i32* %3, align 4
  %63 = call i64 @is_reference(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @build_fold_indirect_ref(i32 %66)
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %65, %61
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i64 @is_global_var(i32) #1

declare dso_local i32 @maybe_lookup_decl_in_outer_ctx(i32, %struct.TYPE_6__*) #1

declare dso_local i64 @is_variable_sized(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @DECL_VALUE_EXPR(i32) #1

declare dso_local i32 @build_fold_indirect_ref(i32) #1

declare dso_local i64 @is_parallel_ctx(%struct.TYPE_6__*) #1

declare dso_local i32 @use_pointer_for_field(i32, i32) #1

declare dso_local i32 @build_receiver_ref(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @lookup_decl(i32, i64) #1

declare dso_local i64 @is_reference(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
