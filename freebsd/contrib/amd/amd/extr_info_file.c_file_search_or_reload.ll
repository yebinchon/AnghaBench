; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_file.c_file_search_or_reload.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_file.c_file_search_or_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@INFO_MAX_LINE_LEN = common dso_local global i32 0, align 4
@XLOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"line %d in \22%s\22 is too long\00", align 1
@CFM_SUN_MAP_SYNTAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"%s returns %s\00", align 1
@XLOG_USER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"%s: line %d has no value field\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i8*, i8*, i8**, void (%struct.TYPE_8__*, i8*, i8*)*)* @file_search_or_reload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_search_or_reload(%struct.TYPE_8__* %0, i32* %1, i8* %2, i8* %3, i8** %4, void (%struct.TYPE_8__*, i8*, i8*)* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca void (%struct.TYPE_8__*, i8*, i8*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8** %4, i8*** %12, align 8
  store void (%struct.TYPE_8__*, i8*, i8*)* %5, void (%struct.TYPE_8__*, i8*, i8*)** %13, align 8
  %24 = load i32, i32* @INFO_MAX_LINE_LEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %14, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %28

28:                                               ; preds = %226, %6
  %29 = trunc i64 %25 to i32
  %30 = load i32*, i32** %9, align 8
  %31 = call i64 @file_read_line(i8* %27, i32 %29, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %227

33:                                               ; preds = %28
  %34 = call i32 @strlen(i8* %27)
  store i32 %34, i32* %21, align 4
  %35 = load i32, i32* %17, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %21, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %27, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 10
  br i1 %43, label %44, label %49

44:                                               ; preds = %33
  %45 = load i32, i32* @XLOG_WARNING, align 4
  %46 = load i32, i32* %17, align 4
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 (i32, i8*, ...) @plog(i32 %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %46, i8* %47)
  store i32 1, i32* %16, align 4
  br label %54

49:                                               ; preds = %33
  %50 = load i32, i32* %21, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %27, i64 %52
  store i8 0, i8* %53, align 1
  br label %54

54:                                               ; preds = %49, %44
  %55 = call i8* @strchr(i8* %27, i8 signext 35)
  store i8* %55, i8** %20, align 8
  %56 = load i8*, i8** %20, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i8*, i8** %20, align 8
  store i8 0, i8* %59, align 1
  br label %60

60:                                               ; preds = %58, %54
  store i8* %27, i8** %18, align 8
  br label %61

61:                                               ; preds = %79, %60
  %62 = load i8*, i8** %18, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load i8*, i8** %18, align 8
  %68 = load i8, i8* %67, align 1
  %69 = call i64 @isascii(i8 zeroext %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i8*, i8** %18, align 8
  %73 = load i8, i8* %72, align 1
  %74 = call i64 @isspace(i8 zeroext %73)
  %75 = icmp ne i64 %74, 0
  br label %76

76:                                               ; preds = %71, %66, %61
  %77 = phi i1 [ false, %66 ], [ false, %61 ], [ %75, %71 ]
  br i1 %77, label %78, label %82

78:                                               ; preds = %76
  br label %79

79:                                               ; preds = %78
  %80 = load i8*, i8** %18, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %18, align 8
  br label %61

82:                                               ; preds = %76
  %83 = load i8*, i8** %18, align 8
  %84 = load i8, i8* %83, align 1
  %85 = icmp ne i8 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  br label %209

87:                                               ; preds = %82
  %88 = load i8*, i8** %18, align 8
  store i8* %88, i8** %19, align 8
  br label %89

89:                                               ; preds = %110, %87
  %90 = load i8*, i8** %19, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %89
  %95 = load i8*, i8** %19, align 8
  %96 = load i8, i8* %95, align 1
  %97 = call i64 @isascii(i8 zeroext %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load i8*, i8** %19, align 8
  %101 = load i8, i8* %100, align 1
  %102 = call i64 @isspace(i8 zeroext %101)
  %103 = icmp ne i64 %102, 0
  %104 = xor i1 %103, true
  br label %105

105:                                              ; preds = %99, %94
  %106 = phi i1 [ true, %94 ], [ %104, %99 ]
  br label %107

107:                                              ; preds = %105, %89
  %108 = phi i1 [ false, %89 ], [ %106, %105 ]
  br i1 %108, label %109, label %113

109:                                              ; preds = %107
  br label %110

110:                                              ; preds = %109
  %111 = load i8*, i8** %19, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %19, align 8
  br label %89

113:                                              ; preds = %107
  %114 = load i8*, i8** %19, align 8
  %115 = load i8, i8* %114, align 1
  %116 = icmp ne i8 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load i8*, i8** %19, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %19, align 8
  store i8 0, i8* %118, align 1
  br label %120

120:                                              ; preds = %117, %113
  %121 = load void (%struct.TYPE_8__*, i8*, i8*)*, void (%struct.TYPE_8__*, i8*, i8*)** %13, align 8
  %122 = icmp ne void (%struct.TYPE_8__*, i8*, i8*)* %121, null
  br i1 %122, label %136, label %123

123:                                              ; preds = %120
  %124 = load i8*, i8** %11, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = load i8*, i8** %18, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %126, %129
  br i1 %130, label %131, label %208

131:                                              ; preds = %123
  %132 = load i8*, i8** %11, align 8
  %133 = load i8*, i8** %18, align 8
  %134 = call i64 @STREQ(i8* %132, i8* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %208

136:                                              ; preds = %131, %120
  br label %137

137:                                              ; preds = %154, %136
  %138 = load i8*, i8** %19, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %137
  %143 = load i8*, i8** %19, align 8
  %144 = load i8, i8* %143, align 1
  %145 = call i64 @isascii(i8 zeroext %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load i8*, i8** %19, align 8
  %149 = load i8, i8* %148, align 1
  %150 = call i64 @isspace(i8 zeroext %149)
  %151 = icmp ne i64 %150, 0
  br label %152

152:                                              ; preds = %147, %142, %137
  %153 = phi i1 [ false, %142 ], [ false, %137 ], [ %151, %147 ]
  br i1 %153, label %154, label %157

154:                                              ; preds = %152
  %155 = load i8*, i8** %19, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %19, align 8
  br label %137

157:                                              ; preds = %152
  %158 = load i8*, i8** %19, align 8
  %159 = load i8, i8* %158, align 1
  %160 = icmp ne i8 %159, 0
  br i1 %160, label %161, label %202

161:                                              ; preds = %157
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %163, align 8
  %165 = icmp ne %struct.TYPE_7__* %164, null
  br i1 %165, label %166, label %179

166:                                              ; preds = %161
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @CFM_SUN_MAP_SYNTAX, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %166
  %176 = load i8*, i8** %18, align 8
  %177 = load i8*, i8** %19, align 8
  %178 = call i8* @sun_entry2amd(i8* %176, i8* %177)
  store i8* %178, i8** %22, align 8
  br label %182

179:                                              ; preds = %166, %161
  %180 = load i8*, i8** %19, align 8
  %181 = call i8* @xstrdup(i8* %180)
  store i8* %181, i8** %22, align 8
  br label %182

182:                                              ; preds = %179, %175
  %183 = load void (%struct.TYPE_8__*, i8*, i8*)*, void (%struct.TYPE_8__*, i8*, i8*)** %13, align 8
  %184 = icmp ne void (%struct.TYPE_8__*, i8*, i8*)* %183, null
  br i1 %184, label %185, label %191

185:                                              ; preds = %182
  %186 = load void (%struct.TYPE_8__*, i8*, i8*)*, void (%struct.TYPE_8__*, i8*, i8*)** %13, align 8
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %188 = load i8*, i8** %18, align 8
  %189 = call i8* @xstrdup(i8* %188)
  %190 = load i8*, i8** %22, align 8
  call void %186(%struct.TYPE_8__* %187, i8* %189, i8* %190)
  br label %197

191:                                              ; preds = %182
  %192 = load i8*, i8** %22, align 8
  %193 = load i8**, i8*** %12, align 8
  store i8* %192, i8** %193, align 8
  %194 = load i8*, i8** %11, align 8
  %195 = load i8*, i8** %22, align 8
  %196 = call i32 @dlog(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %194, i8* %195)
  br label %197

197:                                              ; preds = %191, %185
  %198 = load void (%struct.TYPE_8__*, i8*, i8*)*, void (%struct.TYPE_8__*, i8*, i8*)** %13, align 8
  %199 = icmp ne void (%struct.TYPE_8__*, i8*, i8*)* %198, null
  br i1 %199, label %201, label %200

200:                                              ; preds = %197
  store i32 0, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %235

201:                                              ; preds = %197
  br label %207

202:                                              ; preds = %157
  %203 = load i32, i32* @XLOG_USER, align 4
  %204 = load i8*, i8** %10, align 8
  %205 = load i32, i32* %17, align 4
  %206 = call i32 (i32, i8*, ...) @plog(i32 %203, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %204, i32 %205)
  br label %207

207:                                              ; preds = %202, %201
  br label %208

208:                                              ; preds = %207, %131, %123
  br label %209

209:                                              ; preds = %208, %86
  %210 = load i32, i32* %16, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %226

212:                                              ; preds = %209
  br label %213

213:                                              ; preds = %224, %212
  %214 = trunc i64 %25 to i32
  %215 = load i32*, i32** %9, align 8
  %216 = call i64 @fgets(i8* %27, i32 %214, i32* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %213
  %219 = call i8* @strchr(i8* %27, i8 signext 10)
  %220 = icmp ne i8* %219, null
  %221 = xor i1 %220, true
  br label %222

222:                                              ; preds = %218, %213
  %223 = phi i1 [ false, %213 ], [ %221, %218 ]
  br i1 %223, label %224, label %225

224:                                              ; preds = %222
  br label %213

225:                                              ; preds = %222
  store i32 0, i32* %16, align 4
  br label %226

226:                                              ; preds = %225, %209
  br label %28

227:                                              ; preds = %28
  %228 = load void (%struct.TYPE_8__*, i8*, i8*)*, void (%struct.TYPE_8__*, i8*, i8*)** %13, align 8
  %229 = icmp ne void (%struct.TYPE_8__*, i8*, i8*)* %228, null
  br i1 %229, label %230, label %231

230:                                              ; preds = %227
  br label %233

231:                                              ; preds = %227
  %232 = load i32, i32* @ENOENT, align 4
  br label %233

233:                                              ; preds = %231, %230
  %234 = phi i32 [ 0, %230 ], [ %232, %231 ]
  store i32 %234, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %235

235:                                              ; preds = %233, %200
  %236 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %236)
  %237 = load i32, i32* %7, align 4
  ret i32 %237
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @file_read_line(i8*, i32, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @plog(i32, i8*, ...) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @isascii(i8 zeroext) #2

declare dso_local i64 @isspace(i8 zeroext) #2

declare dso_local i64 @STREQ(i8*, i8*) #2

declare dso_local i8* @sun_entry2amd(i8*, i8*) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i32 @dlog(i8*, i8*, i8*) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
