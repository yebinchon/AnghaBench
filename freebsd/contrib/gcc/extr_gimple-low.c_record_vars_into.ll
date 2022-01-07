; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimple-low.c_record_vars_into.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimple-low.c_record_vars_into.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.function = type { i32 }

@cfun = common dso_local global %struct.function* null, align 8
@current_function_decl = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @record_vars_into(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.function*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.function*, %struct.function** @cfun, align 8
  store %struct.function* %7, %struct.function** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @current_function_decl, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = call %struct.function* @DECL_STRUCT_FUNCTION(i64 %12)
  store %struct.function* %13, %struct.function** @cfun, align 8
  br label %14

14:                                               ; preds = %11, %2
  br label %15

15:                                               ; preds = %39, %14
  %16 = load i64, i64* %3, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %15
  %19 = load i64, i64* %3, align 8
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @TREE_CODE(i64 %20)
  %22 = load i64, i64* @VAR_DECL, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %39

25:                                               ; preds = %18
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @DECL_EXTERNAL(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %39

30:                                               ; preds = %25
  %31 = load i32, i32* @NULL_TREE, align 4
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.function*, %struct.function** @cfun, align 8
  %34 = getelementptr inbounds %struct.function, %struct.function* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @tree_cons(i32 %31, i64 %32, i32 %35)
  %37 = load %struct.function*, %struct.function** @cfun, align 8
  %38 = getelementptr inbounds %struct.function, %struct.function* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %30, %29, %24
  %40 = load i64, i64* %3, align 8
  %41 = call i64 @TREE_CHAIN(i64 %40)
  store i64 %41, i64* %3, align 8
  br label %15

42:                                               ; preds = %15
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @current_function_decl, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load %struct.function*, %struct.function** %5, align 8
  store %struct.function* %47, %struct.function** @cfun, align 8
  br label %48

48:                                               ; preds = %46, %42
  ret void
}

declare dso_local %struct.function* @DECL_STRUCT_FUNCTION(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_EXTERNAL(i64) #1

declare dso_local i32 @tree_cons(i32, i64, i32) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
