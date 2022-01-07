; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-cppbuiltin.c_builtin_define_type_max.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-cppbuiltin.c_builtin_define_type_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@builtin_define_type_max.values = internal constant [10 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"127\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"255\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"32767\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"65535\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"2147483647\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"4294967295\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"9223372036854775807\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"18446744073709551615\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"170141183460469231731687303715884105727\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"340282366920938463463374607431768211455\00", align 1
@builtin_define_type_max.suffixes = internal constant [6 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)], align 16
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"UL\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"LL\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"ULL\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"%s=%s%s\00", align 1
@parse_in = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @builtin_define_type_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @builtin_define_type_max(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @TYPE_PRECISION(i32 %11)
  switch i32 %12, label %18 [
    i32 8, label %13
    i32 16, label %14
    i32 32, label %15
    i32 64, label %16
    i32 128, label %17
  ]

13:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  br label %20

14:                                               ; preds = %3
  store i64 2, i64* %10, align 8
  br label %20

15:                                               ; preds = %3
  store i64 4, i64* %10, align 8
  br label %20

16:                                               ; preds = %3
  store i64 6, i64* %10, align 8
  br label %20

17:                                               ; preds = %3
  store i64 8, i64* %10, align 8
  br label %20

18:                                               ; preds = %3
  %19 = call i32 (...) @gcc_unreachable()
  br label %20

20:                                               ; preds = %18, %17, %16, %15, %14, %13
  %21 = load i64, i64* %10, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @TYPE_UNSIGNED(i32 %22)
  %24 = sext i32 %23 to i64
  %25 = add i64 %21, %24
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* @builtin_define_type_max.values, i64 0, i64 %25
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = mul nsw i32 %28, 2
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @TYPE_UNSIGNED(i32 %30)
  %32 = add nsw i32 %29, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [6 x i8*], [6 x i8*]* @builtin_define_type_max.suffixes, i64 0, i64 %33
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i64 @strlen(i8* %36)
  %38 = add nsw i64 %37, 1
  %39 = load i8*, i8** %7, align 8
  %40 = call i64 @strlen(i8* %39)
  %41 = add nsw i64 %38, %40
  %42 = load i8*, i8** %8, align 8
  %43 = call i64 @strlen(i8* %42)
  %44 = add nsw i64 %41, %43
  %45 = add nsw i64 %44, 1
  %46 = call i64 @alloca(i64 %45)
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %9, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @sprintf(i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* %49, i8* %50, i8* %51)
  %53 = load i32, i32* @parse_in, align 4
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @cpp_define(i32 %53, i8* %54)
  ret void
}

declare dso_local i32 @TYPE_PRECISION(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @TYPE_UNSIGNED(i32) #1

declare dso_local i64 @alloca(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @cpp_define(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
