; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_build.c_atf_build_c_o.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_build.c_atf_build_c_o.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"ATF_BUILD_CC\00", align 1
@ATF_BUILD_CC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"ATF_BUILD_CPPFLAGS\00", align 1
@ATF_BUILD_CPPFLAGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"ATF_BUILD_CFLAGS\00", align 1
@ATF_BUILD_CFLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atf_build_c_o(i8* %0, i8* %1, i8** %2, i8*** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8***, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8*** %3, i8**** %8, align 8
  %11 = call i32 @atf_list_init(i32* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = call i64 @atf_is_error(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %66

16:                                               ; preds = %4
  %17 = load i32, i32* @ATF_BUILD_CC, align 4
  %18 = call i32 @append_config_var(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %17, i32* %10)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @atf_is_error(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %64

23:                                               ; preds = %16
  %24 = load i32, i32* @ATF_BUILD_CPPFLAGS, align 4
  %25 = call i32 @append_config_var(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32* %10)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @atf_is_error(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %64

30:                                               ; preds = %23
  %31 = load i32, i32* @ATF_BUILD_CFLAGS, align 4
  %32 = call i32 @append_config_var(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %31, i32* %10)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @atf_is_error(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %64

37:                                               ; preds = %30
  %38 = load i8**, i8*** %7, align 8
  %39 = icmp ne i8** %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i8**, i8*** %7, align 8
  %42 = call i32 @append_optargs(i8** %41, i32* %10)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @atf_is_error(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %64

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %37
  %49 = load i8*, i8** %5, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @append_src_out(i8* %49, i8* %50, i32* %10)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i64 @atf_is_error(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %64

56:                                               ; preds = %48
  %57 = load i8***, i8**** %8, align 8
  %58 = call i32 @list_to_array(i32* %10, i8*** %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i64 @atf_is_error(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %64

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %62, %55, %46, %36, %29, %22
  %65 = call i32 @atf_list_fini(i32* %10)
  br label %66

66:                                               ; preds = %64, %15
  %67 = load i32, i32* %9, align 4
  ret i32 %67
}

declare dso_local i32 @atf_list_init(i32*) #1

declare dso_local i64 @atf_is_error(i32) #1

declare dso_local i32 @append_config_var(i8*, i32, i32*) #1

declare dso_local i32 @append_optargs(i8**, i32*) #1

declare dso_local i32 @append_src_out(i8*, i8*, i32*) #1

declare dso_local i32 @list_to_array(i32*, i8***) #1

declare dso_local i32 @atf_list_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
