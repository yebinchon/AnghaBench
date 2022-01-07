; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_pushdecl_class_level.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_pushdecl_class_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TV_NAME_LOOKUP = common dso_local global i32 0, align 4
@OVERLOAD = common dso_local global i64 0, align 8
@TYPE_DECL = common dso_local global i64 0, align 8
@input_location = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pushdecl_class_level(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 1, i32* %5, align 4
  %8 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %9 = call i32 @timevar_push(i32 %8)
  %10 = load i64, i64* %3, align 8
  %11 = call i64 @TREE_CODE(i64 %10)
  %12 = load i64, i64* @OVERLOAD, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @get_first_fn(i64 %15)
  %17 = call i64 @DECL_NAME(i64 %16)
  store i64 %17, i64* %4, align 8
  br label %21

18:                                               ; preds = %1
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @DECL_NAME(i64 %19)
  store i64 %20, i64* %4, align 8
  br label %21

21:                                               ; preds = %18, %14
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @push_class_level_binding(i64 %25, i64 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i64, i64* %3, align 8
  %29 = call i64 @TREE_CODE(i64 %28)
  %30 = load i64, i64* @TYPE_DECL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @set_identifier_type_value(i64 %33, i64 %34)
  br label %36

36:                                               ; preds = %32, %24
  br label %64

37:                                               ; preds = %21
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @TREE_TYPE(i64 %38)
  %40 = call i64 @ANON_AGGR_TYPE_P(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %37
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @TREE_TYPE(i64 %43)
  %45 = call i64 @TYPE_FIELDS(i32 %44)
  store i64 %45, i64* %6, align 8
  br label %46

46:                                               ; preds = %59, %42
  %47 = load i64, i64* %6, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = load i32, i32* @input_location, align 4
  store i32 %50, i32* %7, align 4
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @DECL_SOURCE_LOCATION(i64 %51)
  store i32 %52, i32* @input_location, align 4
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @pushdecl_class_level(i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %49
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* @input_location, align 4
  br label %59

59:                                               ; preds = %57
  %60 = load i64, i64* %6, align 8
  %61 = call i64 @TREE_CHAIN(i64 %60)
  store i64 %61, i64* %6, align 8
  br label %46

62:                                               ; preds = %46
  br label %63

63:                                               ; preds = %62, %37
  br label %64

64:                                               ; preds = %63, %36
  %65 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @POP_TIMEVAR_AND_RETURN(i32 %65, i32 %66)
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @timevar_push(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_NAME(i64) #1

declare dso_local i64 @get_first_fn(i64) #1

declare dso_local i32 @push_class_level_binding(i64, i64) #1

declare dso_local i32 @set_identifier_type_value(i64, i64) #1

declare dso_local i64 @ANON_AGGR_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @TYPE_FIELDS(i32) #1

declare dso_local i32 @DECL_SOURCE_LOCATION(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @POP_TIMEVAR_AND_RETURN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
