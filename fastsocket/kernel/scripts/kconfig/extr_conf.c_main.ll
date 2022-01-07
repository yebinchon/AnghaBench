; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_conf.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_conf.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.timeval = type { i32, i32 }

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PACKAGE = common dso_local global i32 0, align 4
@LOCALEDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"osbBdD:nmyrh\00", align 1
@input_mode = common dso_local global i32 0, align 4
@sync_kconfig = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@defconfig_file = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"See README for usage info\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"%s: Kconfig file missing\0A\00", align 1
@.str.4 = private unnamed_addr constant [197 x i8] c"***\0A*** You have not yet configured your kernel!\0A*** (missing kernel config file \22%s\22)\0A***\0A*** Please run some configurator (e.g. \22make oldconfig\22 or\0A*** \22make menuconfig\22 or \22make xconfig\22).\0A***\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"***\0A*** Can't find default configuration \22%s\22!\0A***\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"KCONFIG_ALLCONFIG\00", align 1
@S_DEF_USER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"allno.config\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"allmod.config\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"allyes.config\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"allrandom.config\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"all.config\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"KCONFIG_NOSILENTUPDATE\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"\0A*** Kernel configuration requires explicit update.\0A\0A\00", align 1
@valid_stdin = common dso_local global i32 0, align 4
@def_no = common dso_local global i32 0, align 4
@def_yes = common dso_local global i32 0, align 4
@def_mod = common dso_local global i32 0, align 4
@def_random = common dso_local global i32 0, align 4
@def_default = common dso_local global i32 0, align 4
@rootmenu = common dso_local global i32 0, align 4
@rootEntry = common dso_local global i32* null, align 8
@conf_cnt = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [57 x i8] c"\0A*** Error during writing of the kernel configuration.\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [56 x i8] c"\0A*** Error during update of the kernel configuration.\0A\0A\00", align 1
@return_value = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca %struct.timeval, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @LC_ALL, align 4
  %12 = call i32 @setlocale(i32 %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @PACKAGE, align 4
  %14 = load i32, i32* @LOCALEDIR, align 4
  %15 = call i32 @bindtextdomain(i32 %13, i32 %14)
  %16 = load i32, i32* @PACKAGE, align 4
  %17 = call i32 @textdomain(i32 %16)
  br label %18

18:                                               ; preds = %55, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @getopt(i32 %19, i8** %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %21, i32* %6, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %56

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %50 [
    i32 111, label %25
    i32 115, label %26
    i32 98, label %27
    i32 66, label %28
    i32 100, label %29
    i32 68, label %30
    i32 110, label %32
    i32 109, label %33
    i32 121, label %34
    i32 114, label %35
    i32 104, label %46
  ]

25:                                               ; preds = %23
  store i32 135, i32* @input_mode, align 4
  br label %55

26:                                               ; preds = %23
  store i32 135, i32* @input_mode, align 4
  store i32 1, i32* @sync_kconfig, align 4
  br label %55

27:                                               ; preds = %23
  store i32 134, i32* @input_mode, align 4
  br label %55

28:                                               ; preds = %23
  store i32 133, i32* @input_mode, align 4
  br label %55

29:                                               ; preds = %23
  store i32 132, i32* @input_mode, align 4
  br label %55

30:                                               ; preds = %23
  store i32 132, i32* @input_mode, align 4
  %31 = load i8*, i8** @optarg, align 8
  store i8* %31, i8** @defconfig_file, align 8
  br label %55

32:                                               ; preds = %23
  store i32 130, i32* @input_mode, align 4
  br label %55

33:                                               ; preds = %23
  store i32 131, i32* @input_mode, align 4
  br label %55

34:                                               ; preds = %23
  store i32 128, i32* @input_mode, align 4
  br label %55

35:                                               ; preds = %23
  %36 = call i32 @gettimeofday(%struct.timeval* %9, i32* null)
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  %43 = mul nsw i32 %39, %42
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @srand(i32 %44)
  store i32 129, i32* @input_mode, align 4
  br label %55

46:                                               ; preds = %23
  %47 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %48 = call i32 (i8*, ...) @printf(i8* %47)
  %49 = call i32 @exit(i32 0) #3
  unreachable

50:                                               ; preds = %23
  %51 = load i32, i32* @stderr, align 4
  %52 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* %52)
  %54 = call i32 @exit(i32 1) #3
  unreachable

55:                                               ; preds = %35, %34, %33, %32, %30, %29, %28, %27, %26, %25
  br label %18

56:                                               ; preds = %18
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @optind, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (i8*, ...) @printf(i8* %61, i8* %64)
  %66 = call i32 @exit(i32 1) #3
  unreachable

67:                                               ; preds = %56
  %68 = load i8**, i8*** %5, align 8
  %69 = load i32, i32* @optind, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %7, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @conf_parse(i8* %73)
  %75 = load i32, i32* @sync_kconfig, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %67
  %78 = call i8* (...) @conf_get_configname()
  store i8* %78, i8** %7, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = call i64 @stat(i8* %79, %struct.stat* %8)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i32, i32* @stderr, align 4
  %84 = call i8* @_(i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.4, i64 0, i64 0))
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %83, i8* %84, i8* %85)
  %87 = call i32 @exit(i32 1) #3
  unreachable

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88, %67
  %90 = load i32, i32* @input_mode, align 4
  switch i32 %90, label %143 [
    i32 132, label %91
    i32 135, label %106
    i32 137, label %106
    i32 136, label %106
    i32 134, label %106
    i32 133, label %106
    i32 130, label %108
    i32 131, label %108
    i32 128, label %108
    i32 129, label %108
  ]

91:                                               ; preds = %89
  %92 = load i8*, i8** @defconfig_file, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = call i8* (...) @conf_get_default_confname()
  store i8* %95, i8** @defconfig_file, align 8
  br label %96

96:                                               ; preds = %94, %91
  %97 = load i8*, i8** @defconfig_file, align 8
  %98 = call i32 @conf_read(i8* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  %102 = load i8*, i8** @defconfig_file, align 8
  %103 = call i32 (i8*, ...) @printf(i8* %101, i8* %102)
  %104 = call i32 @exit(i32 1) #3
  unreachable

105:                                              ; preds = %96
  br label %144

106:                                              ; preds = %89, %89, %89, %89, %89
  %107 = call i32 @conf_read(i8* null)
  br label %144

108:                                              ; preds = %89, %89, %89, %89
  %109 = call i8* @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  store i8* %109, i8** %7, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %120

112:                                              ; preds = %108
  %113 = load i8*, i8** %7, align 8
  %114 = call i64 @stat(i8* %113, %struct.stat* %8)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = load i8*, i8** %7, align 8
  %118 = load i32, i32* @S_DEF_USER, align 4
  %119 = call i32 @conf_read_simple(i8* %117, i32 %118)
  br label %144

120:                                              ; preds = %112, %108
  %121 = load i32, i32* @input_mode, align 4
  switch i32 %121, label %126 [
    i32 130, label %122
    i32 131, label %123
    i32 128, label %124
    i32 129, label %125
  ]

122:                                              ; preds = %120
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %7, align 8
  br label %127

123:                                              ; preds = %120
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8** %7, align 8
  br label %127

124:                                              ; preds = %120
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8** %7, align 8
  br label %127

125:                                              ; preds = %120
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8** %7, align 8
  br label %127

126:                                              ; preds = %120
  br label %127

127:                                              ; preds = %126, %125, %124, %123, %122
  %128 = load i8*, i8** %7, align 8
  %129 = call i64 @stat(i8* %128, %struct.stat* %8)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %127
  %132 = load i8*, i8** %7, align 8
  %133 = load i32, i32* @S_DEF_USER, align 4
  %134 = call i32 @conf_read_simple(i8* %132, i32 %133)
  br label %142

135:                                              ; preds = %127
  %136 = call i64 @stat(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), %struct.stat* %8)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* @S_DEF_USER, align 4
  %140 = call i32 @conf_read_simple(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %138, %135
  br label %142

142:                                              ; preds = %141, %131
  br label %144

143:                                              ; preds = %89
  br label %144

144:                                              ; preds = %143, %142, %116, %106, %105
  %145 = load i32, i32* @sync_kconfig, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %176

147:                                              ; preds = %144
  %148 = call i64 (...) @conf_get_changed()
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %164

150:                                              ; preds = %147
  %151 = call i8* @getenv(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  store i8* %151, i8** %7, align 8
  %152 = load i8*, i8** %7, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %163

154:                                              ; preds = %150
  %155 = load i8*, i8** %7, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %154
  %160 = load i32, i32* @stderr, align 4
  %161 = call i8* @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0))
  %162 = call i32 (i32, i8*, ...) @fprintf(i32 %160, i8* %161)
  store i32 1, i32* %3, align 4
  br label %245

163:                                              ; preds = %154, %150
  br label %164

164:                                              ; preds = %163, %147
  %165 = call i64 @isatty(i32 0)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %164
  %168 = call i64 @isatty(i32 1)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = call i64 @isatty(i32 2)
  %172 = icmp ne i64 %171, 0
  br label %173

173:                                              ; preds = %170, %167, %164
  %174 = phi i1 [ false, %167 ], [ false, %164 ], [ %172, %170 ]
  %175 = zext i1 %174 to i32
  store i32 %175, i32* @valid_stdin, align 4
  br label %176

176:                                              ; preds = %173, %144
  %177 = load i32, i32* @input_mode, align 4
  switch i32 %177, label %212 [
    i32 130, label %178
    i32 128, label %181
    i32 131, label %184
    i32 129, label %187
    i32 132, label %190
    i32 136, label %193
    i32 137, label %193
    i32 134, label %195
    i32 133, label %195
    i32 135, label %195
  ]

178:                                              ; preds = %176
  %179 = load i32, i32* @def_no, align 4
  %180 = call i32 @conf_set_all_new_symbols(i32 %179)
  br label %212

181:                                              ; preds = %176
  %182 = load i32, i32* @def_yes, align 4
  %183 = call i32 @conf_set_all_new_symbols(i32 %182)
  br label %212

184:                                              ; preds = %176
  %185 = load i32, i32* @def_mod, align 4
  %186 = call i32 @conf_set_all_new_symbols(i32 %185)
  br label %212

187:                                              ; preds = %176
  %188 = load i32, i32* @def_random, align 4
  %189 = call i32 @conf_set_all_new_symbols(i32 %188)
  br label %212

190:                                              ; preds = %176
  %191 = load i32, i32* @def_default, align 4
  %192 = call i32 @conf_set_all_new_symbols(i32 %191)
  br label %212

193:                                              ; preds = %176, %176
  store i32* @rootmenu, i32** @rootEntry, align 8
  %194 = call i32 @conf(i32* @rootmenu)
  store i32 135, i32* @input_mode, align 4
  br label %195

195:                                              ; preds = %176, %176, %176, %193
  br label %196

196:                                              ; preds = %209, %195
  store i32 0, i32* @conf_cnt, align 4
  %197 = call i32 @check_conf(i32* @rootmenu)
  br label %198

198:                                              ; preds = %196
  %199 = load i32, i32* @conf_cnt, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %209

201:                                              ; preds = %198
  %202 = load i32, i32* @input_mode, align 4
  %203 = icmp ne i32 %202, 134
  br i1 %203, label %204, label %207

204:                                              ; preds = %201
  %205 = load i32, i32* @input_mode, align 4
  %206 = icmp ne i32 %205, 133
  br label %207

207:                                              ; preds = %204, %201
  %208 = phi i1 [ false, %201 ], [ %206, %204 ]
  br label %209

209:                                              ; preds = %207, %198
  %210 = phi i1 [ false, %198 ], [ %208, %207 ]
  br i1 %210, label %196, label %211

211:                                              ; preds = %209
  br label %212

212:                                              ; preds = %176, %211, %190, %187, %184, %181, %178
  %213 = load i32, i32* @sync_kconfig, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %234

215:                                              ; preds = %212
  %216 = call i64 (...) @conf_get_changed()
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %226

218:                                              ; preds = %215
  %219 = call i64 @conf_write(i32* null)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %218
  %222 = load i32, i32* @stderr, align 4
  %223 = call i8* @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.14, i64 0, i64 0))
  %224 = call i32 (i32, i8*, ...) @fprintf(i32 %222, i8* %223)
  %225 = call i32 @exit(i32 1) #3
  unreachable

226:                                              ; preds = %218, %215
  %227 = call i64 (...) @conf_write_autoconf()
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %226
  %230 = load i32, i32* @stderr, align 4
  %231 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.15, i64 0, i64 0))
  %232 = call i32 (i32, i8*, ...) @fprintf(i32 %230, i8* %231)
  store i32 1, i32* %3, align 4
  br label %245

233:                                              ; preds = %226
  br label %243

234:                                              ; preds = %212
  %235 = call i64 @conf_write(i32* null)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %234
  %238 = load i32, i32* @stderr, align 4
  %239 = call i8* @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.14, i64 0, i64 0))
  %240 = call i32 (i32, i8*, ...) @fprintf(i32 %238, i8* %239)
  %241 = call i32 @exit(i32 1) #3
  unreachable

242:                                              ; preds = %234
  br label %243

243:                                              ; preds = %242, %233
  %244 = load i32, i32* @return_value, align 4
  store i32 %244, i32* %3, align 4
  br label %245

245:                                              ; preds = %243, %229, %159
  %246 = load i32, i32* %3, align 4
  ret i32 %246
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @bindtextdomain(i32, i32) #1

declare dso_local i32 @textdomain(i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @conf_parse(i8*) #1

declare dso_local i8* @conf_get_configname(...) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i8* @conf_get_default_confname(...) #1

declare dso_local i32 @conf_read(i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @conf_read_simple(i8*, i32) #1

declare dso_local i64 @conf_get_changed(...) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @conf_set_all_new_symbols(i32) #1

declare dso_local i32 @conf(i32*) #1

declare dso_local i32 @check_conf(i32*) #1

declare dso_local i64 @conf_write(i32*) #1

declare dso_local i64 @conf_write_autoconf(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
