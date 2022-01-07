; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_nonmemory_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_nonmemory_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i64 0, align 8
@MODE_INT = common dso_local global i64 0, align 8
@MODE_PARTIAL_INT = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@flag_pic = common dso_local global i32 0, align 4
@SUBREG = common dso_local global i64 0, align 8
@reload_completed = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@NO_REGS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nonmemory_operand(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @CONSTANT_P(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %80

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @GET_MODE(i32 %10)
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* @VOIDmode, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = load i64, i64* @VOIDmode, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @GET_MODE_CLASS(i32 %21)
  %23 = load i64, i64* @MODE_INT, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @GET_MODE_CLASS(i32 %26)
  %28 = load i64, i64* @MODE_PARTIAL_INT, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %131

31:                                               ; preds = %25, %20, %15, %9
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @GET_CODE(i32 %32)
  %34 = load i64, i64* @CONST_INT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = load i64, i64* @VOIDmode, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = call i64 @INTVAL(i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @trunc_int_for_mode(i64 %43, i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = call i64 @INTVAL(i32 %46)
  %48 = icmp ne i64 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %131

50:                                               ; preds = %41, %36, %31
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @GET_MODE(i32 %51)
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* @VOIDmode, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %66, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @GET_MODE(i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %5, align 4
  %63 = zext i32 %62 to i64
  %64 = load i64, i64* @VOIDmode, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %61, %56, %50
  %67 = load i32, i32* @flag_pic, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* %4, align 4
  %71 = call i64 @LEGITIMATE_PIC_OPERAND_P(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69, %66
  %74 = load i32, i32* %4, align 4
  %75 = call i64 @LEGITIMATE_CONSTANT_P(i32 %74)
  %76 = icmp ne i64 %75, 0
  br label %77

77:                                               ; preds = %73, %69, %61
  %78 = phi i1 [ false, %69 ], [ false, %61 ], [ %76, %73 ]
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %3, align 4
  br label %131

80:                                               ; preds = %2
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @GET_MODE(i32 %81)
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i32, i32* %5, align 4
  %87 = zext i32 %86 to i64
  %88 = load i64, i64* @VOIDmode, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %131

91:                                               ; preds = %85, %80
  %92 = load i32, i32* %4, align 4
  %93 = call i64 @GET_CODE(i32 %92)
  %94 = load i64, i64* @SUBREG, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %91
  %97 = load i32, i32* @reload_completed, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @SUBREG_REG(i32 %100)
  %102 = call i64 @MEM_P(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @general_operand(i32 %105, i32 %106)
  store i32 %107, i32* %3, align 4
  br label %131

108:                                              ; preds = %99, %96
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @SUBREG_REG(i32 %109)
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %108, %91
  %112 = load i32, i32* %4, align 4
  %113 = call i64 @REG_P(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %111
  %116 = load i32, i32* %4, align 4
  %117 = call i64 @REGNO(i32 %116)
  %118 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %119 = icmp sge i64 %117, %118
  br i1 %119, label %126, label %120

120:                                              ; preds = %115
  %121 = load i32, i32* %4, align 4
  %122 = call i64 @REGNO(i32 %121)
  %123 = call i64 @REGNO_REG_CLASS(i64 %122)
  %124 = load i64, i64* @NO_REGS, align 8
  %125 = icmp ne i64 %123, %124
  br label %126

126:                                              ; preds = %120, %115
  %127 = phi i1 [ true, %115 ], [ %125, %120 ]
  br label %128

128:                                              ; preds = %126, %111
  %129 = phi i1 [ false, %111 ], [ %127, %126 ]
  %130 = zext i1 %129 to i32
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %128, %104, %90, %77, %49, %30
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i64 @CONSTANT_P(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @trunc_int_for_mode(i64, i32) #1

declare dso_local i64 @INTVAL(i32) #1

declare dso_local i64 @LEGITIMATE_PIC_OPERAND_P(i32) #1

declare dso_local i64 @LEGITIMATE_CONSTANT_P(i32) #1

declare dso_local i64 @MEM_P(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @general_operand(i32, i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i64 @REGNO_REG_CLASS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
