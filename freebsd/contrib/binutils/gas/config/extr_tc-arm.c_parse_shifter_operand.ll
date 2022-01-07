; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_shifter_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_shifter_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__, i8*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@REG_TYPE_RN = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@inst = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@O_constant = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@NO_SHIFT_RESTRICT = common dso_local global i32 0, align 4
@GE_IMM_PREFIX = common dso_local global i32 0, align 4
@GE_NO_PREFIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"constant expression expected\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid rotation\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"invalid constant\00", align 1
@BFD_RELOC_ARM_IMMEDIATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32)* @parse_shifter_operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_shifter_operand(i8** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__, align 8
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8**, i8*** %4, align 8
  %9 = load i32, i32* @REG_TYPE_RN, align 4
  %10 = call i32 @arm_reg_parse(i8** %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @FAIL, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 2), align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 %14, i32* %19, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 2), align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = load i64, i64* @O_constant, align 8
  store i64 %25, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 2, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 2, i32 1), align 8
  %26 = load i8**, i8*** %4, align 8
  %27 = call i32 @skip_past_comma(i8** %26)
  %28 = load i32, i32* @FAIL, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %13
  %31 = load i32, i32* @SUCCESS, align 4
  store i32 %31, i32* %3, align 4
  br label %104

32:                                               ; preds = %13
  %33 = load i8**, i8*** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @NO_SHIFT_RESTRICT, align 4
  %36 = call i32 @parse_shift(i8** %33, i32 %34, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %104

37:                                               ; preds = %2
  %38 = load i8**, i8*** %4, align 8
  %39 = load i32, i32* @GE_IMM_PREFIX, align 4
  %40 = call i64 @my_get_expression(%struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 2), i8** %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @FAIL, align 4
  store i32 %43, i32* %3, align 4
  br label %104

44:                                               ; preds = %37
  %45 = load i8**, i8*** %4, align 8
  %46 = call i32 @skip_past_comma(i8** %45)
  %47 = load i32, i32* @SUCCESS, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %101

49:                                               ; preds = %44
  %50 = load i8**, i8*** %4, align 8
  %51 = load i32, i32* @GE_NO_PREFIX, align 4
  %52 = call i64 @my_get_expression(%struct.TYPE_8__* %7, i8** %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @FAIL, align 4
  store i32 %55, i32* %3, align 4
  br label %104

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @O_constant, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 2, i32 0), align 8
  %63 = load i64, i64* @O_constant, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61, %56
  %66 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i8* %66, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %67 = load i32, i32* @FAIL, align 4
  store i32 %67, i32* %3, align 4
  br label %104

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %6, align 4
  %75 = icmp sgt i32 %74, 30
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = srem i32 %77, 2
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76, %73, %68
  %81 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i8* %81, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %82 = load i32, i32* @FAIL, align 4
  store i32 %82, i32* %3, align 4
  br label %104

83:                                               ; preds = %76
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 2, i32 1), align 8
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 2, i32 1), align 8
  %88 = icmp sgt i32 %87, 255
  br i1 %88, label %89, label %92

89:                                               ; preds = %86, %83
  %90 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i8* %90, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %91 = load i32, i32* @FAIL, align 4
  store i32 %91, i32* %3, align 4
  br label %104

92:                                               ; preds = %86
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 2, i32 1), align 8
  %94 = load i32, i32* %6, align 4
  %95 = sub nsw i32 32, %94
  %96 = shl i32 %93, %95
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 2, i32 1), align 8
  %98 = load i32, i32* %6, align 4
  %99 = ashr i32 %97, %98
  %100 = or i32 %96, %99
  store i32 %100, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 2, i32 1), align 8
  br label %101

101:                                              ; preds = %92, %44
  %102 = load i32, i32* @BFD_RELOC_ARM_IMMEDIATE, align 4
  store i32 %102, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 0), align 8
  %103 = load i32, i32* @SUCCESS, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %101, %89, %80, %65, %54, %42, %32, %30
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @arm_reg_parse(i8**, i32) #1

declare dso_local i32 @skip_past_comma(i8**) #1

declare dso_local i32 @parse_shift(i8**, i32, i32) #1

declare dso_local i64 @my_get_expression(%struct.TYPE_8__*, i8**, i32) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
