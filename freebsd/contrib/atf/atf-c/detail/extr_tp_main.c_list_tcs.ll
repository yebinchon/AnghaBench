; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_tp_main.c_list_tcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_tp_main.c_list_tcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [50 x i8] c"Content-Type: application/X-atf-tp; version=\221\22\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ident\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ident: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @list_tcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_tcs(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32**, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  store i32* %0, i32** %2, align 8
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %9 = load i32*, i32** %2, align 8
  %10 = call i32** @atf_tp_get_tcs(i32* %9)
  store i32** %10, i32*** %3, align 8
  %11 = load i32**, i32*** %3, align 8
  %12 = icmp ne i32** %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @INV(i32 %13)
  %15 = load i32**, i32*** %3, align 8
  store i32** %15, i32*** %4, align 8
  br label %16

16:                                               ; preds = %79, %1
  %17 = load i32**, i32*** %4, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %82

20:                                               ; preds = %16
  %21 = load i32**, i32*** %4, align 8
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i8** @atf_tc_get_md_vars(i32* %23)
  store i8** %24, i8*** %6, align 8
  %25 = load i8**, i8*** %6, align 8
  %26 = icmp ne i8** %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @INV(i32 %27)
  %29 = load i32**, i32*** %4, align 8
  %30 = load i32**, i32*** %3, align 8
  %31 = icmp ne i32** %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %20
  %35 = load i8**, i8*** %6, align 8
  store i8** %35, i8*** %7, align 8
  br label %36

36:                                               ; preds = %51, %34
  %37 = load i8**, i8*** %7, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = load i8**, i8*** %7, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i8**, i8*** %7, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %48)
  br label %54

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50
  %52 = load i8**, i8*** %7, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 2
  store i8** %53, i8*** %7, align 8
  br label %36

54:                                               ; preds = %45, %36
  %55 = load i8**, i8*** %6, align 8
  store i8** %55, i8*** %7, align 8
  br label %56

56:                                               ; preds = %73, %54
  %57 = load i8**, i8*** %7, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %76

60:                                               ; preds = %56
  %61 = load i8**, i8*** %7, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @strcmp(i8* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load i8**, i8*** %7, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = load i8**, i8*** %7, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 1
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %67, i8* %70)
  br label %72

72:                                               ; preds = %65, %60
  br label %73

73:                                               ; preds = %72
  %74 = load i8**, i8*** %7, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 2
  store i8** %75, i8*** %7, align 8
  br label %56

76:                                               ; preds = %56
  %77 = load i8**, i8*** %6, align 8
  %78 = call i32 @atf_utils_free_charpp(i8** %77)
  br label %79

79:                                               ; preds = %76
  %80 = load i32**, i32*** %4, align 8
  %81 = getelementptr inbounds i32*, i32** %80, i32 1
  store i32** %81, i32*** %4, align 8
  br label %16

82:                                               ; preds = %16
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32** @atf_tp_get_tcs(i32*) #1

declare dso_local i32 @INV(i32) #1

declare dso_local i8** @atf_tc_get_md_vars(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @atf_utils_free_charpp(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
