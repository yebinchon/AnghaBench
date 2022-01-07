; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_exp_ldst_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_exp_ldst_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, i32* }

@_SIMM16_LA = common dso_local global i32 0, align 4
@_VALUE_HI16 = common dso_local global i32 0, align 4
@_VALUE_LO16 = common dso_local global i32 0, align 4
@_IMM16 = common dso_local global i32 0, align 4
@_IMM15 = common dso_local global i32 0, align 4
@_IMM14 = common dso_local global i32 0, align 4
@_IMM4 = common dso_local global i32 0, align 4
@_IMM5 = common dso_local global i32 0, align 4
@_IMM8 = common dso_local global i32 0, align 4
@_IMM5_RSHIFT_1 = common dso_local global i32 0, align 4
@_IMM5_RSHIFT_2 = common dso_local global i32 0, align 4
@_SIMM14_NEG = common dso_local global i32 0, align 4
@_IMM10_RSHIFT_2 = common dso_local global i32 0, align 4
@inst = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@FAIL = common dso_local global i64 0, align 8
@O_constant = common dso_local global i64 0, align 8
@err_msg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"invalid constant: %d bit expression not in range %d..%d\00", align 1
@score_df_range = common dso_local global %struct.TYPE_6__* null, align 8
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32, i32)* @exp_ldst_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exp_ldst_offset(i8** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 48
  br i1 %15, label %16, label %77

16:                                               ; preds = %3
  %17 = load i8*, i8** %8, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 120
  br i1 %21, label %22, label %77

22:                                               ; preds = %16
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @_SIMM16_LA, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %77

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @_VALUE_HI16, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %77

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @_VALUE_LO16, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %77

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @_IMM16, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %77

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @_IMM15, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %77

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @_IMM14, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %77

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @_IMM4, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %77

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @_IMM5, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @_IMM8, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @_IMM5_RSHIFT_1, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @_IMM5_RSHIFT_2, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @_SIMM14_NEG, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @_IMM10_RSHIFT_2, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32, i32* %7, align 4
  %76 = add i32 %75, 24
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %74, %70, %66, %62, %58, %54, %50, %46, %42, %38, %34, %30, %26, %22, %16, %3
  %78 = load i8**, i8*** %5, align 8
  %79 = call i32 @my_get_expression(%struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1, i32 1), i8** %78)
  %80 = load i64, i64* @FAIL, align 8
  %81 = trunc i64 %80 to i32
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i64, i64* @FAIL, align 8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %4, align 4
  br label %220

86:                                               ; preds = %77
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1, i32 1, i32 0), align 8
  %88 = load i64, i64* @O_constant, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %217

90:                                               ; preds = %86
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1, i32 1, i32 1), align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @validate_immediate_align(i32 %91, i32 %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i64, i64* @FAIL, align 8
  %96 = trunc i64 %95 to i32
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load i64, i64* @FAIL, align 8
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %4, align 4
  br label %220

101:                                              ; preds = %90
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1, i32 1, i32 1), align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @validate_immediate(i32 %102, i32 %103, i32 0)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i64, i64* @FAIL, align 8
  %107 = trunc i64 %106 to i32
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %171

109:                                              ; preds = %101
  %110 = load i32, i32* %7, align 4
  %111 = icmp ult i32 %110, 30
  br i1 %111, label %112, label %138

112:                                              ; preds = %109
  %113 = load i32, i32* @err_msg, align 4
  %114 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** @score_df_range, align 8
  %116 = load i32, i32* %7, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** @score_df_range, align 8
  %122 = load i32, i32* %7, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** @score_df_range, align 8
  %130 = load i32, i32* %7, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @sprintf(i32 %113, i8* %114, i32 %120, i32 %128, i32 %136)
  br label %167

138:                                              ; preds = %109
  %139 = load i32, i32* @err_msg, align 4
  %140 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** @score_df_range, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sub i32 %142, 24
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** @score_df_range, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sub i32 %149, 24
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** @score_df_range, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sub i32 %158, 24
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @sprintf(i32 %139, i8* %140, i32 %147, i32 %156, i32 %165)
  br label %167

167:                                              ; preds = %138, %112
  %168 = load i32, i32* @err_msg, align 4
  store i32 %168, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %169 = load i64, i64* @FAIL, align 8
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %4, align 4
  br label %220

171:                                              ; preds = %101
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* @_IMM5_RSHIFT_1, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = load i32, i32* %9, align 4
  %177 = ashr i32 %176, 1
  store i32 %177, i32* %9, align 4
  br label %190

178:                                              ; preds = %171
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* @_IMM5_RSHIFT_2, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %186, label %182

182:                                              ; preds = %178
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* @_IMM10_RSHIFT_2, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %182, %178
  %187 = load i32, i32* %9, align 4
  %188 = ashr i32 %187, 2
  store i32 %188, i32* %9, align 4
  br label %189

189:                                              ; preds = %186, %182
  br label %190

190:                                              ; preds = %189, %175
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** @score_df_range, align 8
  %192 = load i32, i32* %7, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %211

200:                                              ; preds = %190
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** @score_df_range, align 8
  %202 = load i32, i32* %7, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = shl i32 1, %206
  %208 = sub nsw i32 %207, 1
  %209 = load i32, i32* %9, align 4
  %210 = and i32 %209, %208
  store i32 %210, i32* %9, align 4
  br label %211

211:                                              ; preds = %200, %190
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* %6, align 4
  %214 = shl i32 %212, %213
  %215 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %216 = or i32 %215, %214
  store i32 %216, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  br label %218

217:                                              ; preds = %86
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1, i32 0), align 8
  br label %218

218:                                              ; preds = %217, %211
  %219 = load i32, i32* @SUCCESS, align 4
  store i32 %219, i32* %4, align 4
  br label %220

220:                                              ; preds = %218, %167, %98, %83
  %221 = load i32, i32* %4, align 4
  ret i32 %221
}

declare dso_local i32 @my_get_expression(%struct.TYPE_7__*, i8**) #1

declare dso_local i32 @validate_immediate_align(i32, i32) #1

declare dso_local i32 @validate_immediate(i32, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
