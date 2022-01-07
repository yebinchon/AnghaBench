; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_general_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_general_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@MODE_INT = common dso_local global i64 0, align 8
@MODE_PARTIAL_INT = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@flag_pic = common dso_local global i32 0, align 4
@SUBREG = common dso_local global i32 0, align 4
@reload_completed = common dso_local global i32 0, align 4
@REG = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@NO_REGS = common dso_local global i64 0, align 8
@MEM = common dso_local global i32 0, align 4
@volatile_ok = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @general_operand(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @GET_CODE(i32 %9)
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @VOIDmode, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @GET_MODE(i32 %16)
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %15, %2
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @GET_MODE(i32 %19)
  %21 = load i32, i32* @VOIDmode, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @VOIDmode, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @GET_MODE_CLASS(i32 %28)
  %30 = load i64, i64* @MODE_INT, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @GET_MODE_CLASS(i32 %33)
  %35 = load i64, i64* @MODE_PARTIAL_INT, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %172

38:                                               ; preds = %32, %27, %23, %18
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @GET_CODE(i32 %39)
  %41 = load i64, i64* @CONST_INT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @VOIDmode, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = call i64 @INTVAL(i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @trunc_int_for_mode(i64 %49, i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = call i64 @INTVAL(i32 %52)
  %54 = icmp ne i64 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %172

56:                                               ; preds = %47, %43, %38
  %57 = load i32, i32* %4, align 4
  %58 = call i64 @CONSTANT_P(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %88

60:                                               ; preds = %56
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @GET_MODE(i32 %61)
  %63 = load i32, i32* @VOIDmode, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %74, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @GET_MODE(i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @VOIDmode, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %70, %65, %60
  %75 = load i32, i32* @flag_pic, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* %4, align 4
  %79 = call i64 @LEGITIMATE_PIC_OPERAND_P(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77, %74
  %82 = load i32, i32* %4, align 4
  %83 = call i64 @LEGITIMATE_CONSTANT_P(i32 %82)
  %84 = icmp ne i64 %83, 0
  br label %85

85:                                               ; preds = %81, %77, %70
  %86 = phi i1 [ false, %77 ], [ false, %70 ], [ %84, %81 ]
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %3, align 4
  br label %172

88:                                               ; preds = %56
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @GET_MODE(i32 %89)
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 0, i32* %3, align 4
  br label %172

94:                                               ; preds = %88
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @SUBREG, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %131

98:                                               ; preds = %94
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @SUBREG_REG(i32 %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* @reload_completed, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %112, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* %4, align 4
  %105 = call i64 @SUBREG_BYTE(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load i32, i32* %7, align 4
  %109 = call i64 @MEM_P(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  store i32 0, i32* %3, align 4
  br label %172

112:                                              ; preds = %107, %103, %98
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @GET_MODE(i32 %113)
  %115 = call i64 @SCALAR_FLOAT_MODE_P(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %112
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @GET_MODE(i32 %118)
  %120 = call i64 @GET_MODE_SIZE(i32 %119)
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @GET_MODE(i32 %121)
  %123 = call i64 @GET_MODE_SIZE(i32 %122)
  %124 = icmp sgt i64 %120, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %117
  store i32 0, i32* %3, align 4
  br label %172

126:                                              ; preds = %117, %112
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = call i64 @GET_CODE(i32 %128)
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %126, %94
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @REG, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %149

135:                                              ; preds = %131
  %136 = load i32, i32* %4, align 4
  %137 = call i64 @REGNO(i32 %136)
  %138 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %139 = icmp sge i64 %137, %138
  br i1 %139, label %146, label %140

140:                                              ; preds = %135
  %141 = load i32, i32* %4, align 4
  %142 = call i64 @REGNO(i32 %141)
  %143 = call i64 @REGNO_REG_CLASS(i64 %142)
  %144 = load i64, i64* @NO_REGS, align 8
  %145 = icmp ne i64 %143, %144
  br label %146

146:                                              ; preds = %140, %135
  %147 = phi i1 [ true, %135 ], [ %145, %140 ]
  %148 = zext i1 %147 to i32
  store i32 %148, i32* %3, align 4
  br label %172

149:                                              ; preds = %131
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @MEM, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %171

153:                                              ; preds = %149
  %154 = load i32, i32* %4, align 4
  %155 = call i32 @XEXP(i32 %154, i32 0)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* @volatile_ok, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %153
  %159 = load i32, i32* %4, align 4
  %160 = call i64 @MEM_VOLATILE_P(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  store i32 0, i32* %3, align 4
  br label %172

163:                                              ; preds = %158, %153
  %164 = load i32, i32* %4, align 4
  %165 = call i32 @GET_MODE(i32 %164)
  %166 = load i32, i32* %8, align 4
  %167 = call i64 @memory_address_p(i32 %165, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %163
  store i32 1, i32* %3, align 4
  br label %172

170:                                              ; preds = %163
  br label %171

171:                                              ; preds = %170, %149
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %171, %169, %162, %146, %125, %111, %93, %85, %55, %37
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i64 @trunc_int_for_mode(i64, i32) #1

declare dso_local i64 @INTVAL(i32) #1

declare dso_local i64 @CONSTANT_P(i32) #1

declare dso_local i64 @LEGITIMATE_PIC_OPERAND_P(i32) #1

declare dso_local i64 @LEGITIMATE_CONSTANT_P(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i64 @SUBREG_BYTE(i32) #1

declare dso_local i64 @MEM_P(i32) #1

declare dso_local i64 @SCALAR_FLOAT_MODE_P(i32) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i64 @REGNO_REG_CLASS(i64) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @MEM_VOLATILE_P(i32) #1

declare dso_local i64 @memory_address_p(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
