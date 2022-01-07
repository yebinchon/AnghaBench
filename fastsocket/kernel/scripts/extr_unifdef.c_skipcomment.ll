; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/extr_unifdef.c_skipcomment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/extr_unifdef.c_skipcomment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@text = common dso_local global i64 0, align 8
@ignoring = common dso_local global i64* null, align 8
@depth = common dso_local global i64 0, align 8
@LS_START = common dso_local global i32 0, align 4
@linestate = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\\\0A\00", align 1
@incomment = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"/\\\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"/*\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@LS_DIRTY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"unterminated char literal\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"unterminated string literal\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"*\\\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"*/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @skipcomment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @skipcomment(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i64, i64* @text, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load i64*, i64** @ignoring, align 8
  %8 = load i64, i64* @depth, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %6, %1
  br label %13

13:                                               ; preds = %26, %12
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = call i64 @isspace(i8 zeroext %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load i8*, i8** %3, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @LS_START, align 4
  store i32 %24, i32* @linestate, align 4
  br label %25

25:                                               ; preds = %23, %18
  br label %26

26:                                               ; preds = %25
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %3, align 8
  br label %13

29:                                               ; preds = %13
  %30 = load i8*, i8** %3, align 8
  store i8* %30, i8** %2, align 8
  br label %229

31:                                               ; preds = %6
  br label %32

32:                                               ; preds = %226, %223, %213, %193, %174, %114, %107, %31
  %33 = load i8*, i8** %3, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %227

37:                                               ; preds = %32
  %38 = load i8*, i8** %3, align 8
  %39 = call i64 @strncmp(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  store i8* %43, i8** %3, align 8
  br label %226

44:                                               ; preds = %37
  %45 = load i32, i32* @incomment, align 4
  switch i32 %45, label %224 [
    i32 130, label %46
    i32 133, label %108
    i32 134, label %117
    i32 128, label %117
    i32 132, label %175
    i32 129, label %194
    i32 131, label %214
  ]

46:                                               ; preds = %44
  %47 = load i8*, i8** %3, align 8
  %48 = call i64 @strncmp(i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  store i32 129, i32* @incomment, align 4
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 3
  store i8* %52, i8** %3, align 8
  br label %107

53:                                               ; preds = %46
  %54 = load i8*, i8** %3, align 8
  %55 = call i64 @strncmp(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  store i32 132, i32* @incomment, align 4
  %58 = load i8*, i8** %3, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  store i8* %59, i8** %3, align 8
  br label %106

60:                                               ; preds = %53
  %61 = load i8*, i8** %3, align 8
  %62 = call i64 @strncmp(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  store i32 133, i32* @incomment, align 4
  %65 = load i8*, i8** %3, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 2
  store i8* %66, i8** %3, align 8
  br label %105

67:                                               ; preds = %60
  %68 = load i8*, i8** %3, align 8
  %69 = call i64 @strncmp(i8* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  store i32 134, i32* @incomment, align 4
  %72 = load i32, i32* @LS_DIRTY, align 4
  store i32 %72, i32* @linestate, align 4
  %73 = load i8*, i8** %3, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  store i8* %74, i8** %3, align 8
  br label %104

75:                                               ; preds = %67
  %76 = load i8*, i8** %3, align 8
  %77 = call i64 @strncmp(i8* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  store i32 128, i32* @incomment, align 4
  %80 = load i32, i32* @LS_DIRTY, align 4
  store i32 %80, i32* @linestate, align 4
  %81 = load i8*, i8** %3, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  store i8* %82, i8** %3, align 8
  br label %103

83:                                               ; preds = %75
  %84 = load i8*, i8** %3, align 8
  %85 = call i64 @strncmp(i8* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 1)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i32, i32* @LS_START, align 4
  store i32 %88, i32* @linestate, align 4
  %89 = load i8*, i8** %3, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  store i8* %90, i8** %3, align 8
  br label %102

91:                                               ; preds = %83
  %92 = load i8*, i8** %3, align 8
  %93 = load i8, i8* %92, align 1
  %94 = call i32* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8 signext %93)
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i8*, i8** %3, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  store i8* %98, i8** %3, align 8
  br label %101

99:                                               ; preds = %91
  %100 = load i8*, i8** %3, align 8
  store i8* %100, i8** %2, align 8
  br label %229

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101, %87
  br label %103

103:                                              ; preds = %102, %79
  br label %104

104:                                              ; preds = %103, %71
  br label %105

105:                                              ; preds = %104, %64
  br label %106

106:                                              ; preds = %105, %57
  br label %107

107:                                              ; preds = %106, %50
  br label %32

108:                                              ; preds = %44
  %109 = load i8*, i8** %3, align 8
  %110 = call i64 @strncmp(i8* %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 1)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  store i32 130, i32* @incomment, align 4
  %113 = load i32, i32* @LS_START, align 4
  store i32 %113, i32* @linestate, align 4
  br label %114

114:                                              ; preds = %112, %108
  %115 = load i8*, i8** %3, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  store i8* %116, i8** %3, align 8
  br label %32

117:                                              ; preds = %44, %44
  %118 = load i32, i32* @incomment, align 4
  %119 = icmp eq i32 %118, 134
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load i8*, i8** %3, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 0
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 39
  br i1 %125, label %135, label %126

126:                                              ; preds = %120, %117
  %127 = load i32, i32* @incomment, align 4
  %128 = icmp eq i32 %127, 128
  br i1 %128, label %129, label %138

129:                                              ; preds = %126
  %130 = load i8*, i8** %3, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 34
  br i1 %134, label %135, label %138

135:                                              ; preds = %129, %120
  store i32 130, i32* @incomment, align 4
  %136 = load i8*, i8** %3, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  store i8* %137, i8** %3, align 8
  br label %174

138:                                              ; preds = %129, %126
  %139 = load i8*, i8** %3, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 0
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 92
  br i1 %143, label %144, label %157

144:                                              ; preds = %138
  %145 = load i8*, i8** %3, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load i8*, i8** %3, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 1
  store i8* %152, i8** %3, align 8
  br label %156

153:                                              ; preds = %144
  %154 = load i8*, i8** %3, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 2
  store i8* %155, i8** %3, align 8
  br label %156

156:                                              ; preds = %153, %150
  br label %173

157:                                              ; preds = %138
  %158 = load i8*, i8** %3, align 8
  %159 = call i64 @strncmp(i8* %158, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 1)
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %157
  %162 = load i32, i32* @incomment, align 4
  %163 = icmp eq i32 %162, 134
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = call i32 @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %168

166:                                              ; preds = %161
  %167 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %168

168:                                              ; preds = %166, %164
  br label %172

169:                                              ; preds = %157
  %170 = load i8*, i8** %3, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 1
  store i8* %171, i8** %3, align 8
  br label %172

172:                                              ; preds = %169, %168
  br label %173

173:                                              ; preds = %172, %156
  br label %174

174:                                              ; preds = %173, %135
  br label %32

175:                                              ; preds = %44
  %176 = load i8*, i8** %3, align 8
  %177 = call i64 @strncmp(i8* %176, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 3)
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  store i32 131, i32* @incomment, align 4
  %180 = load i8*, i8** %3, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 3
  store i8* %181, i8** %3, align 8
  br label %193

182:                                              ; preds = %175
  %183 = load i8*, i8** %3, align 8
  %184 = call i64 @strncmp(i8* %183, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 2)
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  store i32 130, i32* @incomment, align 4
  %187 = load i8*, i8** %3, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 2
  store i8* %188, i8** %3, align 8
  br label %192

189:                                              ; preds = %182
  %190 = load i8*, i8** %3, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 1
  store i8* %191, i8** %3, align 8
  br label %192

192:                                              ; preds = %189, %186
  br label %193

193:                                              ; preds = %192, %179
  br label %32

194:                                              ; preds = %44
  %195 = load i8*, i8** %3, align 8
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %197, 42
  br i1 %198, label %199, label %202

199:                                              ; preds = %194
  store i32 132, i32* @incomment, align 4
  %200 = load i8*, i8** %3, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 1
  store i8* %201, i8** %3, align 8
  br label %213

202:                                              ; preds = %194
  %203 = load i8*, i8** %3, align 8
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp eq i32 %205, 47
  br i1 %206, label %207, label %210

207:                                              ; preds = %202
  store i32 133, i32* @incomment, align 4
  %208 = load i8*, i8** %3, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 1
  store i8* %209, i8** %3, align 8
  br label %212

210:                                              ; preds = %202
  store i32 130, i32* @incomment, align 4
  %211 = load i32, i32* @LS_DIRTY, align 4
  store i32 %211, i32* @linestate, align 4
  br label %212

212:                                              ; preds = %210, %207
  br label %213

213:                                              ; preds = %212, %199
  br label %32

214:                                              ; preds = %44
  %215 = load i8*, i8** %3, align 8
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp eq i32 %217, 47
  br i1 %218, label %219, label %222

219:                                              ; preds = %214
  store i32 130, i32* @incomment, align 4
  %220 = load i8*, i8** %3, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 1
  store i8* %221, i8** %3, align 8
  br label %223

222:                                              ; preds = %214
  store i32 132, i32* @incomment, align 4
  br label %223

223:                                              ; preds = %222, %219
  br label %32

224:                                              ; preds = %44
  %225 = call i32 (...) @abort() #3
  unreachable

226:                                              ; preds = %41
  br label %32

227:                                              ; preds = %32
  %228 = load i8*, i8** %3, align 8
  store i8* %228, i8** %2, align 8
  br label %229

229:                                              ; preds = %227, %99, %29
  %230 = load i8*, i8** %2, align 8
  ret i8* %230
}

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @error(i8*) #1

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
