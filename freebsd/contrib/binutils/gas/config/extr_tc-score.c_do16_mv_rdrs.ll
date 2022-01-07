; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do16_mv_rdrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do16_mv_rdrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@REG_TYPE_SCORE = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@inst = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@MAX_LITERAL_POOL_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"mlfh! %s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@BAD_ARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"mhfl! %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do16_mv_rdrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do16_mv_rdrs(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %5, align 8
  %11 = load i8*, i8** %2, align 8
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @skip_whitespace(i8* %12)
  %14 = load i32, i32* @REG_TYPE_SCORE, align 4
  %15 = call i32 @reg_required_here(i8** %2, i32 8, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i64, i64* @FAIL, align 8
  %17 = trunc i64 %16 to i32
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %36, label %19

19:                                               ; preds = %1
  %20 = call i32 @skip_past_comma(i8** %2)
  %21 = load i64, i64* @FAIL, align 8
  %22 = trunc i64 %21 to i32
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %36, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @REG_TYPE_SCORE, align 4
  %26 = call i32 @reg_required_here(i8** %2, i32 4, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i64, i64* @FAIL, align 8
  %28 = trunc i64 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 @end_of_line(i8* %31)
  %33 = load i64, i64* @FAIL, align 8
  %34 = trunc i64 %33 to i32
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30, %24, %19, %1
  br label %101

37:                                               ; preds = %30
  %38 = load i32, i32* %3, align 4
  %39 = icmp slt i32 %38, 16
  br i1 %39, label %40, label %75

40:                                               ; preds = %37
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 16
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  %45 = ashr i32 %44, 8
  %46 = and i32 %45, 15
  %47 = shl i32 %46, 20
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  %49 = ashr i32 %48, 4
  %50 = and i32 %49, 15
  %51 = shl i32 %50, 15
  %52 = or i32 %47, %51
  %53 = or i32 %52, 15360
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 2), align 4
  br label %74

56:                                               ; preds = %40
  %57 = load i32, i32* @MAX_LITERAL_POOL_SIZE, align 4
  %58 = zext i32 %57 to i64
  %59 = call i8* @llvm.stacksave()
  store i8* %59, i8** %6, align 8
  %60 = alloca i8, i64 %58, align 16
  store i64 %58, i64* %7, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @sprintf(i8* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %61)
  %63 = load i32, i32* @TRUE, align 4
  %64 = call i32 @append_insn(i8* %60, i32 %63)
  %65 = load i64, i64* @FAIL, align 8
  %66 = trunc i64 %65 to i32
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  store i32 1, i32* %8, align 4
  br label %70

69:                                               ; preds = %56
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 3), align 4
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %69, %68
  %71 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %8, align 4
  switch i32 %72, label %102 [
    i32 0, label %73
    i32 1, label %101
  ]

73:                                               ; preds = %70
  br label %74

74:                                               ; preds = %73, %43
  br label %100

75:                                               ; preds = %37
  %76 = load i32, i32* %4, align 4
  %77 = icmp sgt i32 %76, 16
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* @BAD_ARGS, align 4
  %80 = call i32 @SET_INSN_ERROR(i32 %79)
  br label %101

81:                                               ; preds = %75
  %82 = load i32, i32* @MAX_LITERAL_POOL_SIZE, align 4
  %83 = zext i32 %82 to i64
  %84 = call i8* @llvm.stacksave()
  store i8* %84, i8** %9, align 8
  %85 = alloca i8, i64 %83, align 16
  store i64 %83, i64* %10, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = call i32 @sprintf(i8* %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %86)
  %88 = load i32, i32* @TRUE, align 4
  %89 = call i32 @append_insn(i8* %85, i32 %88)
  %90 = load i64, i64* @FAIL, align 8
  %91 = trunc i64 %90 to i32
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  store i32 1, i32* %8, align 4
  br label %95

94:                                               ; preds = %81
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 3), align 4
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %94, %93
  %96 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %8, align 4
  switch i32 %97, label %102 [
    i32 0, label %98
    i32 1, label %101
  ]

98:                                               ; preds = %95
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99, %74
  br label %101

101:                                              ; preds = %36, %70, %78, %95, %100
  ret void

102:                                              ; preds = %95, %70
  unreachable
}

declare dso_local i32 @skip_whitespace(i8*) #1

declare dso_local i32 @reg_required_here(i8**, i32, i32) #1

declare dso_local i32 @skip_past_comma(i8**) #1

declare dso_local i32 @end_of_line(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @append_insn(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @SET_INSN_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
