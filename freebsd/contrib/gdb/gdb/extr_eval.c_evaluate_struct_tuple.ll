; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_eval.c_evaluate_struct_tuple.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_eval.c_evaluate_struct_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.expression = type { i32 }
%struct.type = type { i32 }

@TYPE_CODE_UNION = common dso_local global i64 0, align 8
@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"there is no field named %s\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"too many initializers\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"don't know which variant you want to set\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.value* (%struct.value*, %struct.expression*, i32*, i32, i32)* @evaluate_struct_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.value* @evaluate_struct_tuple(%struct.value* %0, %struct.expression* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.value*, align 8
  %7 = alloca %struct.expression*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.type*, align 8
  %12 = alloca %struct.type*, align 8
  %13 = alloca %struct.type*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.value*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  store %struct.value* %0, %struct.value** %6, align 8
  store %struct.expression* %1, %struct.expression** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %26 = load %struct.value*, %struct.value** %6, align 8
  %27 = call %struct.type* @VALUE_TYPE(%struct.value* %26)
  %28 = call %struct.type* @check_typedef(%struct.type* %27)
  store %struct.type* %28, %struct.type** %11, align 8
  %29 = load %struct.type*, %struct.type** %11, align 8
  store %struct.type* %29, %struct.type** %12, align 8
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  br label %30

30:                                               ; preds = %259, %5
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %10, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %260

34:                                               ; preds = %30
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %17, align 4
  store %struct.value* null, %struct.value** %18, align 8
  store i32 0, i32* %19, align 4
  br label %37

37:                                               ; preds = %42, %34
  %38 = load %struct.expression*, %struct.expression** %7, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i8* @get_label(%struct.expression* %38, i32* %39)
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %19, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %19, align 4
  br label %37

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %255, %45
  %47 = load %struct.expression*, %struct.expression** %7, align 8
  %48 = call i8* @get_label(%struct.expression* %47, i32* %17)
  store i8* %48, i8** %23, align 8
  %49 = load i8*, i8** %23, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %146

51:                                               ; preds = %46
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %72, %51
  %53 = load i32, i32* %14, align 4
  %54 = load %struct.type*, %struct.type** %11, align 8
  %55 = call i32 @TYPE_NFIELDS(%struct.type* %54)
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = load %struct.type*, %struct.type** %11, align 8
  %59 = load i32, i32* %14, align 4
  %60 = call i8* @TYPE_FIELD_NAME(%struct.type* %58, i32 %59)
  store i8* %60, i8** %24, align 8
  %61 = load i8*, i8** %24, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load i8*, i8** %24, align 8
  %65 = load i8*, i8** %23, align 8
  %66 = call i64 @DEPRECATED_STREQ(i8* %64, i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  store i32 -1, i32* %15, align 4
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %16, align 4
  %70 = load %struct.type*, %struct.type** %11, align 8
  store %struct.type* %70, %struct.type** %12, align 8
  br label %145

71:                                               ; preds = %63, %57
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %14, align 4
  br label %52

75:                                               ; preds = %52
  store i32 0, i32* %14, align 4
  br label %76

76:                                               ; preds = %139, %75
  %77 = load i32, i32* %14, align 4
  %78 = load %struct.type*, %struct.type** %11, align 8
  %79 = call i32 @TYPE_NFIELDS(%struct.type* %78)
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %142

81:                                               ; preds = %76
  %82 = load %struct.type*, %struct.type** %11, align 8
  %83 = load i32, i32* %14, align 4
  %84 = call i8* @TYPE_FIELD_NAME(%struct.type* %82, i32 %83)
  store i8* %84, i8** %25, align 8
  %85 = load %struct.type*, %struct.type** %11, align 8
  %86 = load i32, i32* %14, align 4
  %87 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %85, i32 %86)
  store %struct.type* %87, %struct.type** %13, align 8
  %88 = load i8*, i8** %25, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %81
  %91 = load i8*, i8** %25, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %138

95:                                               ; preds = %90, %81
  %96 = load %struct.type*, %struct.type** %13, align 8
  %97 = call i64 @TYPE_CODE(%struct.type* %96)
  %98 = load i64, i64* @TYPE_CODE_UNION, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %138

100:                                              ; preds = %95
  store i32 0, i32* %15, align 4
  br label %101

101:                                              ; preds = %134, %100
  %102 = load i32, i32* %15, align 4
  %103 = load %struct.type*, %struct.type** %13, align 8
  %104 = call i32 @TYPE_NFIELDS(%struct.type* %103)
  %105 = icmp slt i32 %102, %104
  br i1 %105, label %106, label %137

106:                                              ; preds = %101
  %107 = load %struct.type*, %struct.type** %13, align 8
  %108 = load i32, i32* %15, align 4
  %109 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %107, i32 %108)
  store %struct.type* %109, %struct.type** %12, align 8
  %110 = load %struct.type*, %struct.type** %12, align 8
  %111 = call i64 @TYPE_CODE(%struct.type* %110)
  %112 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %133

114:                                              ; preds = %106
  store i32 0, i32* %16, align 4
  br label %115

115:                                              ; preds = %129, %114
  %116 = load i32, i32* %16, align 4
  %117 = load %struct.type*, %struct.type** %12, align 8
  %118 = call i32 @TYPE_NFIELDS(%struct.type* %117)
  %119 = icmp slt i32 %116, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %115
  %121 = load %struct.type*, %struct.type** %12, align 8
  %122 = load i32, i32* %16, align 4
  %123 = call i8* @TYPE_FIELD_NAME(%struct.type* %121, i32 %122)
  %124 = load i8*, i8** %23, align 8
  %125 = call i64 @DEPRECATED_STREQ(i8* %123, i8* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  br label %145

128:                                              ; preds = %120
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %16, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %16, align 4
  br label %115

132:                                              ; preds = %115
  br label %133

133:                                              ; preds = %132, %106
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %15, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %15, align 4
  br label %101

137:                                              ; preds = %101
  br label %138

138:                                              ; preds = %137, %95, %90
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %14, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %14, align 4
  br label %76

142:                                              ; preds = %76
  %143 = load i8*, i8** %23, align 8
  %144 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %143)
  br label %145

145:                                              ; preds = %142, %127, %68
  br label %192

146:                                              ; preds = %46
  %147 = load i32, i32* %15, align 4
  %148 = icmp sge i32 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %146
  %150 = load i32, i32* %16, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %16, align 4
  %152 = load i32, i32* %16, align 4
  %153 = load %struct.type*, %struct.type** %12, align 8
  %154 = call i32 @TYPE_NFIELDS(%struct.type* %153)
  %155 = icmp sge i32 %152, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %149
  store i32 -1, i32* %15, align 4
  %157 = load %struct.type*, %struct.type** %11, align 8
  store %struct.type* %157, %struct.type** %12, align 8
  br label %158

158:                                              ; preds = %156, %149
  br label %159

159:                                              ; preds = %158, %146
  %160 = load i32, i32* %15, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %191

162:                                              ; preds = %159
  %163 = load i32, i32* %14, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %14, align 4
  %165 = load i32, i32* %14, align 4
  store i32 %165, i32* %16, align 4
  %166 = load i32, i32* %14, align 4
  %167 = load %struct.type*, %struct.type** %11, align 8
  %168 = call i32 @TYPE_NFIELDS(%struct.type* %167)
  %169 = icmp sge i32 %166, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %162
  %171 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %172

172:                                              ; preds = %170, %162
  %173 = load %struct.type*, %struct.type** %11, align 8
  %174 = load i32, i32* %14, align 4
  %175 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %173, i32 %174)
  store %struct.type* %175, %struct.type** %13, align 8
  %176 = load %struct.type*, %struct.type** %13, align 8
  %177 = call i64 @TYPE_CODE(%struct.type* %176)
  %178 = load i64, i64* @TYPE_CODE_UNION, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %190

180:                                              ; preds = %172
  %181 = load %struct.type*, %struct.type** %11, align 8
  %182 = load i32, i32* %14, align 4
  %183 = call i8* @TYPE_FIELD_NAME(%struct.type* %181, i32 %182)
  %184 = getelementptr inbounds i8, i8* %183, i64 0
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp eq i32 %186, 48
  br i1 %187, label %188, label %190

188:                                              ; preds = %180
  %189 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %190

190:                                              ; preds = %188, %180, %172
  br label %191

191:                                              ; preds = %190, %159
  br label %192

192:                                              ; preds = %191, %145
  %193 = load %struct.type*, %struct.type** %12, align 8
  %194 = load i32, i32* %16, align 4
  %195 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %193, i32 %194)
  store %struct.type* %195, %struct.type** %13, align 8
  %196 = load %struct.value*, %struct.value** %18, align 8
  %197 = icmp eq %struct.value* %196, null
  br i1 %197, label %198, label %204

198:                                              ; preds = %192
  %199 = load %struct.type*, %struct.type** %13, align 8
  %200 = load %struct.expression*, %struct.expression** %7, align 8
  %201 = load i32*, i32** %8, align 8
  %202 = load i32, i32* %9, align 4
  %203 = call %struct.value* @evaluate_subexp(%struct.type* %199, %struct.expression* %200, i32* %201, i32 %202)
  store %struct.value* %203, %struct.value** %18, align 8
  br label %204

204:                                              ; preds = %198, %192
  %205 = load %struct.value*, %struct.value** %18, align 8
  %206 = call %struct.type* @VALUE_TYPE(%struct.value* %205)
  %207 = load %struct.type*, %struct.type** %13, align 8
  %208 = icmp ne %struct.type* %206, %207
  br i1 %208, label %209, label %213

209:                                              ; preds = %204
  %210 = load %struct.type*, %struct.type** %13, align 8
  %211 = load %struct.value*, %struct.value** %18, align 8
  %212 = call %struct.value* @value_cast(%struct.type* %210, %struct.value* %211)
  store %struct.value* %212, %struct.value** %18, align 8
  br label %213

213:                                              ; preds = %209, %204
  %214 = load %struct.type*, %struct.type** %12, align 8
  %215 = load i32, i32* %16, align 4
  %216 = call i32 @TYPE_FIELD_BITSIZE(%struct.type* %214, i32 %215)
  store i32 %216, i32* %21, align 4
  %217 = load %struct.type*, %struct.type** %11, align 8
  %218 = load i32, i32* %14, align 4
  %219 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %217, i32 %218)
  store i32 %219, i32* %20, align 4
  %220 = load i32, i32* %15, align 4
  %221 = icmp sge i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %213
  %223 = load %struct.type*, %struct.type** %12, align 8
  %224 = load i32, i32* %16, align 4
  %225 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %223, i32 %224)
  %226 = load i32, i32* %20, align 4
  %227 = add nsw i32 %226, %225
  store i32 %227, i32* %20, align 4
  br label %228

228:                                              ; preds = %222, %213
  %229 = load %struct.value*, %struct.value** %6, align 8
  %230 = call i32 @VALUE_CONTENTS(%struct.value* %229)
  %231 = load i32, i32* %20, align 4
  %232 = sdiv i32 %231, 8
  %233 = add nsw i32 %230, %232
  %234 = sext i32 %233 to i64
  %235 = inttoptr i64 %234 to i8*
  store i8* %235, i8** %22, align 8
  %236 = load i32, i32* %21, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %246

238:                                              ; preds = %228
  %239 = load i8*, i8** %22, align 8
  %240 = load %struct.value*, %struct.value** %18, align 8
  %241 = call i32 @value_as_long(%struct.value* %240)
  %242 = load i32, i32* %20, align 4
  %243 = srem i32 %242, 8
  %244 = load i32, i32* %21, align 4
  %245 = call i32 @modify_field(i8* %239, i32 %241, i32 %243, i32 %244)
  br label %254

246:                                              ; preds = %228
  %247 = load i8*, i8** %22, align 8
  %248 = load %struct.value*, %struct.value** %18, align 8
  %249 = call i32 @VALUE_CONTENTS(%struct.value* %248)
  %250 = load %struct.value*, %struct.value** %18, align 8
  %251 = call %struct.type* @VALUE_TYPE(%struct.value* %250)
  %252 = call i32 @TYPE_LENGTH(%struct.type* %251)
  %253 = call i32 @memcpy(i8* %247, i32 %249, i32 %252)
  br label %254

254:                                              ; preds = %246, %238
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %19, align 4
  %257 = add nsw i32 %256, -1
  store i32 %257, i32* %19, align 4
  %258 = icmp sgt i32 %257, 0
  br i1 %258, label %46, label %259

259:                                              ; preds = %255
  br label %30

260:                                              ; preds = %30
  %261 = load %struct.value*, %struct.value** %6, align 8
  ret %struct.value* %261
}

declare dso_local %struct.type* @check_typedef(%struct.type*) #1

declare dso_local %struct.type* @VALUE_TYPE(%struct.value*) #1

declare dso_local i8* @get_label(%struct.expression*, i32*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i8* @TYPE_FIELD_NAME(%struct.type*, i32) #1

declare dso_local i64 @DEPRECATED_STREQ(i8*, i8*) #1

declare dso_local %struct.type* @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local %struct.value* @evaluate_subexp(%struct.type*, %struct.expression*, i32*, i32) #1

declare dso_local %struct.value* @value_cast(%struct.type*, %struct.value*) #1

declare dso_local i32 @TYPE_FIELD_BITSIZE(%struct.type*, i32) #1

declare dso_local i32 @TYPE_FIELD_BITPOS(%struct.type*, i32) #1

declare dso_local i32 @VALUE_CONTENTS(%struct.value*) #1

declare dso_local i32 @modify_field(i8*, i32, i32, i32) #1

declare dso_local i32 @value_as_long(%struct.value*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
