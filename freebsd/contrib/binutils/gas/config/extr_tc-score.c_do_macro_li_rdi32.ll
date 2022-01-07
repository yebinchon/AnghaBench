; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do_macro_li_rdi32.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do_macro_li_rdi32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@REG_TYPE_SCORE = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@_SIMM16_LA = common dso_local global i32 0, align 4
@MAX_LITERAL_POOL_SIZE = common dso_local global i32 0, align 4
@_VALUE_HI16 = common dso_local global i32 0, align 4
@inst = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [43 x i8] c"li rd label isn't correct instruction form\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"ld_i32hi r%d, %s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"ld_i32lo r%d, %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_macro_li_rdi32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_macro_li_rdi32(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @skip_whitespace(i8* %8)
  %10 = load i32, i32* @REG_TYPE_SCORE, align 4
  %11 = call i32 @reg_required_here(i8** %2, i32 20, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i64, i64* @FAIL, align 8
  %13 = trunc i64 %12 to i32
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = call i32 @skip_past_comma(i8** %2)
  %17 = load i64, i64* @FAIL, align 8
  %18 = trunc i64 %17 to i32
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %1
  br label %83

21:                                               ; preds = %15
  %22 = load i8*, i8** %2, align 8
  store i8* %22, i8** %4, align 8
  %23 = load i32, i32* @_SIMM16_LA, align 4
  %24 = call i32 @data_op2(i8** %2, i32 1, i32 %23)
  %25 = load i64, i64* @FAIL, align 8
  %26 = trunc i64 %25 to i32
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i8*, i8** %2, align 8
  %30 = call i32 @end_of_line(i8* %29)
  br label %83

31:                                               ; preds = %21
  %32 = load i32, i32* @MAX_LITERAL_POOL_SIZE, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %5, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %6, align 8
  %36 = load i8*, i8** %4, align 8
  store i8* %36, i8** %2, align 8
  %37 = load i32, i32* @_VALUE_HI16, align 4
  %38 = call i32 @data_op2(i8** %2, i32 1, i32 %37)
  %39 = load i64, i64* @FAIL, align 8
  %40 = trunc i64 %39 to i32
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %31
  %43 = load i8*, i8** %2, align 8
  %44 = call i32 @end_of_line(i8* %43)
  %45 = load i64, i64* @FAIL, align 8
  %46 = trunc i64 %45 to i32
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %31
  store i32 1, i32* %7, align 4
  br label %78

49:                                               ; preds = %42
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2, i32 0, i32 0), align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 1), align 4
  store i32 1, i32* %7, align 4
  br label %78

54:                                               ; preds = %49
  %55 = load i32, i32* %3, align 4
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @sprintf(i8* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %55, i8* %56)
  %58 = load i32, i32* @TRUE, align 4
  %59 = call i32 @append_insn(i8* %35, i32 %58)
  %60 = load i64, i64* @FAIL, align 8
  %61 = trunc i64 %60 to i32
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  store i32 1, i32* %7, align 4
  br label %78

64:                                               ; preds = %54
  %65 = load i32, i32* %3, align 4
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @sprintf(i8* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %65, i8* %66)
  %68 = load i32, i32* @TRUE, align 4
  %69 = call i32 @append_insn(i8* %35, i32 %68)
  %70 = load i64, i64* @FAIL, align 8
  %71 = trunc i64 %70 to i32
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  store i32 1, i32* %7, align 4
  br label %78

74:                                               ; preds = %64
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %75

75:                                               ; preds = %74
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76
  store i32 0, i32* %7, align 4
  br label %78

78:                                               ; preds = %77, %73, %63, %52, %48
  %79 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %7, align 4
  switch i32 %80, label %84 [
    i32 0, label %81
    i32 1, label %83
  ]

81:                                               ; preds = %78
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %20, %28, %78, %82
  ret void

84:                                               ; preds = %78
  unreachable
}

declare dso_local i32 @skip_whitespace(i8*) #1

declare dso_local i32 @reg_required_here(i8**, i32, i32) #1

declare dso_local i32 @skip_past_comma(i8**) #1

declare dso_local i32 @data_op2(i8**, i32, i32) #1

declare dso_local i32 @end_of_line(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*) #1

declare dso_local i32 @append_insn(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
