; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-cr16.c_set_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-cr16.c_set_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@cur_arg_num = common dso_local global i64 0, align 8
@nullregister = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Illegal register `%s' in Instruction `%s'\00", align 1
@ins_parse = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Illegal register pair `%s' in Instruction `%s'\00", align 1
@arg_idxrp = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"unmatched '['\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"garbage after index spec ignored\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_5__*)* @set_operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_operand(i8* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = load i64, i64* @cur_arg_num, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i64 %11
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %7, align 8
  %13 = load i8*, i8** %3, align 8
  store i8* %13, i8** %6, align 8
  store i8* %13, i8** %5, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %252 [
    i32 131, label %17
    i32 134, label %20
    i32 130, label %32
    i32 133, label %35
    i32 128, label %50
    i32 132, label %112
    i32 129, label %151
  ]

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %5, align 8
  br label %20

20:                                               ; preds = %2, %17
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = call i32 @process_label_constant(i8* %21, %struct.TYPE_5__* %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 131
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 134, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %20
  br label %253

32:                                               ; preds = %2
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %5, align 8
  br label %35

35:                                               ; preds = %2, %32
  br label %36

36:                                               ; preds = %41, %35
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 40
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %6, align 8
  br label %36

44:                                               ; preds = %36
  %45 = load i8*, i8** %6, align 8
  store i8 0, i8* %45, align 1
  %46 = load i8*, i8** %5, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = call i32 @process_label_constant(i8* %46, %struct.TYPE_5__* %47)
  %49 = load i8*, i8** %6, align 8
  store i8* %49, i8** %5, align 8
  br label %50

50:                                               ; preds = %2, %44
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %5, align 8
  br label %53

53:                                               ; preds = %58, %50
  %54 = load i8*, i8** %6, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 41
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %6, align 8
  br label %53

61:                                               ; preds = %53
  %62 = load i8*, i8** %6, align 8
  store i8 0, i8* %62, align 1
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @get_register(i8* %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @nullregister, align 4
  %68 = icmp eq i32 %64, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %61
  %70 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %71 = load i8*, i8** %5, align 8
  %72 = load i32, i32* @ins_parse, align 4
  %73 = call i32 (i32, ...) @as_bad(i32 %70, i8* %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %61
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 128
  br i1 %78, label %79, label %111

79:                                               ; preds = %74
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @getreg_image(i32 %82)
  %84 = icmp eq i32 %83, 12
  br i1 %84, label %103, label %85

85:                                               ; preds = %79
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @getreg_image(i32 %88)
  %90 = icmp eq i32 %89, 13
  br i1 %90, label %103, label %91

91:                                               ; preds = %85
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @getreg_image(i32 %94)
  %96 = icmp eq i32 %95, 14
  br i1 %96, label %103, label %97

97:                                               ; preds = %91
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @getreg_image(i32 %100)
  %102 = icmp eq i32 %101, 15
  br i1 %102, label %103, label %111

103:                                              ; preds = %97, %91, %85, %79
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i32 132, i32* %105, align 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %103, %97, %74
  br label %253

112:                                              ; preds = %2
  br label %113

113:                                              ; preds = %118, %112
  %114 = load i8*, i8** %6, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp ne i32 %116, 40
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load i8*, i8** %6, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %6, align 8
  br label %113

121:                                              ; preds = %113
  %122 = load i8*, i8** %6, align 8
  store i8 0, i8* %122, align 1
  %123 = load i8*, i8** %5, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %125 = call i32 @process_label_constant(i8* %123, %struct.TYPE_5__* %124)
  %126 = load i8*, i8** %6, align 8
  store i8* %126, i8** %5, align 8
  %127 = load i8*, i8** %5, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %5, align 8
  br label %129

129:                                              ; preds = %134, %121
  %130 = load i8*, i8** %6, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 41
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i8*, i8** %6, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %6, align 8
  br label %129

137:                                              ; preds = %129
  %138 = load i8*, i8** %6, align 8
  store i8 0, i8* %138, align 1
  %139 = load i8*, i8** %5, align 8
  %140 = call i32 @get_register_pair(i8* %139)
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* @nullregister, align 4
  %144 = icmp eq i32 %140, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %137
  %146 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %147 = load i8*, i8** %5, align 8
  %148 = load i32, i32* @ins_parse, align 4
  %149 = call i32 (i32, ...) @as_bad(i32 %146, i8* %147, i32 %148)
  br label %150

150:                                              ; preds = %145, %137
  br label %253

151:                                              ; preds = %2
  %152 = load i8*, i8** %5, align 8
  %153 = call i8* @strchr(i8* %152, i8 signext 40)
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %190

155:                                              ; preds = %151
  br label %156

156:                                              ; preds = %169, %155
  %157 = load i8*, i8** %6, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp ne i32 %159, 40
  br i1 %160, label %161, label %167

161:                                              ; preds = %156
  %162 = load i8*, i8** %6, align 8
  %163 = load i8, i8* %162, align 1
  %164 = call i32 @ISSPACE(i8 signext %163)
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  br label %167

167:                                              ; preds = %161, %156
  %168 = phi i1 [ false, %156 ], [ %166, %161 ]
  br i1 %168, label %169, label %172

169:                                              ; preds = %167
  %170 = load i8*, i8** %6, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %6, align 8
  br label %156

172:                                              ; preds = %167
  %173 = load i8*, i8** %6, align 8
  %174 = call i32 @get_index_register_pair(i8* %173)
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* @nullregister, align 4
  %178 = icmp eq i32 %174, %177
  br i1 %178, label %179, label %184

179:                                              ; preds = %172
  %180 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %181 = load i8*, i8** %5, align 8
  %182 = load i32, i32* @ins_parse, align 4
  %183 = call i32 (i32, ...) @as_bad(i32 %180, i8* %181, i32 %182)
  br label %184

184:                                              ; preds = %179, %172
  %185 = load i8*, i8** %6, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %186, i8** %6, align 8
  store i8 0, i8* %185, align 1
  %187 = load i32, i32* @arg_idxrp, align 4
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 4
  br label %193

190:                                              ; preds = %151
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 2
  store i32 -1, i32* %192, align 4
  br label %193

193:                                              ; preds = %190, %184
  %194 = load i8*, i8** %5, align 8
  store i8* %194, i8** %6, align 8
  br label %195

195:                                              ; preds = %200, %193
  %196 = load i8*, i8** %6, align 8
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp ne i32 %198, 93
  br i1 %199, label %200, label %203

200:                                              ; preds = %195
  %201 = load i8*, i8** %6, align 8
  %202 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %202, i8** %6, align 8
  br label %195

203:                                              ; preds = %195
  %204 = load i8*, i8** %6, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %6, align 8
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %207 = call i32 @process_label_constant(i8* %205, %struct.TYPE_5__* %206)
  %208 = load i8*, i8** %6, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %6, align 8
  store i8 0, i8* %208, align 1
  %210 = load i8*, i8** %5, align 8
  store i8* %210, i8** %6, align 8
  %211 = load i8*, i8** %6, align 8
  %212 = call i8* @strchr(i8* %211, i8 signext 91)
  store i8* %212, i8** %5, align 8
  %213 = load i8*, i8** %5, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %215, label %237

215:                                              ; preds = %203
  %216 = load i8*, i8** %5, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %217, i8** %5, align 8
  store i8 0, i8* %216, align 1
  %218 = load i8*, i8** %5, align 8
  %219 = call i8* @strchr(i8* %218, i8 signext 93)
  store i8* %219, i8** %6, align 8
  %220 = load i8*, i8** %6, align 8
  %221 = icmp eq i8* %220, null
  br i1 %221, label %222, label %225

222:                                              ; preds = %215
  %223 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %224 = call i32 (i32, ...) @as_bad(i32 %223)
  br label %236

225:                                              ; preds = %215
  %226 = load i8*, i8** %6, align 8
  store i8 0, i8* %226, align 1
  %227 = load i8*, i8** %6, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 1
  %229 = load i8, i8* %228, align 1
  %230 = sext i8 %229 to i32
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %225
  %233 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %234 = call i32 (i32, ...) @as_bad(i32 %233)
  br label %235

235:                                              ; preds = %232, %225
  br label %236

236:                                              ; preds = %235, %222
  br label %237

237:                                              ; preds = %236, %203
  %238 = load i8*, i8** %5, align 8
  %239 = call i32 @get_index_register(i8* %238)
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 3
  store i32 %239, i32* %241, align 4
  %242 = load i32, i32* @nullregister, align 4
  %243 = icmp eq i32 %239, %242
  br i1 %243, label %244, label %249

244:                                              ; preds = %237
  %245 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %246 = load i8*, i8** %5, align 8
  %247 = load i32, i32* @ins_parse, align 4
  %248 = call i32 (i32, ...) @as_bad(i32 %245, i8* %246, i32 %247)
  br label %249

249:                                              ; preds = %244, %237
  %250 = load i8*, i8** %6, align 8
  store i8 0, i8* %250, align 1
  %251 = load i8*, i8** %5, align 8
  store i8 0, i8* %251, align 1
  br label %253

252:                                              ; preds = %2
  br label %253

253:                                              ; preds = %252, %249, %150, %111, %31
  ret void
}

declare dso_local i32 @process_label_constant(i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @get_register(i8*) #1

declare dso_local i32 @as_bad(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @getreg_image(i32) #1

declare dso_local i32 @get_register_pair(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @ISSPACE(i8 signext) #1

declare dso_local i32 @get_index_register_pair(i8*) #1

declare dso_local i32 @get_index_register(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
