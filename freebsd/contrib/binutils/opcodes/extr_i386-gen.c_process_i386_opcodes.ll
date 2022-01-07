; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-gen.c_process_i386_opcodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-gen.c_process_i386_opcodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"i386-opc.tbl\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@MAX_OPERANDS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"can't find i386-opc.tbl for reading\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"\0A/* i386 opcode table.  */\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"const template i386_optab[] =\0A{\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"  { \22%s\22, %s, %s, %s, %s,\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"    %s,\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"    { \00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c",\0A      \00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c" } },\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"  { NULL, 0, 0, 0, 0, 0, { 0 } }\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @process_i386_opcodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_i386_opcodes() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [2048 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = call i32* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %15, i32** %1, align 8
  %16 = load i32, i32* @MAX_OPERANDS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca i8*, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  %20 = load i32*, i32** %1, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %0
  %23 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 @fail(i32 %23)
  br label %25

25:                                               ; preds = %22, %0
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %28

28:                                               ; preds = %252, %59, %25
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @feof(i32* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %254

33:                                               ; preds = %28
  %34 = getelementptr inbounds [2048 x i8], [2048 x i8]* %2, i64 0, i64 0
  %35 = load i32*, i32** %1, align 8
  %36 = call i32* @fgets(i8* %34, i32 2048, i32* %35)
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %254

39:                                               ; preds = %33
  %40 = getelementptr inbounds [2048 x i8], [2048 x i8]* %2, i64 0, i64 0
  %41 = call i8* @remove_leading_whitespaces(i8* %40)
  store i8* %41, i8** %5, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i8* @strstr(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i8* %43, i8** %4, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  store i8 0, i8* %48, align 1
  br label %49

49:                                               ; preds = %46, %39
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @remove_trailing_whitespaces(i8* %50)
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  switch i32 %55, label %60 [
    i32 35, label %56
    i32 0, label %59
  ]

56:                                               ; preds = %49
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %49, %56
  br label %28

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60
  %62 = load i8*, i8** %5, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  store i8* %66, i8** %6, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = call i8* @next_field(i8* %67, i8** %4)
  store i8* %68, i8** %7, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = icmp uge i8* %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %61
  %73 = call i32 (...) @abort() #4
  unreachable

74:                                               ; preds = %61
  %75 = load i8*, i8** %4, align 8
  %76 = call i8* @next_field(i8* %75, i8** %4)
  store i8* %76, i8** %8, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = icmp uge i8* %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = call i32 (...) @abort() #4
  unreachable

82:                                               ; preds = %74
  %83 = load i8*, i8** %4, align 8
  %84 = call i8* @next_field(i8* %83, i8** %4)
  store i8* %84, i8** %9, align 8
  %85 = load i8*, i8** %4, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = icmp uge i8* %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = call i32 (...) @abort() #4
  unreachable

90:                                               ; preds = %82
  %91 = load i8*, i8** %4, align 8
  %92 = call i8* @next_field(i8* %91, i8** %4)
  store i8* %92, i8** %10, align 8
  %93 = load i8*, i8** %4, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = icmp uge i8* %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = call i32 (...) @abort() #4
  unreachable

98:                                               ; preds = %90
  %99 = load i8*, i8** %4, align 8
  %100 = call i8* @next_field(i8* %99, i8** %4)
  store i8* %100, i8** %11, align 8
  %101 = load i8*, i8** %4, align 8
  %102 = load i8*, i8** %6, align 8
  %103 = icmp uge i8* %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = call i32 (...) @abort() #4
  unreachable

106:                                              ; preds = %98
  %107 = load i8*, i8** %4, align 8
  %108 = call i8* @next_field(i8* %107, i8** %4)
  store i8* %108, i8** %12, align 8
  %109 = load i8*, i8** %4, align 8
  %110 = load i8*, i8** %6, align 8
  %111 = icmp uge i8* %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = call i32 (...) @abort() #4
  unreachable

114:                                              ; preds = %106
  %115 = load i8*, i8** %4, align 8
  %116 = call i8* @remove_leading_whitespaces(i8* %115)
  store i8* %116, i8** %4, align 8
  %117 = load i8*, i8** %4, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 123
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = call i32 (...) @abort() #4
  unreachable

123:                                              ; preds = %114
  %124 = load i8*, i8** %4, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  %126 = call i8* @remove_leading_whitespaces(i8* %125)
  store i8* %126, i8** %4, align 8
  %127 = load i8*, i8** %4, align 8
  %128 = call i32 @strlen(i8* %127)
  store i32 %128, i32* %3, align 4
  %129 = load i32, i32* %3, align 4
  %130 = icmp ult i32 %129, 2
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  %132 = call i32 (...) @abort() #4
  unreachable

133:                                              ; preds = %123
  br label %134

134:                                              ; preds = %159, %133
  %135 = load i32, i32* %3, align 4
  %136 = add i32 %135, -1
  store i32 %136, i32* %3, align 4
  %137 = load i8*, i8** %4, align 8
  %138 = load i32, i32* %3, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = call i64 @ISSPACE(i8 signext %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %134
  %145 = load i8*, i8** %4, align 8
  %146 = load i32, i32* %3, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 125
  br i1 %151, label %152, label %157

152:                                              ; preds = %144, %134
  %153 = load i8*, i8** %4, align 8
  %154 = load i32, i32* %3, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  store i8 0, i8* %156, align 1
  br label %158

157:                                              ; preds = %144
  br label %162

158:                                              ; preds = %152
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %3, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %134, label %162

162:                                              ; preds = %159, %157
  %163 = load i8*, i8** %4, align 8
  %164 = load i32, i32* %3, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  store i8* %166, i8** %6, align 8
  store i32 0, i32* %3, align 4
  br label %167

167:                                              ; preds = %201, %162
  %168 = load i32, i32* %3, align 4
  %169 = call i32 @ARRAY_SIZE(i8** %19)
  %170 = icmp ult i32 %168, %169
  br i1 %170, label %171, label %204

171:                                              ; preds = %167
  %172 = load i8*, i8** %4, align 8
  %173 = load i8*, i8** %6, align 8
  %174 = icmp uge i8* %172, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %171
  %176 = load i32, i32* %3, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i8*, i8** %19, i64 %177
  store i8* null, i8** %178, align 8
  br label %204

179:                                              ; preds = %171
  %180 = load i8*, i8** %4, align 8
  %181 = call i8* @next_field(i8* %180, i8** %4)
  %182 = load i32, i32* %3, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i8*, i8** %19, i64 %183
  store i8* %181, i8** %184, align 8
  %185 = load i32, i32* %3, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds i8*, i8** %19, i64 %186
  %188 = load i8*, i8** %187, align 8
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp eq i32 %190, 48
  br i1 %191, label %192, label %200

192:                                              ; preds = %179
  %193 = load i32, i32* %3, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %192
  %196 = load i32, i32* %3, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i8*, i8** %19, i64 %197
  store i8* null, i8** %198, align 8
  br label %199

199:                                              ; preds = %195, %192
  br label %204

200:                                              ; preds = %179
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %3, align 4
  %203 = add i32 %202, 1
  store i32 %203, i32* %3, align 4
  br label %167

204:                                              ; preds = %199, %175, %167
  %205 = load i8*, i8** %7, align 8
  %206 = load i8*, i8** %8, align 8
  %207 = load i8*, i8** %9, align 8
  %208 = load i8*, i8** %10, align 8
  %209 = load i8*, i8** %11, align 8
  %210 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %205, i8* %206, i8* %207, i8* %208, i8* %209)
  %211 = load i8*, i8** %12, align 8
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %211)
  %213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %214

214:                                              ; preds = %249, %204
  %215 = load i32, i32* %3, align 4
  %216 = call i32 @ARRAY_SIZE(i8** %19)
  %217 = icmp ult i32 %215, %216
  br i1 %217, label %218, label %252

218:                                              ; preds = %214
  %219 = load i32, i32* %3, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds i8*, i8** %19, i64 %220
  %222 = load i8*, i8** %221, align 8
  %223 = icmp eq i8* %222, null
  br i1 %223, label %232, label %224

224:                                              ; preds = %218
  %225 = load i32, i32* %3, align 4
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds i8*, i8** %19, i64 %226
  %228 = load i8*, i8** %227, align 8
  %229 = load i8, i8* %228, align 1
  %230 = sext i8 %229 to i32
  %231 = icmp eq i32 %230, 48
  br i1 %231, label %232, label %238

232:                                              ; preds = %224, %218
  %233 = load i32, i32* %3, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %232
  %236 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %237

237:                                              ; preds = %235, %232
  br label %252

238:                                              ; preds = %224
  %239 = load i32, i32* %3, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %238
  %242 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %243

243:                                              ; preds = %241, %238
  %244 = load i32, i32* %3, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds i8*, i8** %19, i64 %245
  %247 = load i8*, i8** %246, align 8
  %248 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %247)
  br label %249

249:                                              ; preds = %243
  %250 = load i32, i32* %3, align 4
  %251 = add i32 %250, 1
  store i32 %251, i32* %3, align 4
  br label %214

252:                                              ; preds = %237, %214
  %253 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  br label %28

254:                                              ; preds = %38, %28
  %255 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  %256 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %257 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %257)
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @fail(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i8* @remove_leading_whitespaces(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @remove_trailing_whitespaces(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @next_field(i8*, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

declare dso_local i64 @ISSPACE(i8 signext) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
