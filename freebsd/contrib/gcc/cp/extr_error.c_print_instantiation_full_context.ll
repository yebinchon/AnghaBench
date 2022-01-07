; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_print_instantiation_full_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_print_instantiation_full_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@input_location = common dso_local global i32 0, align 4
@current_function_decl = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"%s: In instantiation of %qs:\0A\00", align 1
@TFF_DECL_SPECIFIERS = common dso_local global i32 0, align 4
@TFF_RETURN_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @print_instantiation_full_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_instantiation_full_context(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = call i64 (...) @current_instantiation()
  store i64 %5, i64* %3, align 8
  %6 = load i32, i32* @input_location, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i64, i64* %3, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %1
  %10 = load i64, i64* @current_function_decl, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @TINST_DECL(i64 %11)
  %13 = icmp ne i64 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load i64, i64* @current_function_decl, align 8
  %16 = load i64, i64* @NULL_TREE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %43

19:                                               ; preds = %14, %9
  %20 = load i64, i64* @current_function_decl, align 8
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @TINST_DECL(i64 %21)
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %38

25:                                               ; preds = %19
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @LOCATION_FILE(i32 %29)
  %31 = load i64, i64* %3, align 8
  %32 = call i64 @TINST_DECL(i64 %31)
  %33 = load i32, i32* @TFF_DECL_SPECIFIERS, align 4
  %34 = load i32, i32* @TFF_RETURN_TYPE, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @decl_as_string(i64 %32, i32 %35)
  %37 = call i32 @pp_verbatim(i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %36)
  br label %38

38:                                               ; preds = %25, %24
  %39 = load i64, i64* %3, align 8
  %40 = call i32 @TINST_LOCATION(i64 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i64, i64* %3, align 8
  %42 = call i64 @TREE_CHAIN(i64 %41)
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %38, %18
  br label %44

44:                                               ; preds = %43, %1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %46 = load i64, i64* %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @print_instantiation_partial_context(%struct.TYPE_4__* %45, i64 %46, i32 %47)
  ret void
}

declare dso_local i64 @current_instantiation(...) #1

declare dso_local i64 @TINST_DECL(i64) #1

declare dso_local i32 @pp_verbatim(i32, i8*, i32, i32) #1

declare dso_local i32 @LOCATION_FILE(i32) #1

declare dso_local i32 @decl_as_string(i64, i32) #1

declare dso_local i32 @TINST_LOCATION(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @print_instantiation_partial_context(%struct.TYPE_4__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
