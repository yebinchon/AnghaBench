; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_i386_index_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_i386_index_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64* }
%struct.TYPE_11__ = type { i64*, i32*, i64, i32, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@current_templates = common dso_local global %struct.TYPE_12__* null, align 8
@CpuSVME = common dso_local global i32 0, align 4
@AnyMem = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"skinit\00", align 1
@Reg32 = common dso_local global i32 0, align 4
@flag_code = common dso_local global i64 0, align 8
@CODE_64BIT = common dso_local global i64 0, align 8
@i = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@ADDR_PREFIX = common dso_local global i64 0, align 8
@Reg64 = common dso_local global i32 0, align 4
@CODE_16BIT = common dso_local global i64 0, align 8
@Reg16 = common dso_local global i32 0, align 4
@Acc = common dso_local global i32 0, align 4
@Disp = common dso_local global i32 0, align 4
@BaseIndex = common dso_local global i32 0, align 4
@RegRex = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"`%s' is not a valid %s bit base/index expression\00", align 1
@flag_code_names = common dso_local global i32* null, align 8
@ADDR_PREFIX_OPCODE = common dso_local global i64 0, align 8
@Disp16 = common dso_local global i32 0, align 4
@Disp32 = common dso_local global i32 0, align 4
@this_operand = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @i386_index_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i386_index_check(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 1, i32* %3, align 4
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current_templates, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CpuSVME, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %100

14:                                               ; preds = %1
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current_templates, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i64 -1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AnyMem, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %100

25:                                               ; preds = %14
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current_templates, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @strcmp(i32 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @Reg32, align 4
  store i32 %34, i32* %4, align 4
  br label %71

35:                                               ; preds = %25
  %36 = load i64, i64* @flag_code, align 8
  %37 = load i64, i64* @CODE_64BIT, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load i64*, i64** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 0), align 8
  %41 = load i64, i64* @ADDR_PREFIX, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @Reg64, align 4
  br label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @Reg32, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  store i32 %50, i32* %4, align 4
  br label %70

51:                                               ; preds = %35
  %52 = load i64, i64* @flag_code, align 8
  %53 = load i64, i64* @CODE_16BIT, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i64*, i64** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 0), align 8
  %57 = load i64, i64* @ADDR_PREFIX, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = xor i32 %55, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %51
  %65 = load i32, i32* @Reg16, align 4
  br label %68

66:                                               ; preds = %51
  %67 = load i32, i32* @Reg32, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %49
  br label %71

71:                                               ; preds = %70, %33
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 5), align 8
  %73 = icmp ne %struct.TYPE_9__* %72, null
  br i1 %73, label %74, label %98

74:                                               ; preds = %71
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 5), align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @Acc, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %74
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 5), align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %4, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %81
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 4), align 8
  %90 = icmp ne %struct.TYPE_10__* %89, null
  br i1 %90, label %98, label %91

91:                                               ; preds = %88
  %92 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 1), align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @Disp, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91, %88, %81, %74, %71
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %91
  br label %248

100:                                              ; preds = %14, %1
  %101 = load i64, i64* @flag_code, align 8
  %102 = load i64, i64* @CODE_64BIT, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %151

104:                                              ; preds = %100
  %105 = load i64*, i64** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 0), align 8
  %106 = load i64, i64* @ADDR_PREFIX, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i32, i32* @Reg64, align 4
  br label %114

112:                                              ; preds = %104
  %113 = load i32, i32* @Reg32, align 4
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32 [ %111, %110 ], [ %113, %112 ]
  store i32 %115, i32* %5, align 4
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 5), align 8
  %117 = icmp ne %struct.TYPE_9__* %116, null
  br i1 %117, label %118, label %134

118:                                              ; preds = %114
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 5), align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %5, align 4
  %123 = and i32 %121, %122
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %118
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 5), align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @BaseIndex, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %149, label %131

131:                                              ; preds = %125
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 4), align 8
  %133 = icmp ne %struct.TYPE_10__* %132, null
  br i1 %133, label %149, label %134

134:                                              ; preds = %131, %118, %114
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 4), align 8
  %136 = icmp ne %struct.TYPE_10__* %135, null
  br i1 %136, label %137, label %150

137:                                              ; preds = %134
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 4), align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @BaseIndex, align 4
  %143 = or i32 %141, %142
  %144 = and i32 %140, %143
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* @BaseIndex, align 4
  %147 = or i32 %145, %146
  %148 = icmp ne i32 %144, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %137, %131, %125
  store i32 0, i32* %3, align 4
  br label %150

150:                                              ; preds = %149, %137, %134
  br label %247

151:                                              ; preds = %100
  %152 = load i64, i64* @flag_code, align 8
  %153 = load i64, i64* @CODE_16BIT, align 8
  %154 = icmp eq i64 %152, %153
  %155 = zext i1 %154 to i32
  %156 = load i64*, i64** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 0), align 8
  %157 = load i64, i64* @ADDR_PREFIX, align 8
  %158 = getelementptr inbounds i64, i64* %156, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  %161 = zext i1 %160 to i32
  %162 = xor i32 %155, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %214

164:                                              ; preds = %151
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 5), align 8
  %166 = icmp ne %struct.TYPE_9__* %165, null
  br i1 %166, label %167, label %181

167:                                              ; preds = %164
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 5), align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @Reg16, align 4
  %172 = load i32, i32* @BaseIndex, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* @RegRex, align 4
  %175 = or i32 %173, %174
  %176 = and i32 %170, %175
  %177 = load i32, i32* @Reg16, align 4
  %178 = load i32, i32* @BaseIndex, align 4
  %179 = or i32 %177, %178
  %180 = icmp ne i32 %176, %179
  br i1 %180, label %212, label %181

181:                                              ; preds = %167, %164
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 4), align 8
  %183 = icmp ne %struct.TYPE_10__* %182, null
  br i1 %183, label %184, label %213

184:                                              ; preds = %181
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 4), align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @Reg16, align 4
  %189 = load i32, i32* @BaseIndex, align 4
  %190 = or i32 %188, %189
  %191 = and i32 %187, %190
  %192 = load i32, i32* @Reg16, align 4
  %193 = load i32, i32* @BaseIndex, align 4
  %194 = or i32 %192, %193
  %195 = icmp ne i32 %191, %194
  br i1 %195, label %212, label %196

196:                                              ; preds = %184
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 5), align 8
  %198 = icmp ne %struct.TYPE_9__* %197, null
  br i1 %198, label %199, label %212

199:                                              ; preds = %196
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 5), align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = icmp slt i32 %202, 6
  br i1 %203, label %204, label %212

204:                                              ; preds = %199
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 4), align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp sge i32 %207, 6
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 2), align 8
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %209, %204, %199, %196, %184, %167
  store i32 0, i32* %3, align 4
  br label %213

213:                                              ; preds = %212, %209, %181
  br label %246

214:                                              ; preds = %151
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 5), align 8
  %216 = icmp ne %struct.TYPE_9__* %215, null
  br i1 %216, label %217, label %227

217:                                              ; preds = %214
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 5), align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @Reg32, align 4
  %222 = load i32, i32* @RegRex, align 4
  %223 = or i32 %221, %222
  %224 = and i32 %220, %223
  %225 = load i32, i32* @Reg32, align 4
  %226 = icmp ne i32 %224, %225
  br i1 %226, label %244, label %227

227:                                              ; preds = %217, %214
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 4), align 8
  %229 = icmp ne %struct.TYPE_10__* %228, null
  br i1 %229, label %230, label %245

230:                                              ; preds = %227
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 4), align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @Reg32, align 4
  %235 = load i32, i32* @BaseIndex, align 4
  %236 = or i32 %234, %235
  %237 = load i32, i32* @RegRex, align 4
  %238 = or i32 %236, %237
  %239 = and i32 %233, %238
  %240 = load i32, i32* @Reg32, align 4
  %241 = load i32, i32* @BaseIndex, align 4
  %242 = or i32 %240, %241
  %243 = icmp ne i32 %239, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %230, %217
  store i32 0, i32* %3, align 4
  br label %245

245:                                              ; preds = %244, %230, %227
  br label %246

246:                                              ; preds = %245, %213
  br label %247

247:                                              ; preds = %246, %150
  br label %248

248:                                              ; preds = %247, %99
  %249 = load i32, i32* %3, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %259, label %251

251:                                              ; preds = %248
  %252 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %253 = load i8*, i8** %2, align 8
  %254 = load i32*, i32** @flag_code_names, align 8
  %255 = load i64, i64* @flag_code, align 8
  %256 = getelementptr inbounds i32, i32* %254, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = call i32 (i32, i8*, ...) @as_bad(i32 %252, i8* %253, i32 %257)
  br label %259

259:                                              ; preds = %251, %248
  %260 = load i32, i32* %3, align 4
  ret i32 %260
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @as_bad(i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
