; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_strcmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_strcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINTER_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@integer_zero_node = common dso_local global i32 0, align 4
@integer_minus_one_node = common dso_local global i32 0, align 4
@integer_one_node = common dso_local global i32 0, align 4
@unsigned_char_type_node = common dso_local global i32 0, align 4
@ptr_mode = common dso_local global i32 0, align 4
@integer_type_node = common dso_local global i32 0, align 4
@INDIRECT_REF = common dso_local global i32 0, align 4
@NEGATE_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fold_builtin_strcmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fold_builtin_strcmp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @POINTER_TYPE, align 4
  %16 = load i32, i32* @POINTER_TYPE, align 4
  %17 = load i32, i32* @VOID_TYPE, align 4
  %18 = call i32 @validate_arglist(i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %107

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @TREE_VALUE(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @TREE_CHAIN(i32 %24)
  %26 = call i32 @TREE_VALUE(i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @operand_equal_p(i32 %27, i32 %28, i32 0)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* @integer_zero_node, align 4
  store i32 %32, i32* %2, align 4
  br label %107

33:                                               ; preds = %21
  %34 = load i32, i32* %4, align 4
  %35 = call i8* @c_getstr(i32 %34)
  store i8* %35, i8** %6, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i8* @c_getstr(i32 %36)
  store i8* %37, i8** %7, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %58

40:                                               ; preds = %33
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %58

43:                                               ; preds = %40
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @strcmp(i8* %44, i8* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @integer_minus_one_node, align 4
  store i32 %50, i32* %2, align 4
  br label %107

51:                                               ; preds = %43
  %52 = load i32, i32* %8, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @integer_one_node, align 4
  store i32 %55, i32* %2, align 4
  br label %107

56:                                               ; preds = %51
  %57 = load i32, i32* @integer_zero_node, align 4
  store i32 %57, i32* %2, align 4
  br label %107

58:                                               ; preds = %40, %33
  %59 = load i8*, i8** %7, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %80

61:                                               ; preds = %58
  %62 = load i8*, i8** %7, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %61
  %67 = load i32, i32* @unsigned_char_type_node, align 4
  %68 = call i32 @build_type_variant(i32 %67, i32 1, i32 0)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @ptr_mode, align 4
  %71 = call i32 @build_pointer_type_for_mode(i32 %69, i32 %70, i32 1)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* @integer_type_node, align 4
  %73 = load i32, i32* @INDIRECT_REF, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @fold_convert(i32 %75, i32 %76)
  %78 = call i32 @build1(i32 %73, i32 %74, i32 %77)
  %79 = call i32 @fold_convert(i32 %72, i32 %78)
  store i32 %79, i32* %2, align 4
  br label %107

80:                                               ; preds = %61, %58
  %81 = load i8*, i8** %6, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %106

83:                                               ; preds = %80
  %84 = load i8*, i8** %6, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %83
  %89 = load i32, i32* @unsigned_char_type_node, align 4
  %90 = call i32 @build_type_variant(i32 %89, i32 1, i32 0)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @ptr_mode, align 4
  %93 = call i32 @build_pointer_type_for_mode(i32 %91, i32 %92, i32 1)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* @integer_type_node, align 4
  %95 = load i32, i32* @INDIRECT_REF, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @fold_convert(i32 %97, i32 %98)
  %100 = call i32 @build1(i32 %95, i32 %96, i32 %99)
  %101 = call i32 @fold_convert(i32 %94, i32 %100)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* @NEGATE_EXPR, align 4
  %103 = load i32, i32* @integer_type_node, align 4
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @fold_build1(i32 %102, i32 %103, i32 %104)
  store i32 %105, i32* %2, align 4
  br label %107

106:                                              ; preds = %83, %80
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %88, %66, %56, %54, %49, %31, %20
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @validate_arglist(i32, i32, i32, i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i64 @operand_equal_p(i32, i32, i32) #1

declare dso_local i8* @c_getstr(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @build_type_variant(i32, i32, i32) #1

declare dso_local i32 @build_pointer_type_for_mode(i32, i32, i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

declare dso_local i32 @build1(i32, i32, i32) #1

declare dso_local i32 @fold_build1(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
