; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_main.c_doPrintVars.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_main.c_doPrintVars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@printVars = common dso_local global i64 0, align 8
@EXPAND_VARS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@debugVflag = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c".MAKE.EXPAND_VARIABLES\00", align 1
@variables = common dso_local global i32 0, align 4
@VAR_GLOBAL = common dso_local global i32 0, align 4
@VARF_WANTRES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"${%s}\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%s: variable name too big: %s\00", align 1
@progname = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @doPrintVars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doPrintVars() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [128 x i8], align 16
  %7 = alloca i32, align 4
  %8 = load i64, i64* @printVars, align 8
  %9 = load i64, i64* @EXPAND_VARS, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = load i64, i64* @TRUE, align 8
  store i64 %12, i64* %2, align 8
  br label %22

13:                                               ; preds = %0
  %14 = load i64, i64* @debugVflag, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %2, align 8
  br label %21

18:                                               ; preds = %13
  %19 = load i64, i64* @FALSE, align 8
  %20 = call i64 @getBoolean(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %19)
  store i64 %20, i64* %2, align 8
  br label %21

21:                                               ; preds = %18, %16
  br label %22

22:                                               ; preds = %21, %11
  %23 = load i32, i32* @variables, align 4
  %24 = call i32* @Lst_First(i32 %23)
  store i32* %24, i32** %1, align 8
  br label %25

25:                                               ; preds = %74, %22
  %26 = load i32*, i32** %1, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %77

28:                                               ; preds = %25
  %29 = load i32*, i32** %1, align 8
  %30 = call i64 @Lst_Datum(i32* %29)
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %3, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = call i64 @strchr(i8* %32, i8 signext 36)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load i8*, i8** %3, align 8
  %37 = load i32, i32* @VAR_GLOBAL, align 4
  %38 = load i32, i32* @VARF_WANTRES, align 4
  %39 = call i8* @Var_Subst(i32* null, i8* %36, i32 %37, i32 %38)
  store i8* %39, i8** %5, align 8
  store i8* %39, i8** %4, align 8
  br label %63

40:                                               ; preds = %28
  %41 = load i64, i64* %2, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %40
  %44 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @snprintf(i8* %44, i32 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp sge i32 %47, 128
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* @progname, align 4
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 @Fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %50, i8* %51)
  br label %53

53:                                               ; preds = %49, %43
  %54 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %55 = load i32, i32* @VAR_GLOBAL, align 4
  %56 = load i32, i32* @VARF_WANTRES, align 4
  %57 = call i8* @Var_Subst(i32* null, i8* %54, i32 %55, i32 %56)
  store i8* %57, i8** %5, align 8
  store i8* %57, i8** %4, align 8
  br label %62

58:                                               ; preds = %40
  %59 = load i8*, i8** %3, align 8
  %60 = load i32, i32* @VAR_GLOBAL, align 4
  %61 = call i8* @Var_Value(i8* %59, i32 %60, i8** %5)
  store i8* %61, i8** %4, align 8
  br label %62

62:                                               ; preds = %58, %53
  br label %63

63:                                               ; preds = %62, %35
  %64 = load i8*, i8** %4, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i8*, i8** %4, align 8
  br label %69

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi i8* [ %67, %66 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %68 ]
  %71 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %70)
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @free(i8* %72)
  br label %74

74:                                               ; preds = %69
  %75 = load i32*, i32** %1, align 8
  %76 = call i32* @Lst_Succ(i32* %75)
  store i32* %76, i32** %1, align 8
  br label %25

77:                                               ; preds = %25
  ret void
}

declare dso_local i64 @getBoolean(i8*, i64) #1

declare dso_local i32* @Lst_First(i32) #1

declare dso_local i64 @Lst_Datum(i32*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i8* @Var_Subst(i32*, i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @Fatal(i8*, i32, i8*) #1

declare dso_local i8* @Var_Value(i8*, i32, i8**) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @Lst_Succ(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
