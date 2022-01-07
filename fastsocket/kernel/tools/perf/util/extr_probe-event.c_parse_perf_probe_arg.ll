; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c_parse_perf_probe_arg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c_parse_perf_probe_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_probe_arg = type { i8*, i32*, %struct.perf_probe_arg_field*, i32* }
%struct.perf_probe_arg_field = type { i32, i8*, %struct.perf_probe_arg_field*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"parsing arg: %s into \00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"name:%s \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"type:%s \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"-.[\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Array index must be a number.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"Argument parse error: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"%s(%d), \00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"%s(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.perf_probe_arg*)* @parse_perf_probe_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_perf_probe_arg(i8* %0, %struct.perf_probe_arg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.perf_probe_arg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.perf_probe_arg_field**, align 8
  store i8* %0, i8** %4, align 8
  store %struct.perf_probe_arg* %1, %struct.perf_probe_arg** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @strchr(i8* %11, i8 signext 61)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %42

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = ptrtoint i8* %17 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = call i8* @strndup(i8* %16, i32 %22)
  %24 = bitcast i8* %23 to i32*
  %25 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %26 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %25, i32 0, i32 1
  store i32* %24, i32** %26, align 8
  %27 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %28 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %15
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %304

34:                                               ; preds = %15
  %35 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %36 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = bitcast i32* %37 to i8*
  %39 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  store i8* %41, i8** %4, align 8
  br label %42

42:                                               ; preds = %34, %2
  %43 = load i8*, i8** %4, align 8
  %44 = call i8* @strchr(i8* %43, i8 signext 58)
  store i8* %44, i8** %6, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %68

47:                                               ; preds = %42
  %48 = load i8*, i8** %6, align 8
  store i8 0, i8* %48, align 1
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = call i8* @strdup(i8* %50)
  %52 = bitcast i8* %51 to i32*
  %53 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %54 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %53, i32 0, i32 3
  store i32* %52, i32** %54, align 8
  %55 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %56 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %304

62:                                               ; preds = %47
  %63 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %64 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = bitcast i32* %65 to i8*
  %67 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %62, %42
  %69 = load i8*, i8** %4, align 8
  %70 = call i8* @strpbrk(i8* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i8* %70, i8** %6, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @is_c_varname(i8* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i8*, i8** %6, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %94, label %77

77:                                               ; preds = %74, %68
  %78 = load i8*, i8** %4, align 8
  %79 = call i8* @strdup(i8* %78)
  %80 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %81 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  %82 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %83 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %77
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %304

89:                                               ; preds = %77
  %90 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %91 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %92)
  store i32 0, i32* %3, align 4
  br label %304

94:                                               ; preds = %74
  %95 = load i8*, i8** %4, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = load i8*, i8** %4, align 8
  %98 = ptrtoint i8* %96 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  %101 = trunc i64 %100 to i32
  %102 = call i8* @strndup(i8* %95, i32 %101)
  %103 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %104 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  %105 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %106 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %94
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %304

112:                                              ; preds = %94
  %113 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %114 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  store i8* %115, i8** %7, align 8
  %116 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %117 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %118)
  %120 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %121 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %120, i32 0, i32 2
  store %struct.perf_probe_arg_field** %121, %struct.perf_probe_arg_field*** %8, align 8
  br label %122

122:                                              ; preds = %248, %112
  %123 = call %struct.perf_probe_arg_field* @zalloc(i32 32)
  %124 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  store %struct.perf_probe_arg_field* %123, %struct.perf_probe_arg_field** %124, align 8
  %125 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  %126 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %125, align 8
  %127 = icmp eq %struct.perf_probe_arg_field* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %304

131:                                              ; preds = %122
  %132 = load i8*, i8** %6, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 91
  br i1 %135, label %136, label %169

136:                                              ; preds = %131
  %137 = load i8*, i8** %6, align 8
  store i8* %137, i8** %4, align 8
  %138 = load i8*, i8** %4, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 1
  %140 = call i32 @strtol(i8* %139, i8** %6, i32 0)
  %141 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  %142 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %141, align 8
  %143 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %142, i32 0, i32 3
  store i32 %140, i32* %143, align 8
  %144 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  %145 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %144, align 8
  %146 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  %147 = load i8*, i8** %6, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp ne i32 %149, 93
  br i1 %150, label %156, label %151

151:                                              ; preds = %136
  %152 = load i8*, i8** %6, align 8
  %153 = load i8*, i8** %4, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 1
  %155 = icmp eq i8* %152, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %151, %136
  %157 = call i32 (i8*, ...) @semantic_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %3, align 4
  br label %304

160:                                              ; preds = %151
  %161 = load i8*, i8** %6, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %6, align 8
  %163 = load i8*, i8** %6, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %160
  store i8* null, i8** %6, align 8
  br label %168

168:                                              ; preds = %167, %160
  br label %201

169:                                              ; preds = %131
  %170 = load i8*, i8** %6, align 8
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 46
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = load i8*, i8** %6, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 1
  store i8* %176, i8** %4, align 8
  %177 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  %178 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %177, align 8
  %179 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %178, i32 0, i32 0
  store i32 0, i32* %179, align 8
  br label %198

180:                                              ; preds = %169
  %181 = load i8*, i8** %6, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 1
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 62
  br i1 %185, label %186, label %192

186:                                              ; preds = %180
  %187 = load i8*, i8** %6, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 2
  store i8* %188, i8** %4, align 8
  %189 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  %190 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %189, align 8
  %191 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %190, i32 0, i32 0
  store i32 1, i32* %191, align 8
  br label %197

192:                                              ; preds = %180
  %193 = load i8*, i8** %4, align 8
  %194 = call i32 (i8*, ...) @semantic_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %193)
  %195 = load i32, i32* @EINVAL, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %3, align 4
  br label %304

197:                                              ; preds = %186
  br label %198

198:                                              ; preds = %197, %174
  %199 = load i8*, i8** %4, align 8
  %200 = call i8* @strpbrk(i8* %199, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i8* %200, i8** %6, align 8
  br label %201

201:                                              ; preds = %198, %168
  %202 = load i8*, i8** %6, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %204, label %247

204:                                              ; preds = %201
  %205 = load i8*, i8** %4, align 8
  %206 = load i8*, i8** %6, align 8
  %207 = load i8*, i8** %4, align 8
  %208 = ptrtoint i8* %206 to i64
  %209 = ptrtoint i8* %207 to i64
  %210 = sub i64 %208, %209
  %211 = trunc i64 %210 to i32
  %212 = call i8* @strndup(i8* %205, i32 %211)
  %213 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  %214 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %213, align 8
  %215 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %214, i32 0, i32 1
  store i8* %212, i8** %215, align 8
  %216 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  %217 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %216, align 8
  %218 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %217, i32 0, i32 1
  %219 = load i8*, i8** %218, align 8
  %220 = icmp eq i8* %219, null
  br i1 %220, label %221, label %224

221:                                              ; preds = %204
  %222 = load i32, i32* @ENOMEM, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %3, align 4
  br label %304

224:                                              ; preds = %204
  %225 = load i8*, i8** %4, align 8
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp ne i32 %227, 91
  br i1 %228, label %229, label %234

229:                                              ; preds = %224
  %230 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  %231 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %230, align 8
  %232 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %231, i32 0, i32 1
  %233 = load i8*, i8** %232, align 8
  store i8* %233, i8** %7, align 8
  br label %234

234:                                              ; preds = %229, %224
  %235 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  %236 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %235, align 8
  %237 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %236, i32 0, i32 1
  %238 = load i8*, i8** %237, align 8
  %239 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  %240 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %239, align 8
  %241 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %238, i32 %242)
  %244 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  %245 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %244, align 8
  %246 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %245, i32 0, i32 2
  store %struct.perf_probe_arg_field** %246, %struct.perf_probe_arg_field*** %8, align 8
  br label %247

247:                                              ; preds = %234, %201
  br label %248

248:                                              ; preds = %247
  %249 = load i8*, i8** %6, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %122, label %251

251:                                              ; preds = %248
  %252 = load i8*, i8** %4, align 8
  %253 = call i8* @strdup(i8* %252)
  %254 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  %255 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %254, align 8
  %256 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %255, i32 0, i32 1
  store i8* %253, i8** %256, align 8
  %257 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  %258 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %257, align 8
  %259 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %258, i32 0, i32 1
  %260 = load i8*, i8** %259, align 8
  %261 = icmp eq i8* %260, null
  br i1 %261, label %262, label %265

262:                                              ; preds = %251
  %263 = load i32, i32* @ENOMEM, align 4
  %264 = sub nsw i32 0, %263
  store i32 %264, i32* %3, align 4
  br label %304

265:                                              ; preds = %251
  %266 = load i8*, i8** %4, align 8
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i32
  %269 = icmp ne i32 %268, 91
  br i1 %269, label %270, label %275

270:                                              ; preds = %265
  %271 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  %272 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %271, align 8
  %273 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %272, i32 0, i32 1
  %274 = load i8*, i8** %273, align 8
  store i8* %274, i8** %7, align 8
  br label %275

275:                                              ; preds = %270, %265
  %276 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  %277 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %276, align 8
  %278 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %277, i32 0, i32 1
  %279 = load i8*, i8** %278, align 8
  %280 = load %struct.perf_probe_arg_field**, %struct.perf_probe_arg_field*** %8, align 8
  %281 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %280, align 8
  %282 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %279, i32 %283)
  %285 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %286 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %285, i32 0, i32 1
  %287 = load i32*, i32** %286, align 8
  %288 = icmp ne i32* %287, null
  br i1 %288, label %303, label %289

289:                                              ; preds = %275
  %290 = load i8*, i8** %7, align 8
  %291 = call i8* @strdup(i8* %290)
  %292 = bitcast i8* %291 to i32*
  %293 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %294 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %293, i32 0, i32 1
  store i32* %292, i32** %294, align 8
  %295 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %5, align 8
  %296 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %295, i32 0, i32 1
  %297 = load i32*, i32** %296, align 8
  %298 = icmp eq i32* %297, null
  br i1 %298, label %299, label %302

299:                                              ; preds = %289
  %300 = load i32, i32* @ENOMEM, align 4
  %301 = sub nsw i32 0, %300
  store i32 %301, i32* %3, align 4
  br label %304

302:                                              ; preds = %289
  br label %303

303:                                              ; preds = %302, %275
  store i32 0, i32* %3, align 4
  br label %304

304:                                              ; preds = %303, %299, %262, %221, %192, %156, %128, %109, %89, %86, %59, %31
  %305 = load i32, i32* %3, align 4
  ret i32 %305
}

declare dso_local i32 @pr_debug(i8*, i8*, ...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strndup(i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i32 @is_c_varname(i8*) #1

declare dso_local %struct.perf_probe_arg_field* @zalloc(i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @semantic_error(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
