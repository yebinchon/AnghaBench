; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_vfp_reg_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_vfp_reg_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [12 x i8] c"expecting {\00", align 1
@inst = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FAIL = common dso_local global i32 0, align 4
@REG_TYPE_VFS = common dso_local global i32 0, align 4
@REG_TYPE_VFD = common dso_local global i32 0, align 4
@REG_TYPE_NDQ = common dso_local global i32 0, align 4
@cpu_variant = common dso_local global i32 0, align 4
@fpu_vfp_ext_v3 = common dso_local global i32 0, align 4
@thumb_mode = common dso_local global i64 0, align 8
@thumb_arch_used = common dso_local global i32 0, align 4
@arm_arch_used = common dso_local global i32 0, align 4
@reg_expected_msgs = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"register out of range in list\00", align 1
@REG_TYPE_NQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid register list\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"register list not in ascending order\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"register range not in ascending order\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"non-contiguous register range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, i32)* @parse_vfp_reg_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_vfp_reg_list(i8** %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i64 0, i64* %15, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 123
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %27, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %28 = load i32, i32* @FAIL, align 4
  store i32 %28, i32* %4, align 4
  br label %253

29:                                               ; preds = %3
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %8, align 8
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %39 [
    i32 128, label %33
    i32 129, label %35
    i32 130, label %37
  ]

33:                                               ; preds = %29
  %34 = load i32, i32* @REG_TYPE_VFS, align 4
  store i32 %34, i32* %11, align 4
  store i32 32, i32* %12, align 4
  br label %39

35:                                               ; preds = %29
  %36 = load i32, i32* @REG_TYPE_VFD, align 4
  store i32 %36, i32* %11, align 4
  br label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @REG_TYPE_NDQ, align 4
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %29, %37, %35, %33
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 128
  br i1 %41, label %42, label %63

42:                                               ; preds = %39
  %43 = load i32, i32* @cpu_variant, align 4
  %44 = load i32, i32* @fpu_vfp_ext_v3, align 4
  %45 = call i64 @ARM_CPU_HAS_FEATURE(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  store i32 32, i32* %12, align 4
  %48 = load i64, i64* @thumb_mode, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* @thumb_arch_used, align 4
  %52 = load i32, i32* @thumb_arch_used, align 4
  %53 = load i32, i32* @fpu_vfp_ext_v3, align 4
  %54 = call i32 @ARM_MERGE_FEATURE_SETS(i32 %51, i32 %52, i32 %53)
  br label %60

55:                                               ; preds = %47
  %56 = load i32, i32* @arm_arch_used, align 4
  %57 = load i32, i32* @arm_arch_used, align 4
  %58 = load i32, i32* @fpu_vfp_ext_v3, align 4
  %59 = call i32 @ARM_MERGE_FEATURE_SETS(i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %50
  br label %62

61:                                               ; preds = %42
  store i32 16, i32* %12, align 4
  br label %62

62:                                               ; preds = %61, %60
  br label %63

63:                                               ; preds = %62, %39
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %209, %63
  store i32 1, i32* %17, align 4
  store i32 1, i32* %18, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @arm_typed_reg_parse(i8** %8, i32 %66, i32* %11, i32* null)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @FAIL, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load i8**, i8*** @reg_expected_msgs, align 8
  %73 = load i32, i32* %11, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i8* @_(i8* %76)
  %78 = call i32 @first_error(i8* %77)
  %79 = load i32, i32* @FAIL, align 4
  store i32 %79, i32* %4, align 4
  br label %253

80:                                               ; preds = %65
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %86 = call i32 @first_error(i8* %85)
  %87 = load i32, i32* @FAIL, align 4
  store i32 %87, i32* %4, align 4
  br label %253

88:                                               ; preds = %80
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @REG_TYPE_NQ, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 3, i32* %17, align 4
  store i32 2, i32* %18, align 4
  br label %93

93:                                               ; preds = %92, %88
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %97, %93
  %100 = load i64, i64* %15, align 8
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %10, align 4
  %103 = shl i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = and i64 %100, %104
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %109 = call i32 @first_error(i8* %108)
  %110 = load i32, i32* @FAIL, align 4
  store i32 %110, i32* %4, align 4
  br label %253

111:                                              ; preds = %99
  %112 = load i64, i64* %15, align 8
  %113 = load i32, i32* %10, align 4
  %114 = zext i32 %113 to i64
  %115 = lshr i64 %112, %114
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %122 = call i32 @as_tsktsk(i8* %121)
  store i32 1, i32* %14, align 4
  br label %123

123:                                              ; preds = %120, %117, %111
  %124 = load i32, i32* %17, align 4
  %125 = load i32, i32* %10, align 4
  %126 = shl i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = load i64, i64* %15, align 8
  %129 = or i64 %128, %127
  store i64 %129, i64* %15, align 8
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* %13, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %13, align 4
  %133 = load i8*, i8** %8, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 45
  br i1 %136, label %137, label %208

137:                                              ; preds = %123
  %138 = load i8*, i8** %8, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %8, align 8
  %140 = load i32, i32* %11, align 4
  %141 = call i32 @arm_typed_reg_parse(i8** %8, i32 %140, i32* null, i32* null)
  store i32 %141, i32* %19, align 4
  %142 = load i32, i32* @FAIL, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %152

144:                                              ; preds = %137
  %145 = load i8**, i8*** @reg_expected_msgs, align 8
  %146 = load i32, i32* %11, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %145, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = call i8* @gettext(i8* %149)
  store i8* %150, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %151 = load i32, i32* @FAIL, align 4
  store i32 %151, i32* %4, align 4
  br label %253

152:                                              ; preds = %137
  %153 = load i32, i32* %19, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp sge i32 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %158 = call i32 @first_error(i8* %157)
  %159 = load i32, i32* @FAIL, align 4
  store i32 %159, i32* %4, align 4
  br label %253

160:                                              ; preds = %152
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* @REG_TYPE_NQ, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = load i32, i32* %19, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %19, align 4
  br label %167

167:                                              ; preds = %164, %160
  %168 = load i32, i32* %19, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp sle i32 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %167
  %172 = call i8* @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  store i8* %172, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %173 = load i32, i32* @FAIL, align 4
  store i32 %173, i32* %4, align 4
  br label %253

174:                                              ; preds = %167
  %175 = load i32, i32* %18, align 4
  %176 = load i32, i32* %10, align 4
  %177 = add nsw i32 %176, %175
  store i32 %177, i32* %10, align 4
  br label %178

178:                                              ; preds = %203, %174
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %19, align 4
  %181 = icmp sle i32 %179, %180
  br i1 %181, label %182, label %207

182:                                              ; preds = %178
  %183 = load i64, i64* %15, align 8
  %184 = load i32, i32* %17, align 4
  %185 = load i32, i32* %10, align 4
  %186 = shl i32 %184, %185
  %187 = sext i32 %186 to i64
  %188 = and i64 %183, %187
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %182
  %191 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i8* %191, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %192 = load i32, i32* @FAIL, align 4
  store i32 %192, i32* %4, align 4
  br label %253

193:                                              ; preds = %182
  %194 = load i32, i32* %17, align 4
  %195 = load i32, i32* %10, align 4
  %196 = shl i32 %194, %195
  %197 = sext i32 %196 to i64
  %198 = load i64, i64* %15, align 8
  %199 = or i64 %198, %197
  store i64 %199, i64* %15, align 8
  %200 = load i32, i32* %18, align 4
  %201 = load i32, i32* %13, align 4
  %202 = add nsw i32 %201, %200
  store i32 %202, i32* %13, align 4
  br label %203

203:                                              ; preds = %193
  %204 = load i32, i32* %18, align 4
  %205 = load i32, i32* %10, align 4
  %206 = add nsw i32 %205, %204
  store i32 %206, i32* %10, align 4
  br label %178

207:                                              ; preds = %178
  br label %208

208:                                              ; preds = %207, %123
  br label %209

209:                                              ; preds = %208
  %210 = call i32 @skip_past_comma(i8** %8)
  %211 = load i32, i32* @FAIL, align 4
  %212 = icmp ne i32 %210, %211
  br i1 %212, label %65, label %213

213:                                              ; preds = %209
  %214 = load i8*, i8** %8, align 8
  %215 = getelementptr inbounds i8, i8* %214, i32 1
  store i8* %215, i8** %8, align 8
  %216 = load i32, i32* %13, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %222, label %218

218:                                              ; preds = %213
  %219 = load i32, i32* %13, align 4
  %220 = load i32, i32* %12, align 4
  %221 = icmp sgt i32 %219, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %218, %213
  %223 = call i32 (...) @abort() #3
  unreachable

224:                                              ; preds = %218
  %225 = load i32, i32* %9, align 4
  %226 = load i32*, i32** %6, align 8
  store i32 %225, i32* %226, align 4
  %227 = load i32, i32* %9, align 4
  %228 = load i64, i64* %15, align 8
  %229 = zext i32 %227 to i64
  %230 = lshr i64 %228, %229
  store i64 %230, i64* %15, align 8
  store i32 0, i32* %16, align 4
  br label %231

231:                                              ; preds = %246, %224
  %232 = load i32, i32* %16, align 4
  %233 = load i32, i32* %13, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %249

235:                                              ; preds = %231
  %236 = load i64, i64* %15, align 8
  %237 = load i32, i32* %16, align 4
  %238 = shl i32 1, %237
  %239 = zext i32 %238 to i64
  %240 = and i64 %236, %239
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %235
  %243 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  store i8* %243, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %244 = load i32, i32* @FAIL, align 4
  store i32 %244, i32* %4, align 4
  br label %253

245:                                              ; preds = %235
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %16, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %16, align 4
  br label %231

249:                                              ; preds = %231
  %250 = load i8*, i8** %8, align 8
  %251 = load i8**, i8*** %5, align 8
  store i8* %250, i8** %251, align 8
  %252 = load i32, i32* %13, align 4
  store i32 %252, i32* %4, align 4
  br label %253

253:                                              ; preds = %249, %242, %190, %171, %156, %144, %107, %84, %71, %26
  %254 = load i32, i32* %4, align 4
  ret i32 %254
}

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @ARM_CPU_HAS_FEATURE(i32, i32) #1

declare dso_local i32 @ARM_MERGE_FEATURE_SETS(i32, i32, i32) #1

declare dso_local i32 @arm_typed_reg_parse(i8**, i32, i32*, i32*) #1

declare dso_local i32 @first_error(i8*) #1

declare dso_local i32 @as_tsktsk(i8*) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @skip_past_comma(i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
