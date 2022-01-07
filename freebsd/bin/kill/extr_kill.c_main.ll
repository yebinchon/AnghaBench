; ModuleID = '/home/carl/AnghaBench/freebsd/bin/kill/extr_kill.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/kill/extr_kill.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGTERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"illegal signal number: %s\00", align 1
@sys_nsig = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@sys_signame = common dso_local global i8** null, align 8
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"option requires an argument -- s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"illegal process id: %s\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 (...) @usage()
  br label %16

16:                                               ; preds = %14, %2
  %17 = load i32, i32* @SIGTERM, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i32 1
  store i8** %21, i8*** %5, align 8
  %22 = load i8**, i8*** %5, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %91, label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %4, align 4
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i32 1
  store i8** %30, i8*** %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = call i32 (...) @usage()
  br label %35

35:                                               ; preds = %33, %26
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %88

38:                                               ; preds = %35
  %39 = load i8**, i8*** %5, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = load i8, i8* %40, align 1
  %42 = call i64 @isdigit(i8 signext %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = call i32 (...) @usage()
  br label %46

46:                                               ; preds = %44, %38
  %47 = load i8**, i8*** %5, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @strtol(i8* %48, i8** %11, i32 10)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %9, align 4
  %51 = load i8**, i8*** %5, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = load i8, i8* %52, align 1
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %46
  %56 = load i8*, i8** %11, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55, %46
  %61 = load i8**, i8*** %5, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @errx(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %60, %55
  %65 = load i32, i32* %9, align 4
  %66 = icmp sge i32 %65, 128
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 %68, 128
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32, i32* %9, align 4
  %72 = icmp sle i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @sys_nsig, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73, %70
  %78 = load i8**, i8*** %5, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @nosig(i8* %79)
  br label %81

81:                                               ; preds = %77, %73
  %82 = load i8**, i8*** @sys_signame, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %86)
  store i32 0, i32* %3, align 4
  br label %265

88:                                               ; preds = %35
  %89 = load i32, i32* @stdout, align 4
  %90 = call i32 @printsignals(i32 %89)
  store i32 0, i32* %3, align 4
  br label %265

91:                                               ; preds = %16
  %92 = load i8**, i8*** %5, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @strcmp(i8* %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %127, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %4, align 4
  %99 = load i8**, i8*** %5, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i32 1
  store i8** %100, i8*** %5, align 8
  %101 = load i32, i32* %4, align 4
  %102 = icmp slt i32 %101, 1
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = call i32 @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %105 = call i32 (...) @usage()
  br label %106

106:                                              ; preds = %103, %96
  %107 = load i8**, i8*** %5, align 8
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @strcmp(i8* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %106
  %112 = load i8**, i8*** %5, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @signame_to_signum(i8* %113)
  store i32 %114, i32* %9, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i8**, i8*** %5, align 8
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @nosig(i8* %118)
  br label %120

120:                                              ; preds = %116, %111
  br label %122

121:                                              ; preds = %106
  store i32 0, i32* %9, align 4
  br label %122

122:                                              ; preds = %121, %120
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %4, align 4
  %125 = load i8**, i8*** %5, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i32 1
  store i8** %126, i8*** %5, align 8
  br label %202

127:                                              ; preds = %91
  %128 = load i8**, i8*** %5, align 8
  %129 = load i8*, i8** %128, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 45
  br i1 %132, label %133, label %201

133:                                              ; preds = %127
  %134 = load i8**, i8*** %5, align 8
  %135 = load i8*, i8** %134, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp ne i32 %138, 45
  br i1 %139, label %140, label %201

140:                                              ; preds = %133
  %141 = load i8**, i8*** %5, align 8
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %141, align 8
  %144 = load i8**, i8*** %5, align 8
  %145 = load i8*, i8** %144, align 8
  %146 = load i8, i8* %145, align 1
  %147 = call i64 @isalpha(i8 signext %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %140
  %150 = load i8**, i8*** %5, align 8
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @signame_to_signum(i8* %151)
  store i32 %152, i32* %9, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  %155 = load i8**, i8*** %5, align 8
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @nosig(i8* %156)
  br label %158

158:                                              ; preds = %154, %149
  br label %196

159:                                              ; preds = %140
  %160 = load i8**, i8*** %5, align 8
  %161 = load i8*, i8** %160, align 8
  %162 = load i8, i8* %161, align 1
  %163 = call i64 @isdigit(i8 signext %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %191

165:                                              ; preds = %159
  %166 = load i8**, i8*** %5, align 8
  %167 = load i8*, i8** %166, align 8
  %168 = call i8* @strtol(i8* %167, i8** %11, i32 10)
  %169 = ptrtoint i8* %168 to i32
  store i32 %169, i32* %9, align 4
  %170 = load i8**, i8*** %5, align 8
  %171 = load i8*, i8** %170, align 8
  %172 = load i8, i8* %171, align 1
  %173 = icmp ne i8 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %165
  %175 = load i8*, i8** %11, align 8
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %174, %165
  %180 = load i8**, i8*** %5, align 8
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @errx(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %181)
  br label %183

183:                                              ; preds = %179, %174
  %184 = load i32, i32* %9, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %183
  %187 = load i8**, i8*** %5, align 8
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 @nosig(i8* %188)
  br label %190

190:                                              ; preds = %186, %183
  br label %195

191:                                              ; preds = %159
  %192 = load i8**, i8*** %5, align 8
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @nosig(i8* %193)
  br label %195

195:                                              ; preds = %191, %190
  br label %196

196:                                              ; preds = %195, %158
  %197 = load i32, i32* %4, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %4, align 4
  %199 = load i8**, i8*** %5, align 8
  %200 = getelementptr inbounds i8*, i8** %199, i32 1
  store i8** %200, i8*** %5, align 8
  br label %201

201:                                              ; preds = %196, %133, %127
  br label %202

202:                                              ; preds = %201, %122
  %203 = load i32, i32* %4, align 4
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %215

205:                                              ; preds = %202
  %206 = load i8**, i8*** %5, align 8
  %207 = load i8*, i8** %206, align 8
  %208 = call i64 @strncmp(i8* %207, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 2)
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %205
  %211 = load i32, i32* %4, align 4
  %212 = add nsw i32 %211, -1
  store i32 %212, i32* %4, align 4
  %213 = load i8**, i8*** %5, align 8
  %214 = getelementptr inbounds i8*, i8** %213, i32 1
  store i8** %214, i8*** %5, align 8
  br label %215

215:                                              ; preds = %210, %205, %202
  %216 = load i32, i32* %4, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %215
  %219 = call i32 (...) @usage()
  br label %220

220:                                              ; preds = %218, %215
  store i32 0, i32* %8, align 4
  br label %221

221:                                              ; preds = %258, %220
  %222 = load i32, i32* %4, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %263

224:                                              ; preds = %221
  %225 = load i8**, i8*** %5, align 8
  %226 = load i8*, i8** %225, align 8
  %227 = call i8* @strtol(i8* %226, i8** %11, i32 10)
  %228 = ptrtoint i8* %227 to i64
  store i64 %228, i64* %6, align 8
  %229 = load i64, i64* %6, align 8
  store i64 %229, i64* %7, align 8
  %230 = load i8**, i8*** %5, align 8
  %231 = load i8*, i8** %230, align 8
  %232 = load i8, i8* %231, align 1
  %233 = icmp ne i8 %232, 0
  br i1 %233, label %234, label %243

234:                                              ; preds = %224
  %235 = load i8*, i8** %11, align 8
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %243, label %239

239:                                              ; preds = %234
  %240 = load i64, i64* %7, align 8
  %241 = load i64, i64* %6, align 8
  %242 = icmp ne i64 %240, %241
  br i1 %242, label %243, label %247

243:                                              ; preds = %239, %234, %224
  %244 = load i8**, i8*** %5, align 8
  %245 = load i8*, i8** %244, align 8
  %246 = call i32 @errx(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %245)
  br label %247

247:                                              ; preds = %243, %239
  %248 = load i64, i64* %7, align 8
  %249 = load i32, i32* %9, align 4
  %250 = call i32 @kill(i64 %248, i32 %249)
  store i32 %250, i32* %10, align 4
  %251 = load i32, i32* %10, align 4
  %252 = icmp eq i32 %251, -1
  br i1 %252, label %253, label %257

253:                                              ; preds = %247
  %254 = load i8**, i8*** %5, align 8
  %255 = load i8*, i8** %254, align 8
  %256 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %255)
  store i32 1, i32* %8, align 4
  br label %257

257:                                              ; preds = %253, %247
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %4, align 4
  %260 = add nsw i32 %259, -1
  store i32 %260, i32* %4, align 4
  %261 = load i8**, i8*** %5, align 8
  %262 = getelementptr inbounds i8*, i8** %261, i32 1
  store i8** %262, i8*** %5, align 8
  br label %221

263:                                              ; preds = %221
  %264 = load i32, i32* %8, align 4
  store i32 %264, i32* %3, align 4
  br label %265

265:                                              ; preds = %263, %88, %81
  %266 = load i32, i32* %3, align 4
  ret i32 %266
}

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i8* @strtol(i8*, i8**, i32) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @nosig(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @printsignals(i32) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @signame_to_signum(i8*) #1

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @kill(i64, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
