; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_arith_yacc.c_binop2.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_arith_yacc.c_binop2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.yystype = type { i32 }

@yylval = common dso_local global %union.yystype zeroinitializer, align 4
@last_token = common dso_local global i32 0, align 4
@ARITH_BINOP_MIN = common dso_local global i32 0, align 4
@ARITH_BINOP_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @binop2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binop2(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.yystype, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  br label %13

13:                                               ; preds = %67, %4
  %14 = call i32 (...) @yylex()
  store i32 %14, i32* %12, align 4
  %15 = bitcast %union.yystype* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%union.yystype* @yylval to i8*), i64 4, i1 false)
  %16 = load i32, i32* %12, align 4
  %17 = call i32 (...) @yylex()
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @primary(i32 %16, %union.yystype* %9, i32 %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @last_token, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @ARITH_BINOP_MIN, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %13
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @ARITH_BINOP_MAX, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @higher_prec(i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @arith_prec(i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @binop2(i32 %34, i32 %35, i32 %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* @last_token, align 4
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %33, %28, %24, %13
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  br label %51

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @do_binop(i32 %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %46, %44
  %52 = phi i32 [ %45, %44 ], [ %50, %46 ]
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @ARITH_BINOP_MIN, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %65, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @ARITH_BINOP_MAX, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @arith_prec(i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %60, %56, %51
  %66 = load i32, i32* %5, align 4
  ret i32 %66

67:                                               ; preds = %60
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %6, align 4
  br label %13
}

declare dso_local i32 @yylex(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @primary(i32, %union.yystype*, i32, i32) #1

declare dso_local i64 @higher_prec(i32, i32) #1

declare dso_local i32 @arith_prec(i32) #1

declare dso_local i32 @do_binop(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
