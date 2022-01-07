; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mep.c_mep_check_for_disabled_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mep.c_mep_check_for_disabled_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@mep_check_for_disabled_registers.initted = internal global i32 0, align 4
@mep_check_for_disabled_registers.has_mul_div = internal global i32 0, align 4
@mep_check_for_disabled_registers.has_cop = internal global i32 0, align 4
@mep_check_for_disabled_registers.has_debug = internal global i32 0, align 4
@allow_disabled_registers = common dso_local global i64 0, align 8
@target_big_endian = common dso_local global i64 0, align 8
@MEP_OMASK = common dso_local global i32 0, align 4
@CGEN_INSN_OPTIONAL_MUL_INSN = common dso_local global i32 0, align 4
@CGEN_INSN_OPTIONAL_DIV_INSN = common dso_local global i32 0, align 4
@CGEN_INSN_OPTIONAL_DEBUG_INSN = common dso_local global i32 0, align 4
@CGEN_INSN_OPTIONAL_CP_INSN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"$hi and $lo are disabled when MUL and DIV are off\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"$mb0, $me0, $mb1, and $me1 are disabled when COP is off\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"$dbg and $depc are disabled when DEBUG is off\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @mep_check_for_disabled_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mep_check_for_disabled_registers(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load i64, i64* @allow_disabled_registers, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %104

8:                                                ; preds = %1
  %9 = load i64, i64* @target_big_endian, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, 256
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %17, %22
  store i32 %23, i32* %3, align 4
  br label %37

24:                                               ; preds = %8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 256
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %30, %35
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %24, %11
  %38 = load i32, i32* %3, align 4
  %39 = and i32 %38, -4082
  %40 = icmp eq i32 %39, 28680
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %3, align 4
  %43 = and i32 %42, -4082
  %44 = icmp eq i32 %43, 28682
  br i1 %44, label %45, label %104

45:                                               ; preds = %41, %37
  %46 = load i32, i32* @mep_check_for_disabled_registers.initted, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %76, label %48

48:                                               ; preds = %45
  store i32 1, i32* @mep_check_for_disabled_registers.initted, align 4
  %49 = load i32, i32* @MEP_OMASK, align 4
  %50 = load i32, i32* @CGEN_INSN_OPTIONAL_MUL_INSN, align 4
  %51 = shl i32 1, %50
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @MEP_OMASK, align 4
  %56 = load i32, i32* @CGEN_INSN_OPTIONAL_DIV_INSN, align 4
  %57 = shl i32 1, %56
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54, %48
  store i32 1, i32* @mep_check_for_disabled_registers.has_mul_div, align 4
  br label %61

61:                                               ; preds = %60, %54
  %62 = load i32, i32* @MEP_OMASK, align 4
  %63 = load i32, i32* @CGEN_INSN_OPTIONAL_DEBUG_INSN, align 4
  %64 = shl i32 1, %63
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 1, i32* @mep_check_for_disabled_registers.has_debug, align 4
  br label %68

68:                                               ; preds = %67, %61
  %69 = load i32, i32* @MEP_OMASK, align 4
  %70 = load i32, i32* @CGEN_INSN_OPTIONAL_CP_INSN, align 4
  %71 = shl i32 1, %70
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 1, i32* @mep_check_for_disabled_registers.has_cop, align 4
  br label %75

75:                                               ; preds = %74, %68
  br label %76

76:                                               ; preds = %75, %45
  %77 = load i32, i32* %3, align 4
  %78 = and i32 %77, 240
  %79 = lshr i32 %78, 4
  %80 = load i32, i32* %3, align 4
  %81 = and i32 %80, 1
  %82 = shl i32 %81, 4
  %83 = or i32 %79, %82
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  switch i32 %84, label %103 [
    i32 7, label %85
    i32 8, label %85
    i32 12, label %91
    i32 13, label %91
    i32 14, label %91
    i32 15, label %91
    i32 24, label %97
    i32 25, label %97
  ]

85:                                               ; preds = %76, %76
  %86 = load i32, i32* @mep_check_for_disabled_registers.has_mul_div, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = call i32 @as_bad(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %85
  br label %103

91:                                               ; preds = %76, %76, %76, %76
  %92 = load i32, i32* @mep_check_for_disabled_registers.has_cop, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = call i32 @as_bad(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %91
  br label %103

97:                                               ; preds = %76, %76
  %98 = load i32, i32* @mep_check_for_disabled_registers.has_debug, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = call i32 @as_bad(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %97
  br label %103

103:                                              ; preds = %76, %102, %96, %90
  br label %104

104:                                              ; preds = %7, %103, %41
  ret void
}

declare dso_local i32 @as_bad(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
