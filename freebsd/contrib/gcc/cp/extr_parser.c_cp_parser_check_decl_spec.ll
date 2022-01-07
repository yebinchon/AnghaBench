; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_check_decl_spec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_check_decl_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@ds_first = common dso_local global i64 0, align 8
@ds_last = common dso_local global i64 0, align 8
@ds_long = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"%<long long long%> is too long for GCC\00", align 1
@pedantic = common dso_local global i64 0, align 8
@in_system_header = common dso_local global i32 0, align 4
@warn_long_long = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"ISO C++ does not support %<long long%>\00", align 1
@cp_parser_check_decl_spec.decl_spec_names = internal constant [14 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"volatile\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"restrict\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"virtual\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"explicit\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"friend\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"typedef\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"__complex\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"__thread\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"duplicate %qs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @cp_parser_check_decl_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_parser_check_decl_spec(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load i64, i64* @ds_first, align 8
  store i64 %5, i64* %3, align 8
  br label %6

6:                                                ; preds = %56, %1
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @ds_last, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %59

10:                                               ; preds = %6
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* %3, align 8
  %15 = trunc i64 %14 to i32
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ult i32 %19, 2
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  br label %56

22:                                               ; preds = %10
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @ds_long, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = icmp ugt i32 %27, 2
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %43

31:                                               ; preds = %26
  %32 = load i64, i64* @pedantic, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i32, i32* @in_system_header, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* @warn_long_long, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @pedwarn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %37, %34, %31
  br label %43

43:                                               ; preds = %42, %29
  br label %55

44:                                               ; preds = %22
  %45 = load i32, i32* %4, align 4
  %46 = icmp ugt i32 %45, 1
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i64, i64* %3, align 8
  %49 = trunc i64 %48 to i32
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [14 x i8*], [14 x i8*]* @cp_parser_check_decl_spec.decl_spec_names, i64 0, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %47, %44
  br label %55

55:                                               ; preds = %54, %43
  br label %56

56:                                               ; preds = %55, %21
  %57 = load i64, i64* %3, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %3, align 8
  br label %6

59:                                               ; preds = %6
  ret void
}

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @pedwarn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
