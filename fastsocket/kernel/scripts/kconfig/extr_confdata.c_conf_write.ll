; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_confdata.c_conf_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_confdata.c_conf_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.menu* }
%struct.menu = type { %struct.menu*, %struct.menu*, %struct.menu*, %struct.symbol* }
%struct.symbol = type { i32, i32, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"KCONFIG_OVERWRITECONFIG\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%s.tmpconfig.%d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"KERNELVERSION\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"KCONFIG_NOTIMESTAMP\00", align 1
@.str.7 = private unnamed_addr constant [86 x i8] c"#\0A# Automatically generated make config: don't edit\0A# Linux kernel version: %s\0A%s%s#\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"# \00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rootmenu = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"\0A#\0A# %s\0A#\0A\00", align 1
@SYMBOL_CHOICE = common dso_local global i32 0, align 4
@SYMBOL_WRITE = common dso_local global i32 0, align 4
@modules_sym = common dso_local global %struct.symbol* null, align 8
@.str.11 = private unnamed_addr constant [24 x i8] c"# CONFIG_%s is not set\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"CONFIG_%s=m\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"CONFIG_%s=y\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"CONFIG_%s=\22\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"\22\\\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"\\%c\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"CONFIG_%s=%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c".old\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"#\0A# configuration written to %s\0A#\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @conf_write(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca %struct.menu*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca [128 x i8], align 16
  %10 = alloca [128 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.stat, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 1, i32* %15, align 4
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %20, align 16
  %21 = load i8*, i8** %3, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %78

23:                                               ; preds = %1
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %78

29:                                               ; preds = %23
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @stat(i8* %30, %struct.stat* %17)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @S_ISDIR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @strcpy(i8* %39, i8* %40)
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %43 = call i32 @strcat(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %44 = call i8* (...) @conf_get_configname()
  store i8* %44, i8** %7, align 8
  br label %77

45:                                               ; preds = %33, %29
  %46 = load i8*, i8** %3, align 8
  %47 = call i8* @strrchr(i8* %46, i8 signext 47)
  store i8* %47, i8** %18, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %74

49:                                               ; preds = %45
  %50 = load i8*, i8** %18, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = add nsw i64 %54, 1
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %19, align 4
  %57 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %58 = load i8*, i8** %3, align 8
  %59 = load i32, i32* %19, align 4
  %60 = call i32 @memcpy(i8* %57, i8* %58, i32 %59)
  %61 = load i32, i32* %19, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 %62
  store i8 0, i8* %63, align 1
  %64 = load i8*, i8** %18, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = icmp ne i8 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %49
  %69 = load i8*, i8** %18, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  store i8* %70, i8** %7, align 8
  br label %73

71:                                               ; preds = %49
  %72 = call i8* (...) @conf_get_configname()
  store i8* %72, i8** %7, align 8
  br label %73

73:                                               ; preds = %71, %68
  br label %76

74:                                               ; preds = %45
  %75 = load i8*, i8** %3, align 8
  store i8* %75, i8** %7, align 8
  br label %76

76:                                               ; preds = %74, %73
  br label %77

77:                                               ; preds = %76, %38
  br label %80

78:                                               ; preds = %23, %1
  %79 = call i8* (...) @conf_get_configname()
  store i8* %79, i8** %7, align 8
  br label %80

80:                                               ; preds = %78, %77
  %81 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %82 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %82, i8* %83)
  %85 = call i8* @getenv(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i8* %85, i8** %16, align 8
  %86 = load i8*, i8** %16, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = load i8*, i8** %16, align 8
  %90 = load i8, i8* %89, align 1
  %91 = icmp ne i8 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %88, %80
  %93 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %94 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %95 = call i64 (...) @getpid()
  %96 = trunc i64 %95 to i32
  %97 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %93, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %94, i32 %96)
  %98 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %99 = call i32* @fopen(i8* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %99, i32** %4, align 8
  br label %104

100:                                              ; preds = %88
  %101 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %101, align 16
  %102 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %103 = call i32* @fopen(i8* %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %103, i32** %4, align 8
  br label %104

104:                                              ; preds = %100, %92
  %105 = load i32*, i32** %4, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %104
  store i32 1, i32* %2, align 4
  br label %368

108:                                              ; preds = %104
  %109 = call %struct.symbol* @sym_lookup(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 0)
  store %struct.symbol* %109, %struct.symbol** %5, align 8
  %110 = load %struct.symbol*, %struct.symbol** %5, align 8
  %111 = call i32 @sym_calc_value(%struct.symbol* %110)
  %112 = call i32 @time(i32* %14)
  %113 = call i8* @getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  store i8* %113, i8** %16, align 8
  %114 = load i8*, i8** %16, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %108
  %117 = load i8*, i8** %16, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  store i32 0, i32* %15, align 4
  br label %122

122:                                              ; preds = %121, %116, %108
  %123 = load i32*, i32** %4, align 8
  %124 = call i8* @_(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.7, i64 0, i64 0))
  %125 = load %struct.symbol*, %struct.symbol** %5, align 8
  %126 = call i8* @sym_get_string_value(%struct.symbol* %125)
  %127 = load i32, i32* %15, align 4
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %131 = load i32, i32* %15, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %122
  %134 = call i8* @ctime(i32* %14)
  br label %136

135:                                              ; preds = %122
  br label %136

136:                                              ; preds = %135, %133
  %137 = phi i8* [ %134, %133 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), %135 ]
  %138 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %123, i8* %124, i8* %126, i8* %130, i8* %137)
  %139 = call i32 (...) @conf_get_changed()
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %136
  %142 = call i32 (...) @sym_clear_all_valid()
  br label %143

143:                                              ; preds = %141, %136
  %144 = load %struct.menu*, %struct.menu** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rootmenu, i32 0, i32 0), align 8
  store %struct.menu* %144, %struct.menu** %6, align 8
  br label %145

145:                                              ; preds = %341, %311, %143
  %146 = load %struct.menu*, %struct.menu** %6, align 8
  %147 = icmp ne %struct.menu* %146, null
  br i1 %147, label %148, label %342

148:                                              ; preds = %145
  %149 = load %struct.menu*, %struct.menu** %6, align 8
  %150 = getelementptr inbounds %struct.menu, %struct.menu* %149, i32 0, i32 3
  %151 = load %struct.symbol*, %struct.symbol** %150, align 8
  store %struct.symbol* %151, %struct.symbol** %5, align 8
  %152 = load %struct.symbol*, %struct.symbol** %5, align 8
  %153 = icmp ne %struct.symbol* %152, null
  br i1 %153, label %165, label %154

154:                                              ; preds = %148
  %155 = load %struct.menu*, %struct.menu** %6, align 8
  %156 = call i32 @menu_is_visible(%struct.menu* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %154
  br label %306

159:                                              ; preds = %154
  %160 = load %struct.menu*, %struct.menu** %6, align 8
  %161 = call i8* @menu_get_prompt(%struct.menu* %160)
  store i8* %161, i8** %13, align 8
  %162 = load i32*, i32** %4, align 8
  %163 = load i8*, i8** %13, align 8
  %164 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %162, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %163)
  br label %305

165:                                              ; preds = %148
  %166 = load %struct.symbol*, %struct.symbol** %5, align 8
  %167 = getelementptr inbounds %struct.symbol, %struct.symbol* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @SYMBOL_CHOICE, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %304, label %172

172:                                              ; preds = %165
  %173 = load %struct.symbol*, %struct.symbol** %5, align 8
  %174 = call i32 @sym_calc_value(%struct.symbol* %173)
  %175 = load %struct.symbol*, %struct.symbol** %5, align 8
  %176 = getelementptr inbounds %struct.symbol, %struct.symbol* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @SYMBOL_WRITE, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %172
  br label %306

182:                                              ; preds = %172
  %183 = load i32, i32* @SYMBOL_WRITE, align 4
  %184 = xor i32 %183, -1
  %185 = load %struct.symbol*, %struct.symbol** %5, align 8
  %186 = getelementptr inbounds %struct.symbol, %struct.symbol* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = and i32 %187, %184
  store i32 %188, i32* %186, align 8
  %189 = load %struct.symbol*, %struct.symbol** %5, align 8
  %190 = getelementptr inbounds %struct.symbol, %struct.symbol* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %11, align 4
  %192 = load i32, i32* %11, align 4
  %193 = icmp eq i32 %192, 131
  br i1 %193, label %194, label %204

194:                                              ; preds = %182
  %195 = load %struct.symbol*, %struct.symbol** @modules_sym, align 8
  %196 = call i32 @sym_calc_value(%struct.symbol* %195)
  %197 = load %struct.symbol*, %struct.symbol** @modules_sym, align 8
  %198 = getelementptr inbounds %struct.symbol, %struct.symbol* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp eq i64 %200, 129
  br i1 %201, label %202, label %203

202:                                              ; preds = %194
  store i32 135, i32* %11, align 4
  br label %203

203:                                              ; preds = %202, %194
  br label %204

204:                                              ; preds = %203, %182
  %205 = load i32, i32* %11, align 4
  switch i32 %205, label %303 [
    i32 135, label %206
    i32 131, label %206
    i32 132, label %228
    i32 134, label %266
    i32 133, label %294
  ]

206:                                              ; preds = %204, %204
  %207 = load %struct.symbol*, %struct.symbol** %5, align 8
  %208 = call i32 @sym_get_tristate_value(%struct.symbol* %207)
  switch i32 %208, label %227 [
    i32 129, label %209
    i32 130, label %215
    i32 128, label %221
  ]

209:                                              ; preds = %206
  %210 = load i32*, i32** %4, align 8
  %211 = load %struct.symbol*, %struct.symbol** %5, align 8
  %212 = getelementptr inbounds %struct.symbol, %struct.symbol* %211, i32 0, i32 2
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %210, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i8* %213)
  br label %227

215:                                              ; preds = %206
  %216 = load i32*, i32** %4, align 8
  %217 = load %struct.symbol*, %struct.symbol** %5, align 8
  %218 = getelementptr inbounds %struct.symbol, %struct.symbol* %217, i32 0, i32 2
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %216, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8* %219)
  br label %227

221:                                              ; preds = %206
  %222 = load i32*, i32** %4, align 8
  %223 = load %struct.symbol*, %struct.symbol** %5, align 8
  %224 = getelementptr inbounds %struct.symbol, %struct.symbol* %223, i32 0, i32 2
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %222, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* %225)
  br label %227

227:                                              ; preds = %206, %221, %215, %209
  br label %303

228:                                              ; preds = %204
  %229 = load %struct.symbol*, %struct.symbol** %5, align 8
  %230 = call i8* @sym_get_string_value(%struct.symbol* %229)
  store i8* %230, i8** %13, align 8
  %231 = load i32*, i32** %4, align 8
  %232 = load %struct.symbol*, %struct.symbol** %5, align 8
  %233 = getelementptr inbounds %struct.symbol, %struct.symbol* %232, i32 0, i32 2
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %231, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* %234)
  br label %236

236:                                              ; preds = %228, %255
  %237 = load i8*, i8** %13, align 8
  %238 = call i32 @strcspn(i8* %237, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  store i32 %238, i32* %12, align 4
  %239 = load i32, i32* %12, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %250

241:                                              ; preds = %236
  %242 = load i8*, i8** %13, align 8
  %243 = load i32, i32* %12, align 4
  %244 = load i32*, i32** %4, align 8
  %245 = call i32 @fwrite(i8* %242, i32 %243, i32 1, i32* %244)
  %246 = load i32, i32* %12, align 4
  %247 = load i8*, i8** %13, align 8
  %248 = sext i32 %246 to i64
  %249 = getelementptr inbounds i8, i8* %247, i64 %248
  store i8* %249, i8** %13, align 8
  br label %250

250:                                              ; preds = %241, %236
  %251 = load i8*, i8** %13, align 8
  %252 = load i8, i8* %251, align 1
  %253 = icmp ne i8 %252, 0
  br i1 %253, label %255, label %254

254:                                              ; preds = %250
  br label %263

255:                                              ; preds = %250
  %256 = load i32*, i32** %4, align 8
  %257 = load i8*, i8** %13, align 8
  %258 = getelementptr inbounds i8, i8* %257, i32 1
  store i8* %258, i8** %13, align 8
  %259 = load i8, i8* %257, align 1
  %260 = sext i8 %259 to i64
  %261 = inttoptr i64 %260 to i8*
  %262 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %256, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* %261)
  br label %236

263:                                              ; preds = %254
  %264 = load i32*, i32** %4, align 8
  %265 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i32* %264)
  br label %303

266:                                              ; preds = %204
  %267 = load %struct.symbol*, %struct.symbol** %5, align 8
  %268 = call i8* @sym_get_string_value(%struct.symbol* %267)
  store i8* %268, i8** %13, align 8
  %269 = load i8*, i8** %13, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 0
  %271 = load i8, i8* %270, align 1
  %272 = sext i8 %271 to i32
  %273 = icmp ne i32 %272, 48
  br i1 %273, label %286, label %274

274:                                              ; preds = %266
  %275 = load i8*, i8** %13, align 8
  %276 = getelementptr inbounds i8, i8* %275, i64 1
  %277 = load i8, i8* %276, align 1
  %278 = sext i8 %277 to i32
  %279 = icmp ne i32 %278, 120
  br i1 %279, label %280, label %293

280:                                              ; preds = %274
  %281 = load i8*, i8** %13, align 8
  %282 = getelementptr inbounds i8, i8* %281, i64 1
  %283 = load i8, i8* %282, align 1
  %284 = sext i8 %283 to i32
  %285 = icmp ne i32 %284, 88
  br i1 %285, label %286, label %293

286:                                              ; preds = %280, %266
  %287 = load i32*, i32** %4, align 8
  %288 = load %struct.symbol*, %struct.symbol** %5, align 8
  %289 = getelementptr inbounds %struct.symbol, %struct.symbol* %288, i32 0, i32 2
  %290 = load i8*, i8** %289, align 8
  %291 = load i8*, i8** %13, align 8
  %292 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %287, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %290, i8* %291)
  br label %303

293:                                              ; preds = %280, %274
  br label %294

294:                                              ; preds = %204, %293
  %295 = load %struct.symbol*, %struct.symbol** %5, align 8
  %296 = call i8* @sym_get_string_value(%struct.symbol* %295)
  store i8* %296, i8** %13, align 8
  %297 = load i32*, i32** %4, align 8
  %298 = load %struct.symbol*, %struct.symbol** %5, align 8
  %299 = getelementptr inbounds %struct.symbol, %struct.symbol* %298, i32 0, i32 2
  %300 = load i8*, i8** %299, align 8
  %301 = load i8*, i8** %13, align 8
  %302 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %297, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %300, i8* %301)
  br label %303

303:                                              ; preds = %204, %294, %286, %263, %227
  br label %304

304:                                              ; preds = %303, %165
  br label %305

305:                                              ; preds = %304, %159
  br label %306

306:                                              ; preds = %305, %181, %158
  %307 = load %struct.menu*, %struct.menu** %6, align 8
  %308 = getelementptr inbounds %struct.menu, %struct.menu* %307, i32 0, i32 2
  %309 = load %struct.menu*, %struct.menu** %308, align 8
  %310 = icmp ne %struct.menu* %309, null
  br i1 %310, label %311, label %315

311:                                              ; preds = %306
  %312 = load %struct.menu*, %struct.menu** %6, align 8
  %313 = getelementptr inbounds %struct.menu, %struct.menu* %312, i32 0, i32 2
  %314 = load %struct.menu*, %struct.menu** %313, align 8
  store %struct.menu* %314, %struct.menu** %6, align 8
  br label %145

315:                                              ; preds = %306
  %316 = load %struct.menu*, %struct.menu** %6, align 8
  %317 = getelementptr inbounds %struct.menu, %struct.menu* %316, i32 0, i32 0
  %318 = load %struct.menu*, %struct.menu** %317, align 8
  %319 = icmp ne %struct.menu* %318, null
  br i1 %319, label %320, label %324

320:                                              ; preds = %315
  %321 = load %struct.menu*, %struct.menu** %6, align 8
  %322 = getelementptr inbounds %struct.menu, %struct.menu* %321, i32 0, i32 0
  %323 = load %struct.menu*, %struct.menu** %322, align 8
  store %struct.menu* %323, %struct.menu** %6, align 8
  br label %341

324:                                              ; preds = %315
  br label %325

325:                                              ; preds = %339, %324
  %326 = load %struct.menu*, %struct.menu** %6, align 8
  %327 = getelementptr inbounds %struct.menu, %struct.menu* %326, i32 0, i32 1
  %328 = load %struct.menu*, %struct.menu** %327, align 8
  store %struct.menu* %328, %struct.menu** %6, align 8
  %329 = icmp ne %struct.menu* %328, null
  br i1 %329, label %330, label %340

330:                                              ; preds = %325
  %331 = load %struct.menu*, %struct.menu** %6, align 8
  %332 = getelementptr inbounds %struct.menu, %struct.menu* %331, i32 0, i32 0
  %333 = load %struct.menu*, %struct.menu** %332, align 8
  %334 = icmp ne %struct.menu* %333, null
  br i1 %334, label %335, label %339

335:                                              ; preds = %330
  %336 = load %struct.menu*, %struct.menu** %6, align 8
  %337 = getelementptr inbounds %struct.menu, %struct.menu* %336, i32 0, i32 0
  %338 = load %struct.menu*, %struct.menu** %337, align 8
  store %struct.menu* %338, %struct.menu** %6, align 8
  br label %340

339:                                              ; preds = %330
  br label %325

340:                                              ; preds = %335, %325
  br label %341

341:                                              ; preds = %340, %320
  br label %145

342:                                              ; preds = %145
  %343 = load i32*, i32** %4, align 8
  %344 = call i32 @fclose(i32* %343)
  %345 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %346 = load i8, i8* %345, align 16
  %347 = icmp ne i8 %346, 0
  br i1 %347, label %348, label %363

348:                                              ; preds = %342
  %349 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %350 = load i8*, i8** %7, align 8
  %351 = call i32 @strcat(i8* %349, i8* %350)
  %352 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %353 = call i32 @strcat(i8* %352, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %354 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %355 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %356 = call i64 @rename(i8* %354, i8* %355)
  %357 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %358 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %359 = call i64 @rename(i8* %357, i8* %358)
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %362

361:                                              ; preds = %348
  store i32 1, i32* %2, align 4
  br label %368

362:                                              ; preds = %348
  br label %363

363:                                              ; preds = %362, %342
  %364 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i64 0, i64 0))
  %365 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %366 = call i32 @printf(i8* %364, i8* %365)
  %367 = call i32 @sym_set_change_count(i32 0)
  store i32 0, i32* %2, align 4
  br label %368

368:                                              ; preds = %363, %361, %107
  %369 = load i32, i32* %2, align 4
  ret i32 %369
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i8* @conf_get_configname(...) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local %struct.symbol* @sym_lookup(i8*, i32) #1

declare dso_local i32 @sym_calc_value(%struct.symbol*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @sym_get_string_value(%struct.symbol*) #1

declare dso_local i8* @ctime(i32*) #1

declare dso_local i32 @conf_get_changed(...) #1

declare dso_local i32 @sym_clear_all_valid(...) #1

declare dso_local i32 @menu_is_visible(%struct.menu*) #1

declare dso_local i8* @menu_get_prompt(%struct.menu*) #1

declare dso_local i32 @sym_get_tristate_value(%struct.symbol*) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @rename(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @sym_set_change_count(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
