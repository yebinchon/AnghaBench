; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_output_cbranch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_output_cbranch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@output_cbranch.string = internal global [64 x i8] zeroinitializer, align 16
@CR0_REGNO = common dso_local global i32 0, align 4
@CCFPmode = common dso_local global i32 0, align 4
@TARGET_E500 = common dso_local global i64 0, align 8
@TARGET_FPRS = common dso_local global i32 0, align 4
@TARGET_HARD_FLOAT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"gt\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"lt\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"nu\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"nl\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"ng\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@REG_BR_PROB = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i64 0, align 8
@REG_BR_PROB_BASE = common dso_local global i32 0, align 4
@rs6000_always_hint = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"{b%sr|b%slr%s} \00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"{b%s|b%s%s} \00", align 1
@reg_names = common dso_local global i8** null, align 8
@.str.15 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c",$+8\0A\09b %s\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c",%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @output_cbranch(i64 %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @GET_CODE(i64 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @XEXP(i64 %22, i32 0)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @GET_MODE(i64 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i64, i64* %10, align 8
  %27 = call i32 @REGNO(i64 %26)
  %28 = load i32, i32* @CR0_REGNO, align 4
  %29 = sub nsw i32 %27, %28
  store i32 %29, i32* %12, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %4
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @get_attr_length(i64 %33)
  %35 = icmp eq i32 %34, 8
  br label %36

36:                                               ; preds = %32, %4
  %37 = phi i1 [ false, %4 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %13, align 4
  %41 = xor i32 %39, %40
  store i32 %41, i32* %14, align 4
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @output_cbranch.string, i64 0, i64 0), i8** %15, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @validate_condition_mode(i32 %42, i32 %43)
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %36
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @CCFPmode, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @reverse_condition_maybe_unordered(i32 %52)
  store i32 %53, i32* %9, align 4
  br label %57

54:                                               ; preds = %47
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @reverse_condition(i32 %55)
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %57, %36
  %59 = load i64, i64* @TARGET_E500, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %58
  %62 = load i32, i32* @TARGET_FPRS, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %61
  %65 = load i64, i64* @TARGET_HARD_FLOAT, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @CCFPmode, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load i32, i32* %9, align 4
  switch i32 %72, label %75 [
    i32 145, label %73
    i32 135, label %74
  ]

73:                                               ; preds = %71
  store i32 142, i32* %9, align 4
  br label %77

74:                                               ; preds = %71
  store i32 130, i32* %9, align 4
  br label %77

75:                                               ; preds = %71
  %76 = call i32 (...) @gcc_unreachable()
  br label %77

77:                                               ; preds = %75, %74, %73
  br label %78

78:                                               ; preds = %77, %67, %64, %61, %58
  %79 = load i32, i32* %9, align 4
  switch i32 %79, label %90 [
    i32 135, label %80
    i32 137, label %80
    i32 145, label %81
    i32 133, label %81
    i32 144, label %82
    i32 143, label %82
    i32 142, label %83
    i32 141, label %83
    i32 131, label %83
    i32 140, label %84
    i32 139, label %84
    i32 138, label %85
    i32 136, label %85
    i32 129, label %85
    i32 128, label %86
    i32 134, label %87
    i32 132, label %88
    i32 130, label %89
  ]

80:                                               ; preds = %78, %78
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  br label %92

81:                                               ; preds = %78, %78
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  br label %92

82:                                               ; preds = %78, %78
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %16, align 8
  br label %92

83:                                               ; preds = %78, %78, %78
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %16, align 8
  br label %92

84:                                               ; preds = %78, %78
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %16, align 8
  br label %92

85:                                               ; preds = %78, %78, %78
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %16, align 8
  br label %92

86:                                               ; preds = %78
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %16, align 8
  br label %92

87:                                               ; preds = %78
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %16, align 8
  br label %92

88:                                               ; preds = %78
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** %16, align 8
  br label %92

89:                                               ; preds = %78
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8** %16, align 8
  br label %92

90:                                               ; preds = %78
  %91 = call i32 (...) @gcc_unreachable()
  br label %92

92:                                               ; preds = %90, %89, %88, %87, %86, %85, %84, %83, %82, %81, %80
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8** %17, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load i32, i32* @REG_BR_PROB, align 4
  %95 = load i64, i64* @NULL_RTX, align 8
  %96 = call i64 @find_reg_note(i64 %93, i32 %94, i64 %95)
  store i64 %96, i64* %18, align 8
  %97 = load i64, i64* %18, align 8
  %98 = load i64, i64* @NULL_RTX, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %137

100:                                              ; preds = %92
  %101 = load i64, i64* %18, align 8
  %102 = call i64 @XEXP(i64 %101, i32 0)
  %103 = call i32 @INTVAL(i64 %102)
  %104 = load i32, i32* @REG_BR_PROB_BASE, align 4
  %105 = sdiv i32 %104, 2
  %106 = sub nsw i32 %103, %105
  store i32 %106, i32* %19, align 4
  %107 = load i64, i64* @rs6000_always_hint, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %120, label %109

109:                                              ; preds = %100
  %110 = load i32, i32* %19, align 4
  %111 = call i32 @abs(i32 %110) #3
  %112 = load i32, i32* @REG_BR_PROB_BASE, align 4
  %113 = sdiv i32 %112, 100
  %114 = mul nsw i32 %113, 48
  %115 = icmp sgt i32 %111, %114
  br i1 %115, label %116, label %136

116:                                              ; preds = %109
  %117 = load i64, i64* %18, align 8
  %118 = call i64 @br_prob_note_reliable_p(i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %116, %100
  %121 = load i32, i32* %19, align 4
  %122 = call i32 @abs(i32 %121) #3
  %123 = load i32, i32* @REG_BR_PROB_BASE, align 4
  %124 = sdiv i32 %123, 20
  %125 = icmp sgt i32 %122, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %120
  %127 = load i32, i32* %19, align 4
  %128 = icmp sgt i32 %127, 0
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* %13, align 4
  %131 = xor i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %126
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8** %17, align 8
  br label %135

134:                                              ; preds = %126, %120
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8** %17, align 8
  br label %135

135:                                              ; preds = %134, %133
  br label %136

136:                                              ; preds = %135, %116, %109
  br label %137

137:                                              ; preds = %136, %92
  %138 = load i8*, i8** %6, align 8
  %139 = icmp eq i8* %138, null
  br i1 %139, label %140, label %149

140:                                              ; preds = %137
  %141 = load i8*, i8** %15, align 8
  %142 = load i8*, i8** %16, align 8
  %143 = load i8*, i8** %16, align 8
  %144 = load i8*, i8** %17, align 8
  %145 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %141, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* %142, i8* %143, i8* %144)
  %146 = load i8*, i8** %15, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  store i8* %148, i8** %15, align 8
  br label %158

149:                                              ; preds = %137
  %150 = load i8*, i8** %15, align 8
  %151 = load i8*, i8** %16, align 8
  %152 = load i8*, i8** %16, align 8
  %153 = load i8*, i8** %17, align 8
  %154 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %150, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* %151, i8* %152, i8* %153)
  %155 = load i8*, i8** %15, align 8
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds i8, i8* %155, i64 %156
  store i8* %157, i8** %15, align 8
  br label %158

158:                                              ; preds = %149, %140
  %159 = load i8**, i8*** @reg_names, align 8
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* @CR0_REGNO, align 4
  %162 = add nsw i32 %160, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %159, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 0
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 37
  br i1 %169, label %170, label %173

170:                                              ; preds = %158
  %171 = load i8*, i8** %15, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %15, align 8
  store i8 37, i8* %171, align 1
  br label %173

173:                                              ; preds = %170, %158
  %174 = load i8*, i8** %15, align 8
  %175 = load i8**, i8*** @reg_names, align 8
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* @CR0_REGNO, align 4
  %178 = add nsw i32 %176, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8*, i8** %175, i64 %179
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %174, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %181)
  %183 = load i8*, i8** %15, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i8, i8* %183, i64 %184
  store i8* %185, i8** %15, align 8
  %186 = load i8*, i8** %6, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %206

188:                                              ; preds = %173
  %189 = load i32, i32* %13, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %188
  %192 = load i8*, i8** %15, align 8
  %193 = load i8*, i8** %6, align 8
  %194 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %192, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8* %193)
  %195 = load i8*, i8** %15, align 8
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i8, i8* %195, i64 %196
  store i8* %197, i8** %15, align 8
  br label %205

198:                                              ; preds = %188
  %199 = load i8*, i8** %15, align 8
  %200 = load i8*, i8** %6, align 8
  %201 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %199, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* %200)
  %202 = load i8*, i8** %15, align 8
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds i8, i8* %202, i64 %203
  store i8* %204, i8** %15, align 8
  br label %205

205:                                              ; preds = %198, %191
  br label %206

206:                                              ; preds = %205, %173
  ret i8* getelementptr inbounds ([64 x i8], [64 x i8]* @output_cbranch.string, i64 0, i64 0)
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i32 @get_attr_length(i64) #1

declare dso_local i32 @validate_condition_mode(i32, i32) #1

declare dso_local i32 @reverse_condition_maybe_unordered(i32) #1

declare dso_local i32 @reverse_condition(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @find_reg_note(i64, i32, i64) #1

declare dso_local i32 @INTVAL(i64) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i64 @br_prob_note_reliable_p(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
