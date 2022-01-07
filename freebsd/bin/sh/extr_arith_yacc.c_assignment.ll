; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_arith_yacc.c_assignment.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_arith_yacc.c_assignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.yystype = type { i32 }

@yylval = common dso_local global %union.yystype zeroinitializer, align 4
@ARITH_VAR = common dso_local global i32 0, align 4
@ARITH_ASS = common dso_local global i32 0, align 4
@ARITH_ASS_MIN = common dso_local global i32 0, align 4
@ARITH_ASS_MAX = common dso_local global i32 0, align 4
@ARITH_FORMAT_STR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @assignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assignment(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.yystype, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = bitcast %union.yystype* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%union.yystype* @yylval to i8*), i64 4, i1 false)
  %13 = call i32 (...) @yylex()
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @DIGITS(i32 %14)
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @ARITH_VAR, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @cond(i32 %24, %union.yystype* %6, i32 %25, i32 %26)
  store i32 %27, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %74

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @ARITH_ASS, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @ARITH_ASS_MIN, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @ARITH_ASS_MAX, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @cond(i32 %41, %union.yystype* %6, i32 %42, i32 %43)
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %74

45:                                               ; preds = %36, %28
  %46 = call i32 (...) @yylex()
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @assignment(i32 %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %74

53:                                               ; preds = %45
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @ARITH_ASS, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 %58, 11
  %60 = bitcast %union.yystype* %6 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @arith_lookupvarint(i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @do_binop(i32 %59, i32 %62, i32 %63)
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %57, %53
  %66 = trunc i64 %17 to i32
  %67 = load i8*, i8** @ARITH_FORMAT_STR, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @snprintf(i8* %19, i32 %66, i8* %67, i32 %68)
  %70 = bitcast %union.yystype* %6 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @setvar(i32 %71, i8* %19, i32 0)
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %74

74:                                               ; preds = %65, %51, %40, %23
  %75 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @yylex(...) #2

declare dso_local i32 @DIGITS(i32) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @cond(i32, %union.yystype*, i32, i32) #2

declare dso_local i32 @do_binop(i32, i32, i32) #2

declare dso_local i32 @arith_lookupvarint(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @setvar(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
