; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do_ceinst.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do_ceinst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_IMM5 = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@REG_TYPE_SCORE = common dso_local global i32 0, align 4
@_IMM25 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_ceinst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_ceinst(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  store i8* %4, i8** %3, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @skip_whitespace(i8* %5)
  %7 = load i32, i32* @_IMM5, align 4
  %8 = call i32 @data_op2(i8** %2, i32 20, i32 %7)
  %9 = load i64, i64* @FAIL, align 8
  %10 = trunc i64 %9 to i32
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %62, label %12

12:                                               ; preds = %1
  %13 = call i32 @skip_past_comma(i8** %2)
  %14 = load i64, i64* @FAIL, align 8
  %15 = trunc i64 %14 to i32
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %62, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @REG_TYPE_SCORE, align 4
  %19 = call i32 @reg_required_here(i8** %2, i32 15, i32 %18)
  %20 = load i64, i64* @FAIL, align 8
  %21 = trunc i64 %20 to i32
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %62, label %23

23:                                               ; preds = %17
  %24 = call i32 @skip_past_comma(i8** %2)
  %25 = load i64, i64* @FAIL, align 8
  %26 = trunc i64 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %62, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @REG_TYPE_SCORE, align 4
  %30 = call i32 @reg_required_here(i8** %2, i32 10, i32 %29)
  %31 = load i64, i64* @FAIL, align 8
  %32 = trunc i64 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %62, label %34

34:                                               ; preds = %28
  %35 = call i32 @skip_past_comma(i8** %2)
  %36 = load i64, i64* @FAIL, align 8
  %37 = trunc i64 %36 to i32
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %62, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @_IMM5, align 4
  %41 = call i32 @data_op2(i8** %2, i32 5, i32 %40)
  %42 = load i64, i64* @FAIL, align 8
  %43 = trunc i64 %42 to i32
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %62, label %45

45:                                               ; preds = %39
  %46 = call i32 @skip_past_comma(i8** %2)
  %47 = load i64, i64* @FAIL, align 8
  %48 = trunc i64 %47 to i32
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %62, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @_IMM5, align 4
  %52 = call i32 @data_op2(i8** %2, i32 0, i32 %51)
  %53 = load i64, i64* @FAIL, align 8
  %54 = trunc i64 %53 to i32
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load i8*, i8** %2, align 8
  %58 = call i32 @end_of_line(i8* %57)
  %59 = load i64, i64* @FAIL, align 8
  %60 = trunc i64 %59 to i32
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56, %50, %45, %39, %34, %28, %23, %17, %12, %1
  br label %72

63:                                               ; preds = %56
  %64 = load i8*, i8** %3, align 8
  store i8* %64, i8** %2, align 8
  %65 = load i32, i32* @_IMM25, align 4
  %66 = call i32 @data_op2(i8** %2, i32 0, i32 %65)
  %67 = load i64, i64* @FAIL, align 8
  %68 = trunc i64 %67 to i32
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %72

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %62, %70, %71
  ret void
}

declare dso_local i32 @skip_whitespace(i8*) #1

declare dso_local i32 @data_op2(i8**, i32, i32) #1

declare dso_local i32 @skip_past_comma(i8**) #1

declare dso_local i32 @reg_required_here(i8**, i32, i32) #1

declare dso_local i32 @end_of_line(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
