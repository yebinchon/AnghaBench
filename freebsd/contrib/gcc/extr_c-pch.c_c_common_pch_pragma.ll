; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pch.c_c_common_pch_pragma.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pch.c_c_common_pch_pragma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [62 x i8] c"pch_preprocess pragma should only be used with -fpreprocessed\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"use #include instead\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: couldn%'t open PCH file: %m\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"use -Winvalid-pch for more information\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"%s: PCH file was invalid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_common_pch_pragma(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.TYPE_2__* @cpp_get_options(i32* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = call i32 @error(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @inform(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %50

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* @O_RDONLY, align 4
  %17 = load i32, i32* @O_BINARY, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @open(i8* %15, i32 %18, i32 438)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @fatal_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %22, %14
  %26 = load i32*, i32** %3, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @c_common_valid_pch(i32* %26, i8* %27, i32 %28)
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load i32*, i32** %3, align 8
  %33 = call %struct.TYPE_2__* @cpp_get_options(i32* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = call i32 @inform(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %31
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @fatal_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %39, %25
  %43 = load i32*, i32** %3, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @c_common_read_pch(i32* %43, i8* %44, i32 %45, i8* %46)
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @close(i32 %48)
  br label %50

50:                                               ; preds = %42, %11
  ret void
}

declare dso_local %struct.TYPE_2__* @cpp_get_options(i32*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @inform(i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @fatal_error(i8*, i8*) #1

declare dso_local i32 @c_common_valid_pch(i32*, i8*, i32) #1

declare dso_local i32 @c_common_read_pch(i32*, i8*, i32, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
