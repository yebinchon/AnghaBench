; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-aux-info.c_gen_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-aux-info.c_gen_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@k_and_r_names = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"volatile \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"const \00", align 1
@data_type = common dso_local global i8* null, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@ansi = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"register \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"extern \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"static \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i64)* @gen_decl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gen_decl(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @DECL_NAME(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @DECL_NAME(i32 %13)
  %15 = call i8* @IDENTIFIER_POINTER(i64 %14)
  store i8* %15, i8** %8, align 8
  br label %17

16:                                               ; preds = %3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %17

17:                                               ; preds = %16, %12
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @k_and_r_names, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i8*, i8** %8, align 8
  store i8* %22, i8** %4, align 8
  br label %98

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @TREE_THIS_VOLATILE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i8*, i8** %8, align 8
  %29 = call i8* @concat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %28, i32* null)
  store i8* %29, i8** %8, align 8
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @TREE_READONLY(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i8*, i8** %8, align 8
  %36 = call i8* @concat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %35, i32* null)
  store i8* %36, i8** %8, align 8
  br label %37

37:                                               ; preds = %34, %30
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** @data_type, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @TREE_CODE(i32 %38)
  %40 = load i64, i64* @FUNCTION_DECL, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @ansi, align 4
  %49 = call i8* @gen_formal_list_for_func_def(i32 %47, i32 %48)
  %50 = call i8* @concat(i8* %46, i8* %49, i32* null)
  store i8* %50, i8** %8, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @TREE_TYPE(i32 %52)
  %54 = call i32 @TREE_TYPE(i32 %53)
  %55 = load i64, i64* %7, align 8
  %56 = call i8* @gen_type(i8* %51, i32 %54, i64 %55)
  store i8* %56, i8** %8, align 8
  br label %63

57:                                               ; preds = %42, %37
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @TREE_TYPE(i32 %59)
  %61 = load i64, i64* %7, align 8
  %62 = call i8* @gen_type(i8* %58, i32 %60, i64 %61)
  store i8* %62, i8** %8, align 8
  br label %63

63:                                               ; preds = %57, %45
  %64 = load i8*, i8** %8, align 8
  %65 = call i8* @affix_data_type(i8* %64)
  store i8* %65, i8** %8, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i64 @TREE_CODE(i32 %66)
  %68 = load i64, i64* @FUNCTION_DECL, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = load i32, i32* %5, align 4
  %72 = call i64 @C_DECL_REGISTER(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i8*, i8** %8, align 8
  %76 = call i8* @concat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %75, i32* null)
  store i8* %76, i8** %8, align 8
  br label %77

77:                                               ; preds = %74, %70, %63
  %78 = load i32, i32* %5, align 4
  %79 = call i64 @TREE_PUBLIC(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i8*, i8** %8, align 8
  %83 = call i8* @concat(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %82, i32* null)
  store i8* %83, i8** %8, align 8
  br label %84

84:                                               ; preds = %81, %77
  %85 = load i32, i32* %5, align 4
  %86 = call i64 @TREE_CODE(i32 %85)
  %87 = load i64, i64* @FUNCTION_DECL, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load i32, i32* %5, align 4
  %91 = call i64 @TREE_PUBLIC(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = load i8*, i8** %8, align 8
  %95 = call i8* @concat(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %94, i32* null)
  store i8* %95, i8** %8, align 8
  br label %96

96:                                               ; preds = %93, %89, %84
  %97 = load i8*, i8** %8, align 8
  store i8* %97, i8** %4, align 8
  br label %98

98:                                               ; preds = %96, %21
  %99 = load i8*, i8** %4, align 8
  ret i8* %99
}

declare dso_local i64 @DECL_NAME(i32) #1

declare dso_local i8* @IDENTIFIER_POINTER(i64) #1

declare dso_local i64 @TREE_THIS_VOLATILE(i32) #1

declare dso_local i8* @concat(i8*, i8*, i32*) #1

declare dso_local i64 @TREE_READONLY(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i8* @gen_formal_list_for_func_def(i32, i32) #1

declare dso_local i8* @gen_type(i8*, i32, i64) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i8* @affix_data_type(i8*) #1

declare dso_local i64 @C_DECL_REGISTER(i32) #1

declare dso_local i64 @TREE_PUBLIC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
