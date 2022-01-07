; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_return_pops_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_return_pops_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_RTD = common dso_local global i64 0, align 8
@IDENTIFIER_NODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"cdecl\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"stdcall\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"fastcall\00", align 1
@NULL_TREE = common dso_local global i64 0, align 8
@void_type_node = common dso_local global i64 0, align 8
@TARGET_64BIT = common dso_local global i32 0, align 4
@KEEP_AGGREGATE_RETURN_POINTER = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ix86_return_pops_args(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* @TARGET_RTD, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @TREE_CODE(i32 %16)
  %18 = load i64, i64* @IDENTIFIER_NODE, align 8
  %19 = icmp ne i64 %17, %18
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi i1 [ true, %12 ], [ %19, %15 ]
  br label %22

22:                                               ; preds = %20, %3
  %23 = phi i1 [ false, %3 ], [ %21, %20 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @TYPE_ATTRIBUTES(i32 %25)
  %27 = call i64 @lookup_attribute(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %58, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @TYPE_ATTRIBUTES(i32 %30)
  %32 = call i64 @lookup_attribute(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @TYPE_ATTRIBUTES(i32 %35)
  %37 = call i64 @lookup_attribute(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %29
  store i32 1, i32* %8, align 4
  br label %40

40:                                               ; preds = %39, %34
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @TYPE_ARG_TYPES(i32 %44)
  %46 = load i64, i64* @NULL_TREE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %55, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @TYPE_ARG_TYPES(i32 %49)
  %51 = call i32 @tree_last(i64 %50)
  %52 = call i64 @TREE_VALUE(i32 %51)
  %53 = load i64, i64* @void_type_node, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %48, %43
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %4, align 4
  br label %81

57:                                               ; preds = %48, %40
  br label %58

58:                                               ; preds = %57, %22
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @TREE_TYPE(i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = call i64 @aggregate_value_p(i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %58
  %65 = load i32, i32* @TARGET_64BIT, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @KEEP_AGGREGATE_RETURN_POINTER, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @ix86_function_regparm(i32 %71, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* @Pmode, align 4
  %78 = call i32 @GET_MODE_SIZE(i32 %77)
  store i32 %78, i32* %4, align 4
  br label %81

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79, %67, %64, %58
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %76, %55
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @lookup_attribute(i8*, i32) #1

declare dso_local i32 @TYPE_ATTRIBUTES(i32) #1

declare dso_local i64 @TYPE_ARG_TYPES(i32) #1

declare dso_local i64 @TREE_VALUE(i32) #1

declare dso_local i32 @tree_last(i64) #1

declare dso_local i64 @aggregate_value_p(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @ix86_function_regparm(i32, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
