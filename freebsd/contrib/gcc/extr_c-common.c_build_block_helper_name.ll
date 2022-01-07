; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_build_block_helper_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_build_block_helper_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@current_function_decl = common dso_local global i64 0, align 8
@build_block_helper_name.global_count = internal global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"__block_global_%d\00", align 1
@FUNCTION_DECL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"__%s_block_invoke_%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @build_block_helper_name(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* @current_function_decl, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = call i64 @alloca(i32 32)
  %9 = inttoptr i64 %8 to i8*
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* @build_block_helper_name.global_count, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @build_block_helper_name.global_count, align 4
  %13 = call i32 (i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %56

14:                                               ; preds = %1
  %15 = load i64, i64* @current_function_decl, align 8
  store i64 %15, i64* %4, align 8
  br label %16

16:                                               ; preds = %31, %14
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @DECL_CONTEXT(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i64, i64* %4, align 8
  %25 = call i64 @DECL_CONTEXT(i64 %24)
  %26 = call i64 @TREE_CODE(i64 %25)
  %27 = load i64, i64* @FUNCTION_DECL, align 8
  %28 = icmp eq i64 %26, %27
  br label %29

29:                                               ; preds = %23, %19, %16
  %30 = phi i1 [ false, %19 ], [ false, %16 ], [ %28, %23 ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = load i64, i64* %4, align 8
  %33 = call i64 @DECL_CONTEXT(i64 %32)
  store i64 %33, i64* %4, align 8
  br label %16

34:                                               ; preds = %29
  %35 = load i32, i32* %2, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* %4, align 8
  %39 = call %struct.TYPE_2__* @DECL_STRUCT_FUNCTION(i64 %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %37, %34
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @DECL_NAME(i64 %44)
  %46 = call i32 @IDENTIFIER_LENGTH(i32 %45)
  %47 = add nsw i32 %46, 32
  %48 = call i64 @alloca(i32 %47)
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %3, align 8
  %50 = load i8*, i8** %3, align 8
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @DECL_NAME(i64 %51)
  %53 = call i8* @IDENTIFIER_POINTER(i32 %52)
  %54 = load i32, i32* %2, align 4
  %55 = call i32 (i8*, i8*, ...) @sprintf(i8* %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %53, i32 %54)
  br label %56

56:                                               ; preds = %43, %7
  %57 = load i8*, i8** %3, align 8
  %58 = call i64 @get_identifier(i8* %57)
  ret i64 %58
}

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i64 @DECL_CONTEXT(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local %struct.TYPE_2__* @DECL_STRUCT_FUNCTION(i64) #1

declare dso_local i32 @IDENTIFIER_LENGTH(i32) #1

declare dso_local i32 @DECL_NAME(i64) #1

declare dso_local i8* @IDENTIFIER_POINTER(i32) #1

declare dso_local i64 @get_identifier(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
