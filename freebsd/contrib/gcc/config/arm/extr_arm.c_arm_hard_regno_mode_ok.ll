; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_hard_regno_mode_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_hard_regno_mode_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODE_CC = common dso_local global i64 0, align 8
@CC_REGNUM = common dso_local global i32 0, align 4
@TARGET_HARD_FLOAT = common dso_local global i64 0, align 8
@TARGET_VFP = common dso_local global i64 0, align 8
@VFPCC_REGNUM = common dso_local global i32 0, align 4
@TARGET_THUMB = common dso_local global i64 0, align 8
@LAST_LO_REGNUM = common dso_local global i32 0, align 4
@TARGET_MAVERICK = common dso_local global i64 0, align 8
@MODE_FLOAT = common dso_local global i64 0, align 8
@DImode = common dso_local global i32 0, align 4
@SFmode = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@DFmode = common dso_local global i32 0, align 4
@FIRST_VFP_REGNUM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TARGET_REALLY_IWMMXT = common dso_local global i64 0, align 8
@LAST_ARM_REGNUM = common dso_local global i32 0, align 4
@TARGET_LDRD = common dso_local global i64 0, align 8
@FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4
@ARG_POINTER_REGNUM = common dso_local global i32 0, align 4
@MODE_INT = common dso_local global i64 0, align 8
@TARGET_FPA = common dso_local global i64 0, align 8
@FIRST_FPA_REGNUM = common dso_local global i32 0, align 4
@LAST_FPA_REGNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm_hard_regno_mode_ok(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @GET_MODE_CLASS(i32 %6)
  %8 = load i64, i64* @MODE_CC, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @CC_REGNUM, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = load i64, i64* @TARGET_HARD_FLOAT, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i64, i64* @TARGET_VFP, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @VFPCC_REGNUM, align 4
  %23 = icmp eq i32 %21, %22
  br label %24

24:                                               ; preds = %20, %17, %14
  %25 = phi i1 [ false, %17 ], [ false, %14 ], [ %23, %20 ]
  br label %26

26:                                               ; preds = %24, %10
  %27 = phi i1 [ true, %10 ], [ %25, %24 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %173

29:                                               ; preds = %2
  %30 = load i64, i64* @TARGET_THUMB, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @ARM_NUM_REGS(i32 %33)
  %35 = icmp slt i32 %34, 2
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @LAST_LO_REGNUM, align 4
  %39 = icmp ult i32 %37, %38
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i1 [ true, %32 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %173

43:                                               ; preds = %29
  %44 = load i64, i64* @TARGET_HARD_FLOAT, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %43
  %47 = load i64, i64* @TARGET_MAVERICK, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @IS_CIRRUS_REGNUM(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load i32, i32* %5, align 4
  %55 = call i64 @GET_MODE_CLASS(i32 %54)
  %56 = load i64, i64* @MODE_FLOAT, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @DImode, align 4
  %61 = icmp eq i32 %59, %60
  br label %62

62:                                               ; preds = %58, %53
  %63 = phi i1 [ true, %53 ], [ %61, %58 ]
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %3, align 4
  br label %173

65:                                               ; preds = %49, %46, %43
  %66 = load i64, i64* @TARGET_HARD_FLOAT, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %98

68:                                               ; preds = %65
  %69 = load i64, i64* @TARGET_VFP, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %68
  %72 = load i32, i32* %4, align 4
  %73 = call i64 @IS_VFP_REGNUM(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %71
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @SFmode, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @SImode, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79, %75
  %84 = load i32, i32* @TRUE, align 4
  store i32 %84, i32* %3, align 4
  br label %173

85:                                               ; preds = %79
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @DFmode, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @FIRST_VFP_REGNUM, align 4
  %92 = sub i32 %90, %91
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %3, align 4
  br label %173

96:                                               ; preds = %85
  %97 = load i32, i32* @FALSE, align 4
  store i32 %97, i32* %3, align 4
  br label %173

98:                                               ; preds = %71, %68, %65
  %99 = load i64, i64* @TARGET_REALLY_IWMMXT, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %118

101:                                              ; preds = %98
  %102 = load i32, i32* %4, align 4
  %103 = call i64 @IS_IWMMXT_GR_REGNUM(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @SImode, align 4
  %108 = icmp eq i32 %106, %107
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %3, align 4
  br label %173

110:                                              ; preds = %101
  %111 = load i32, i32* %4, align 4
  %112 = call i64 @IS_IWMMXT_REGNUM(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @VALID_IWMMXT_REG_MODE(i32 %115)
  store i32 %116, i32* %3, align 4
  br label %173

117:                                              ; preds = %110
  br label %118

118:                                              ; preds = %117, %98
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @LAST_ARM_REGNUM, align 4
  %121 = icmp ule i32 %119, %120
  br i1 %121, label %122, label %137

122:                                              ; preds = %118
  %123 = load i64, i64* @TARGET_LDRD, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %122
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @GET_MODE_SIZE(i32 %126)
  %128 = icmp sgt i32 %127, 4
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load i32, i32* %4, align 4
  %131 = and i32 %130, 1
  %132 = icmp ne i32 %131, 0
  br label %133

133:                                              ; preds = %129, %125, %122
  %134 = phi i1 [ false, %125 ], [ false, %122 ], [ %132, %129 ]
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  store i32 %136, i32* %3, align 4
  br label %173

137:                                              ; preds = %118
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* @FRAME_POINTER_REGNUM, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* @ARG_POINTER_REGNUM, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %141, %137
  %146 = load i32, i32* %5, align 4
  %147 = call i64 @GET_MODE_CLASS(i32 %146)
  %148 = load i64, i64* @MODE_INT, align 8
  %149 = icmp eq i64 %147, %148
  %150 = zext i1 %149 to i32
  store i32 %150, i32* %3, align 4
  br label %173

151:                                              ; preds = %141
  %152 = load i64, i64* @TARGET_HARD_FLOAT, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %170

154:                                              ; preds = %151
  %155 = load i64, i64* @TARGET_FPA, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %170

157:                                              ; preds = %154
  %158 = load i32, i32* %5, align 4
  %159 = call i64 @GET_MODE_CLASS(i32 %158)
  %160 = load i64, i64* @MODE_FLOAT, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %170

162:                                              ; preds = %157
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* @FIRST_FPA_REGNUM, align 4
  %165 = icmp uge i32 %163, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %162
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* @LAST_FPA_REGNUM, align 4
  %169 = icmp ule i32 %167, %168
  br label %170

170:                                              ; preds = %166, %162, %157, %154, %151
  %171 = phi i1 [ false, %162 ], [ false, %157 ], [ false, %154 ], [ false, %151 ], [ %169, %166 ]
  %172 = zext i1 %171 to i32
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %170, %145, %133, %114, %105, %96, %89, %83, %62, %40, %26
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @ARM_NUM_REGS(i32) #1

declare dso_local i64 @IS_CIRRUS_REGNUM(i32) #1

declare dso_local i64 @IS_VFP_REGNUM(i32) #1

declare dso_local i64 @IS_IWMMXT_GR_REGNUM(i32) #1

declare dso_local i64 @IS_IWMMXT_REGNUM(i32) #1

declare dso_local i32 @VALID_IWMMXT_REG_MODE(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
