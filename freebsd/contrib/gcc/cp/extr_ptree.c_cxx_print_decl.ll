; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_ptree.c_cxx_print_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_ptree.c_cxx_print_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIELD_DECL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c" mutable \00", align 1
@TS_DECL_COMMON = common dso_local global i32 0, align 4
@FUNCTION_DECL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c" pending-inline-info %p\00", align 1
@TYPE_DECL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c" sorted-fields %p\00", align 1
@VAR_DECL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c" template-info %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxx_print_decl(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @TREE_CODE(i32 %7)
  %9 = load i64, i64* @FIELD_DECL, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @DECL_MUTABLE_P(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, 3
  %19 = call i32 @indent_to(i32* %16, i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %15, %11
  br label %88

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @TREE_CODE(i32 %24)
  %26 = load i32, i32* @TS_DECL_COMMON, align 4
  %27 = call i32 @CODE_CONTAINS_STRUCT(i64 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @DECL_LANG_SPECIFIC(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29, %23
  br label %88

34:                                               ; preds = %29
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 3
  %38 = call i32 @indent_to(i32* %35, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @TREE_CODE(i32 %39)
  %41 = load i64, i64* @FUNCTION_DECL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %34
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @DECL_PENDING_INLINE_INFO(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @DECL_PENDING_INLINE_INFO(i32 %49)
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 (i32*, i8*, ...) @fprintf(i32* %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %47, %43, %34
  %54 = load i32, i32* %5, align 4
  %55 = call i64 @TREE_CODE(i32 %54)
  %56 = load i64, i64* @TYPE_DECL, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  %60 = call i64 @DECL_SORTED_FIELDS(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i64 @DECL_SORTED_FIELDS(i32 %64)
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 (i32*, i8*, ...) @fprintf(i32* %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %62, %58, %53
  %69 = load i32, i32* %5, align 4
  %70 = call i64 @TREE_CODE(i32 %69)
  %71 = load i64, i64* @FUNCTION_DECL, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %5, align 4
  %75 = call i64 @TREE_CODE(i32 %74)
  %76 = load i64, i64* @VAR_DECL, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %73, %68
  %79 = load i32, i32* %5, align 4
  %80 = call i64 @DECL_TEMPLATE_INFO(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i64 @DECL_TEMPLATE_INFO(i32 %84)
  %86 = inttoptr i64 %85 to i8*
  %87 = call i32 (i32*, i8*, ...) @fprintf(i32* %83, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %22, %33, %82, %78, %73
  ret void
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @DECL_MUTABLE_P(i32) #1

declare dso_local i32 @indent_to(i32*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @CODE_CONTAINS_STRUCT(i64, i32) #1

declare dso_local i32 @DECL_LANG_SPECIFIC(i32) #1

declare dso_local i64 @DECL_PENDING_INLINE_INFO(i32) #1

declare dso_local i64 @DECL_SORTED_FIELDS(i32) #1

declare dso_local i64 @DECL_TEMPLATE_INFO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
