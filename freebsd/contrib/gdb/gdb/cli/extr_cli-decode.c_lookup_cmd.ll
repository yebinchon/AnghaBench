; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_lookup_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_lookup_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32, i8*, i8*, %struct.cmd_list_element**, %struct.cmd_list_element* }

@.str = private unnamed_addr constant [25 x i8] c"Lack of needed %scommand\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Ambiguous %scommand \22%s\22: %s.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_list_element* @lookup_cmd(i8** %0, %struct.cmd_list_element* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.cmd_list_element*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.cmd_list_element*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cmd_list_element*, align 8
  %13 = alloca %struct.cmd_list_element*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.cmd_list_element*, align 8
  %19 = alloca i32, align 4
  %20 = alloca [100 x i8], align 16
  store i8** %0, i8*** %7, align 8
  store %struct.cmd_list_element* %1, %struct.cmd_list_element** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.cmd_list_element* null, %struct.cmd_list_element** %12, align 8
  %21 = load i8**, i8*** %7, align 8
  %22 = load %struct.cmd_list_element*, %struct.cmd_list_element** %8, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call %struct.cmd_list_element* @lookup_cmd_1(i8** %21, %struct.cmd_list_element* %22, %struct.cmd_list_element** %12, i32 %23)
  store %struct.cmd_list_element* %24, %struct.cmd_list_element** %13, align 8
  %25 = load %struct.cmd_list_element*, %struct.cmd_list_element** %13, align 8
  %26 = icmp ne %struct.cmd_list_element* %25, null
  br i1 %26, label %91, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %89, label %30

30:                                               ; preds = %27
  %31 = load i8**, i8*** %7, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %35)
  br label %88

37:                                               ; preds = %30
  %38 = load i8**, i8*** %7, align 8
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %14, align 8
  br label %40

40:                                               ; preds = %52, %37
  %41 = load i8*, i8** %14, align 8
  %42 = load i8, i8* %41, align 1
  %43 = call i64 @isalnum(i8 signext %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %14, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 45
  br label %50

50:                                               ; preds = %45, %40
  %51 = phi i1 [ true, %40 ], [ %49, %45 ]
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = load i8*, i8** %14, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %14, align 8
  br label %40

55:                                               ; preds = %50
  %56 = load i8*, i8** %14, align 8
  %57 = load i8**, i8*** %7, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = ptrtoint i8* %56 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = add nsw i64 %61, 1
  %63 = trunc i64 %62 to i32
  %64 = call i64 @alloca(i32 %63)
  %65 = inttoptr i64 %64 to i8*
  store i8* %65, i8** %15, align 8
  %66 = load i8*, i8** %15, align 8
  %67 = load i8**, i8*** %7, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** %14, align 8
  %70 = load i8**, i8*** %7, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = ptrtoint i8* %69 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  %76 = call i32 @strncpy(i8* %66, i8* %68, i32 %75)
  %77 = load i8*, i8** %15, align 8
  %78 = load i8*, i8** %14, align 8
  %79 = load i8**, i8*** %7, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = ptrtoint i8* %78 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = getelementptr inbounds i8, i8* %77, i64 %83
  store i8 0, i8* %84, align 1
  %85 = load i8*, i8** %9, align 8
  %86 = load i8*, i8** %15, align 8
  %87 = call i32 @undef_cmd_error(i8* %85, i8* %86)
  br label %88

88:                                               ; preds = %55, %34
  br label %90

89:                                               ; preds = %27
  store %struct.cmd_list_element* null, %struct.cmd_list_element** %6, align 8
  br label %266

90:                                               ; preds = %88
  br label %265

91:                                               ; preds = %5
  %92 = load %struct.cmd_list_element*, %struct.cmd_list_element** %13, align 8
  %93 = icmp eq %struct.cmd_list_element* %92, inttoptr (i64 -1 to %struct.cmd_list_element*)
  br i1 %93, label %94, label %221

94:                                               ; preds = %91
  %95 = load %struct.cmd_list_element*, %struct.cmd_list_element** %12, align 8
  %96 = icmp ne %struct.cmd_list_element* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load %struct.cmd_list_element*, %struct.cmd_list_element** %12, align 8
  %99 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  br label %103

101:                                              ; preds = %94
  %102 = load i32, i32* %10, align 4
  br label %103

103:                                              ; preds = %101, %97
  %104 = phi i32 [ %100, %97 ], [ %102, %101 ]
  store i32 %104, i32* %16, align 4
  %105 = load %struct.cmd_list_element*, %struct.cmd_list_element** %12, align 8
  %106 = icmp ne %struct.cmd_list_element* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load %struct.cmd_list_element*, %struct.cmd_list_element** %12, align 8
  %109 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  br label %113

111:                                              ; preds = %103
  %112 = load i8*, i8** %9, align 8
  br label %113

113:                                              ; preds = %111, %107
  %114 = phi i8* [ %110, %107 ], [ %112, %111 ]
  store i8* %114, i8** %17, align 8
  %115 = load %struct.cmd_list_element*, %struct.cmd_list_element** %12, align 8
  %116 = icmp ne %struct.cmd_list_element* %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load %struct.cmd_list_element*, %struct.cmd_list_element** %12, align 8
  %119 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %118, i32 0, i32 3
  %120 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %119, align 8
  %121 = load %struct.cmd_list_element*, %struct.cmd_list_element** %120, align 8
  br label %124

122:                                              ; preds = %113
  %123 = load %struct.cmd_list_element*, %struct.cmd_list_element** %8, align 8
  br label %124

124:                                              ; preds = %122, %117
  %125 = phi %struct.cmd_list_element* [ %121, %117 ], [ %123, %122 ]
  store %struct.cmd_list_element* %125, %struct.cmd_list_element** %18, align 8
  %126 = load i32, i32* %16, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %124
  %129 = load %struct.cmd_list_element*, %struct.cmd_list_element** %12, align 8
  %130 = icmp ne %struct.cmd_list_element* %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = load %struct.cmd_list_element*, %struct.cmd_list_element** %12, align 8
  store %struct.cmd_list_element* %132, %struct.cmd_list_element** %6, align 8
  br label %266

133:                                              ; preds = %128
  store %struct.cmd_list_element* null, %struct.cmd_list_element** %6, align 8
  br label %266

134:                                              ; preds = %124
  store i32 0, i32* %19, align 4
  br label %135

135:                                              ; preds = %165, %134
  %136 = load i8**, i8*** %7, align 8
  %137 = load i8*, i8** %136, align 8
  %138 = load i32, i32* %19, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %162

144:                                              ; preds = %135
  %145 = load i8**, i8*** %7, align 8
  %146 = load i8*, i8** %145, align 8
  %147 = load i32, i32* %19, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp ne i32 %151, 32
  br i1 %152, label %153, label %162

153:                                              ; preds = %144
  %154 = load i8**, i8*** %7, align 8
  %155 = load i8*, i8** %154, align 8
  %156 = load i32, i32* %19, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp ne i32 %160, 9
  br label %162

162:                                              ; preds = %153, %144, %135
  %163 = phi i1 [ false, %144 ], [ false, %135 ], [ %161, %153 ]
  br i1 %163, label %164, label %168

164:                                              ; preds = %162
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %19, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %19, align 4
  br label %135

168:                                              ; preds = %162
  %169 = getelementptr inbounds [100 x i8], [100 x i8]* %20, i64 0, i64 0
  store i8 0, i8* %169, align 16
  %170 = load %struct.cmd_list_element*, %struct.cmd_list_element** %18, align 8
  store %struct.cmd_list_element* %170, %struct.cmd_list_element** %13, align 8
  br label %171

171:                                              ; preds = %211, %168
  %172 = load %struct.cmd_list_element*, %struct.cmd_list_element** %13, align 8
  %173 = icmp ne %struct.cmd_list_element* %172, null
  br i1 %173, label %174, label %215

174:                                              ; preds = %171
  %175 = load i8**, i8*** %7, align 8
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.cmd_list_element*, %struct.cmd_list_element** %13, align 8
  %178 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %177, i32 0, i32 2
  %179 = load i8*, i8** %178, align 8
  %180 = load i32, i32* %19, align 4
  %181 = call i32 @strncmp(i8* %176, i8* %179, i32 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %210, label %183

183:                                              ; preds = %174
  %184 = getelementptr inbounds [100 x i8], [100 x i8]* %20, i64 0, i64 0
  %185 = call i32 @strlen(i8* %184)
  %186 = load %struct.cmd_list_element*, %struct.cmd_list_element** %13, align 8
  %187 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %186, i32 0, i32 2
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 @strlen(i8* %188)
  %190 = add nsw i32 %185, %189
  %191 = add nsw i32 %190, 6
  %192 = icmp slt i32 %191, 100
  br i1 %192, label %193, label %206

193:                                              ; preds = %183
  %194 = getelementptr inbounds [100 x i8], [100 x i8]* %20, i64 0, i64 0
  %195 = call i32 @strlen(i8* %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = getelementptr inbounds [100 x i8], [100 x i8]* %20, i64 0, i64 0
  %199 = call i32 @strcat(i8* %198, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %200

200:                                              ; preds = %197, %193
  %201 = getelementptr inbounds [100 x i8], [100 x i8]* %20, i64 0, i64 0
  %202 = load %struct.cmd_list_element*, %struct.cmd_list_element** %13, align 8
  %203 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %202, i32 0, i32 2
  %204 = load i8*, i8** %203, align 8
  %205 = call i32 @strcat(i8* %201, i8* %204)
  br label %209

206:                                              ; preds = %183
  %207 = getelementptr inbounds [100 x i8], [100 x i8]* %20, i64 0, i64 0
  %208 = call i32 @strcat(i8* %207, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %215

209:                                              ; preds = %200
  br label %210

210:                                              ; preds = %209, %174
  br label %211

211:                                              ; preds = %210
  %212 = load %struct.cmd_list_element*, %struct.cmd_list_element** %13, align 8
  %213 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %212, i32 0, i32 4
  %214 = load %struct.cmd_list_element*, %struct.cmd_list_element** %213, align 8
  store %struct.cmd_list_element* %214, %struct.cmd_list_element** %13, align 8
  br label %171

215:                                              ; preds = %206, %171
  %216 = load i8*, i8** %17, align 8
  %217 = load i8**, i8*** %7, align 8
  %218 = load i8*, i8** %217, align 8
  %219 = getelementptr inbounds [100 x i8], [100 x i8]* %20, i64 0, i64 0
  %220 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %216, i8* %218, i8* %219)
  store %struct.cmd_list_element* null, %struct.cmd_list_element** %6, align 8
  br label %266

221:                                              ; preds = %91
  br label %222

222:                                              ; preds = %236, %221
  %223 = load i8**, i8*** %7, align 8
  %224 = load i8*, i8** %223, align 8
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp eq i32 %226, 32
  br i1 %227, label %234, label %228

228:                                              ; preds = %222
  %229 = load i8**, i8*** %7, align 8
  %230 = load i8*, i8** %229, align 8
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp eq i32 %232, 9
  br label %234

234:                                              ; preds = %228, %222
  %235 = phi i1 [ true, %222 ], [ %233, %228 ]
  br i1 %235, label %236, label %240

236:                                              ; preds = %234
  %237 = load i8**, i8*** %7, align 8
  %238 = load i8*, i8** %237, align 8
  %239 = getelementptr inbounds i8, i8* %238, i32 1
  store i8* %239, i8** %237, align 8
  br label %222

240:                                              ; preds = %234
  %241 = load %struct.cmd_list_element*, %struct.cmd_list_element** %13, align 8
  %242 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %241, i32 0, i32 3
  %243 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %242, align 8
  %244 = icmp ne %struct.cmd_list_element** %243, null
  br i1 %244, label %245, label %263

245:                                              ; preds = %240
  %246 = load i8**, i8*** %7, align 8
  %247 = load i8*, i8** %246, align 8
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %263

251:                                              ; preds = %245
  %252 = load %struct.cmd_list_element*, %struct.cmd_list_element** %13, align 8
  %253 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %263, label %256

256:                                              ; preds = %251
  %257 = load %struct.cmd_list_element*, %struct.cmd_list_element** %13, align 8
  %258 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %257, i32 0, i32 1
  %259 = load i8*, i8** %258, align 8
  %260 = load i8**, i8*** %7, align 8
  %261 = load i8*, i8** %260, align 8
  %262 = call i32 @undef_cmd_error(i8* %259, i8* %261)
  br label %263

263:                                              ; preds = %256, %251, %245, %240
  %264 = load %struct.cmd_list_element*, %struct.cmd_list_element** %13, align 8
  store %struct.cmd_list_element* %264, %struct.cmd_list_element** %6, align 8
  br label %266

265:                                              ; preds = %90
  store %struct.cmd_list_element* null, %struct.cmd_list_element** %6, align 8
  br label %266

266:                                              ; preds = %265, %263, %215, %133, %131, %89
  %267 = load %struct.cmd_list_element*, %struct.cmd_list_element** %6, align 8
  ret %struct.cmd_list_element* %267
}

declare dso_local %struct.cmd_list_element* @lookup_cmd_1(i8**, %struct.cmd_list_element*, %struct.cmd_list_element**, i32) #1

declare dso_local i32 @error(i8*, i8*, ...) #1

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @undef_cmd_error(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
