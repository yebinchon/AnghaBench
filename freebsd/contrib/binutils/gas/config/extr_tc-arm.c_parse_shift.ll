; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_shift.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__, i8* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.asm_shift_name = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"shift expression expected\00", align 1
@inst = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@FAIL = common dso_local global i32 0, align 4
@arm_shift_hsh = common dso_local global i32 0, align 4
@SHIFT_LSL = common dso_local global i32 0, align 4
@SHIFT_ASR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"'LSL' or 'ASR' required\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"'LSL' required\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"'ASR' required\00", align 1
@SHIFT_RRX = common dso_local global i32 0, align 4
@REG_TYPE_RN = common dso_local global i32 0, align 4
@GE_IMM_PREFIX = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32, i32)* @parse_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_shift(i8** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.asm_shift_name*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  store i8* %15, i8** %11, align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %11, align 8
  br label %18

18:                                               ; preds = %24, %3
  %19 = load i8*, i8** %11, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call i64 @ISALPHA(i8 signext %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23
  %25 = load i8*, i8** %11, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %11, align 8
  br label %18

27:                                               ; preds = %18
  %28 = load i8*, i8** %11, align 8
  %29 = load i8**, i8*** %5, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = icmp eq i8* %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i8* %33, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %34 = load i32, i32* @FAIL, align 4
  store i32 %34, i32* %4, align 4
  br label %137

35:                                               ; preds = %27
  %36 = load i32, i32* @arm_shift_hsh, align 4
  %37 = load i8**, i8*** %5, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load i8**, i8*** %5, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = ptrtoint i8* %39 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = call %struct.asm_shift_name* @hash_find_n(i32 %36, i8* %38, i32 %45)
  store %struct.asm_shift_name* %46, %struct.asm_shift_name** %8, align 8
  %47 = load %struct.asm_shift_name*, %struct.asm_shift_name** %8, align 8
  %48 = icmp eq %struct.asm_shift_name* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %35
  %50 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i8* %50, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %51 = load i32, i32* @FAIL, align 4
  store i32 %51, i32* %4, align 4
  br label %137

52:                                               ; preds = %35
  %53 = load %struct.asm_shift_name*, %struct.asm_shift_name** %8, align 8
  %54 = getelementptr inbounds %struct.asm_shift_name, %struct.asm_shift_name* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %7, align 4
  switch i32 %56, label %86 [
    i32 132, label %57
    i32 130, label %57
    i32 128, label %58
    i32 129, label %70
    i32 131, label %78
  ]

57:                                               ; preds = %52, %52
  br label %88

58:                                               ; preds = %52
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @SHIFT_LSL, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @SHIFT_ASR, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i8* %67, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %68 = load i32, i32* @FAIL, align 4
  store i32 %68, i32* %4, align 4
  br label %137

69:                                               ; preds = %62, %58
  br label %88

70:                                               ; preds = %52
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @SHIFT_LSL, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i8* %75, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %76 = load i32, i32* @FAIL, align 4
  store i32 %76, i32* %4, align 4
  br label %137

77:                                               ; preds = %70
  br label %88

78:                                               ; preds = %52
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @SHIFT_ASR, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i8* %83, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %84 = load i32, i32* @FAIL, align 4
  store i32 %84, i32* %4, align 4
  br label %137

85:                                               ; preds = %78
  br label %88

86:                                               ; preds = %52
  %87 = call i32 (...) @abort() #3
  unreachable

88:                                               ; preds = %85, %77, %69, %57
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @SHIFT_RRX, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %122

92:                                               ; preds = %88
  %93 = load i8*, i8** %11, align 8
  %94 = call i32 @skip_whitespace(i8* %93)
  %95 = load i32, i32* %7, align 4
  %96 = icmp eq i32 %95, 132
  br i1 %96, label %97, label %114

97:                                               ; preds = %92
  %98 = load i32, i32* @REG_TYPE_RN, align 4
  %99 = call i32 @arm_reg_parse(i8** %11, i32 %98)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* @FAIL, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %97
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  store i32 %103, i32* %108, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  store i32 1, i32* %113, align 4
  br label %121

114:                                              ; preds = %97, %92
  %115 = load i32, i32* @GE_IMM_PREFIX, align 4
  %116 = call i64 @my_get_expression(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 1, i32 0), i8** %11, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i32, i32* @FAIL, align 4
  store i32 %119, i32* %4, align 4
  br label %137

120:                                              ; preds = %114
  br label %121

121:                                              ; preds = %120, %102
  br label %122

122:                                              ; preds = %121, %88
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 2
  store i32 %123, i32* %128, align 4
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 3
  store i32 1, i32* %133, align 4
  %134 = load i8*, i8** %11, align 8
  %135 = load i8**, i8*** %5, align 8
  store i8* %134, i8** %135, align 8
  %136 = load i32, i32* @SUCCESS, align 4
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %122, %118, %82, %74, %66, %49, %32
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i64 @ISALPHA(i8 signext) #1

declare dso_local i8* @_(i8*) #1

declare dso_local %struct.asm_shift_name* @hash_find_n(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @skip_whitespace(i8*) #1

declare dso_local i32 @arm_reg_parse(i8**, i32) #1

declare dso_local i64 @my_get_expression(i32*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
