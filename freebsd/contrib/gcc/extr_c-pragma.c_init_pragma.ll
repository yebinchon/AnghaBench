; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pragma.c_init_pragma.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pragma.c_init_pragma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omp_pragma_def = type { i8*, i32 }

@flag_openmp = common dso_local global i64 0, align 8
@flag_preprocess_only = common dso_local global i32 0, align 4
@init_pragma.omp_pragmas = internal constant [12 x %struct.omp_pragma_def] [%struct.omp_pragma_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 139 }, %struct.omp_pragma_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 138 }, %struct.omp_pragma_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 137 }, %struct.omp_pragma_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 136 }, %struct.omp_pragma_def { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 135 }, %struct.omp_pragma_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 134 }, %struct.omp_pragma_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 133 }, %struct.omp_pragma_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 132 }, %struct.omp_pragma_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 131 }, %struct.omp_pragma_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 130 }, %struct.omp_pragma_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 129 }, %struct.omp_pragma_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 128 }], align 16
@.str = private unnamed_addr constant [7 x i8] c"atomic\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"barrier\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"critical\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"ordered\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"parallel\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"section\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"sections\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"single\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"threadprivate\00", align 1
@parse_in = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"omp\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"GCC\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"pch_preprocess\00", align 1
@PRAGMA_GCC_PCH_PREPROCESS = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [11 x i8] c"diagnostic\00", align 1
@handle_pragma_diagnostic = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [17 x i8] c"redefine_extname\00", align 1
@handle_pragma_redefine_extname = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [14 x i8] c"extern_prefix\00", align 1
@handle_pragma_extern_prefix = common dso_local global i32 0, align 4
@handle_pragma_pack = common dso_local global i32 0, align 4
@handle_pragma_visibility = common dso_local global i32 0, align 4
@handle_pragma_weak = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_pragma() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @flag_openmp, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %29

5:                                                ; preds = %0
  %6 = load i32, i32* @flag_preprocess_only, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %5
  store i32 12, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %25, %8
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 12
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = load i32, i32* @parse_in, align 4
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [12 x %struct.omp_pragma_def], [12 x %struct.omp_pragma_def]* @init_pragma.omp_pragmas, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.omp_pragma_def, %struct.omp_pragma_def* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 16
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [12 x %struct.omp_pragma_def], [12 x %struct.omp_pragma_def]* @init_pragma.omp_pragmas, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.omp_pragma_def, %struct.omp_pragma_def* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @cpp_register_deferred_pragma(i32 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %18, i32 %23, i32 1, i32 1)
  br label %25

25:                                               ; preds = %12
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %9

28:                                               ; preds = %9
  br label %29

29:                                               ; preds = %28, %5, %0
  %30 = load i32, i32* @parse_in, align 4
  %31 = load i32, i32* @PRAGMA_GCC_PCH_PREPROCESS, align 4
  %32 = call i32 @cpp_register_deferred_pragma(i32 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 %31, i32 0, i32 0)
  %33 = load i32, i32* @handle_pragma_diagnostic, align 4
  %34 = call i32 @c_register_pragma(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @handle_pragma_redefine_extname, align 4
  %36 = call i32 @c_register_pragma_with_expansion(i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @handle_pragma_extern_prefix, align 4
  %38 = call i32 @c_register_pragma(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 %37)
  ret void
}

declare dso_local i32 @cpp_register_deferred_pragma(i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @c_register_pragma(i8*, i8*, i32) #1

declare dso_local i32 @c_register_pragma_with_expansion(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
