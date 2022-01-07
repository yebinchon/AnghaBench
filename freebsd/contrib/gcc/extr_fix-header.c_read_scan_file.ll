; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fix-header.c_read_scan_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fix-header.c_read_scan_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol_list = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.fn_decl = type { i32 }
%struct.TYPE_8__ = type { i64 }

@scan_file_obstack = common dso_local global i32 0, align 4
@line_table = common dso_local global i32 0, align 4
@CLK_GNUC89 = common dso_local global i32 0, align 4
@cb_file_change = common dso_local global i32 0, align 4
@FATAL_EXIT_CODE = common dso_local global i32 0, align 4
@LC_RENAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"<built-in>\00", align 1
@BRACKET = common dso_local global i32 0, align 4
@CPP_DL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"invalid option `%s'\00", align 1
@symbol_table = common dso_local global %struct.symbol_list* null, align 8
@special_file_handling = common dso_local global i64 0, align 8
@stdio_h = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"_filbuf\00", align 1
@__const.read_scan_file.getchar_call = private unnamed_addr constant [12 x i8] c"getchar();\0A\00", align 1
@CPP_EOF = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"_flsbuf\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"_filbuf\00_flsbuf\00\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"_flsbuf\00\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"_filbuf\00\00", align 1
@ANSI_SYMBOL = common dso_local global i32 0, align 4
@required_unseen_count = common dso_local global i64 0, align 8
@partial_count = common dso_local global i64 0, align 8
@required_other = common dso_local global i64 0, align 8
@verbose = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"%s: OK, nothing needs to be done.\0A\00", align 1
@inc_filename = common dso_local global i8* null, align 8
@SUCCESS_EXIT_CODE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"%s: fixing %s\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [39 x i8] c"%s: %d missing function declarations.\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"%s: %d non-prototype function declarations.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8**)* @read_scan_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_scan_file(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.fn_decl*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.symbol_list*, align 8
  %14 = alloca [12 x i8], align 1
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.fn_decl*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %21 = call i32 @obstack_init(i32* @scan_file_obstack)
  %22 = call i32 @linemap_init(i32* @line_table)
  %23 = load i32, i32* @CLK_GNUC89, align 4
  %24 = call i32* @cpp_create_reader(i32 %23, i32* null, i32* @line_table)
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call %struct.TYPE_10__* @cpp_get_callbacks(i32* %25)
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %8, align 8
  %27 = load i32, i32* @cb_file_change, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = call %struct.TYPE_9__* @cpp_get_options(i32* %30)
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %9, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @cpp_post_options(i32* %36)
  %38 = load i32*, i32** %7, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @cpp_read_main_file(i32* %38, i8* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %3
  %43 = load i32, i32* @FATAL_EXIT_CODE, align 4
  %44 = call i32 @exit(i32 %43) #4
  unreachable

45:                                               ; preds = %3
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* @LC_RENAME, align 4
  %48 = call i32 @cpp_change_file(i32* %46, i32 %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @cpp_init_builtins(i32* %49, i32 1)
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* @LC_RENAME, align 4
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @cpp_change_file(i32* %51, i32 %52, i8* %53)
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %168, %45
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %172

59:                                               ; preds = %55
  store i32 0, i32* %12, align 4
  %60 = load i8**, i8*** %6, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 45
  br i1 %68, label %69, label %163

69:                                               ; preds = %59
  %70 = load i8**, i8*** %6, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 73
  br i1 %78, label %79, label %116

79:                                               ; preds = %69
  %80 = load i8**, i8*** %6, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 2
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %79
  store i32 1, i32* %12, align 4
  %90 = load i8**, i8*** %6, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 2
  %96 = call i32 @xstrdup(i8* %95)
  %97 = load i32, i32* @BRACKET, align 4
  %98 = call i32 @add_path(i32 %96, i32 %97, i32 0, i32 0)
  br label %115

99:                                               ; preds = %79
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  store i32 2, i32* %12, align 4
  %105 = load i8**, i8*** %6, align 8
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %105, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @xstrdup(i8* %110)
  %112 = load i32, i32* @BRACKET, align 4
  %113 = call i32 @add_path(i32 %111, i32 %112, i32 0, i32 0)
  br label %114

114:                                              ; preds = %104, %99
  br label %115

115:                                              ; preds = %114, %89
  br label %162

116:                                              ; preds = %69
  %117 = load i8**, i8*** %6, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 68
  br i1 %125, label %126, label %161

126:                                              ; preds = %116
  %127 = load i8**, i8*** %6, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 2
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %126
  store i32 1, i32* %12, align 4
  %137 = load i32*, i32** %7, align 8
  %138 = load i8**, i8*** %6, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 2
  %144 = call i32 @cpp_define(i32* %137, i8* %143)
  br label %160

145:                                              ; preds = %126
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, 1
  %148 = load i32, i32* %5, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %145
  store i32 2, i32* %12, align 4
  %151 = load i32*, i32** %7, align 8
  %152 = load i8**, i8*** %6, align 8
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %152, i64 %155
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @cpp_define(i32* %151, i8* %157)
  br label %159

159:                                              ; preds = %150, %145
  br label %160

160:                                              ; preds = %159, %136
  br label %161

161:                                              ; preds = %160, %116
  br label %162

162:                                              ; preds = %161, %115
  br label %163

163:                                              ; preds = %162, %59
  %164 = load i32, i32* %12, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  br label %172

167:                                              ; preds = %163
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* %11, align 4
  %171 = add nsw i32 %170, %169
  store i32 %171, i32* %11, align 4
  br label %55

172:                                              ; preds = %166, %55
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* %5, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %185

176:                                              ; preds = %172
  %177 = load i32*, i32** %7, align 8
  %178 = load i32, i32* @CPP_DL_ERROR, align 4
  %179 = load i8**, i8*** %6, align 8
  %180 = load i32, i32* %11, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8*, i8** %179, i64 %181
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 @cpp_error(i32* %177, i32 %178, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %183)
  br label %185

185:                                              ; preds = %176, %172
  %186 = load i32*, i32** %7, align 8
  %187 = call i64 @cpp_errors(i32* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %185
  %190 = load i32, i32* @FATAL_EXIT_CODE, align 4
  %191 = call i32 @exit(i32 %190) #4
  unreachable

192:                                              ; preds = %185
  %193 = load i32*, i32** %7, align 8
  %194 = call i32 @register_include_chains(i32* %193, i32* null, i32* null, i32* null, i32 1, i32 0, i32 0)
  %195 = load i32*, i32** %7, align 8
  %196 = call i32 @cpp_make_system_header(i32* %195, i32 1, i32 0)
  %197 = load i32*, i32** %7, align 8
  %198 = load i32, i32* %5, align 4
  %199 = load i8**, i8*** %6, align 8
  %200 = call i32 @scan_decls(i32* %197, i32 %198, i8** %199)
  %201 = load %struct.symbol_list*, %struct.symbol_list** @symbol_table, align 8
  %202 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %201, i64 0
  store %struct.symbol_list* %202, %struct.symbol_list** %13, align 8
  br label %203

203:                                              ; preds = %214, %192
  %204 = load %struct.symbol_list*, %struct.symbol_list** %13, align 8
  %205 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %217

208:                                              ; preds = %203
  %209 = load i32*, i32** %7, align 8
  %210 = load %struct.symbol_list*, %struct.symbol_list** %13, align 8
  %211 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @check_macro_names(i32* %209, i64 %212)
  br label %214

214:                                              ; preds = %208
  %215 = load %struct.symbol_list*, %struct.symbol_list** %13, align 8
  %216 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %215, i32 1
  store %struct.symbol_list* %216, %struct.symbol_list** %13, align 8
  br label %203

217:                                              ; preds = %203
  %218 = load i64, i64* @special_file_handling, align 8
  %219 = load i64, i64* @stdio_h, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %318

221:                                              ; preds = %217
  %222 = call %struct.fn_decl* @lookup_std_proto(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  store %struct.fn_decl* %222, %struct.fn_decl** %10, align 8
  %223 = icmp ne %struct.fn_decl* %222, null
  br i1 %223, label %224, label %318

224:                                              ; preds = %221
  %225 = bitcast [12 x i8]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %225, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.read_scan_file.getchar_call, i32 0, i32 0), i64 12, i1 false)
  store i32 0, i32* %15, align 4
  %226 = load i32*, i32** %7, align 8
  %227 = getelementptr inbounds [12 x i8], [12 x i8]* %14, i64 0, i64 0
  %228 = call i32 @cpp_push_buffer(i32* %226, i8* %227, i32 11, i32 1)
  br label %229

229:                                              ; preds = %246, %224
  %230 = load i32*, i32** %7, align 8
  %231 = call %struct.TYPE_8__* @cpp_get_token(i32* %230)
  store %struct.TYPE_8__* %231, %struct.TYPE_8__** %16, align 8
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @CPP_EOF, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %229
  br label %247

238:                                              ; preds = %229
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %240 = call i64 @cpp_ideq(%struct.TYPE_8__* %239, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %238
  %243 = load i32, i32* %15, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %15, align 4
  br label %245

245:                                              ; preds = %242, %238
  br label %246

246:                                              ; preds = %245
  br label %229

247:                                              ; preds = %237
  %248 = load i32, i32* %15, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %317

250:                                              ; preds = %247
  %251 = load %struct.fn_decl*, %struct.fn_decl** %10, align 8
  %252 = call i32 @SEEN(%struct.fn_decl* %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %259, label %254

254:                                              ; preds = %250
  %255 = load %struct.fn_decl*, %struct.fn_decl** %10, align 8
  %256 = call i32 @REQUIRED(%struct.fn_decl* %255)
  %257 = icmp ne i32 %256, 0
  %258 = xor i1 %257, true
  br label %259

259:                                              ; preds = %254, %250
  %260 = phi i1 [ false, %250 ], [ %258, %254 ]
  %261 = zext i1 %260 to i32
  store i32 %261, i32* %17, align 4
  %262 = call %struct.fn_decl* @lookup_std_proto(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  store %struct.fn_decl* %262, %struct.fn_decl** %18, align 8
  %263 = load %struct.fn_decl*, %struct.fn_decl** %18, align 8
  %264 = icmp ne %struct.fn_decl* %263, null
  br i1 %264, label %265, label %274

265:                                              ; preds = %259
  %266 = load %struct.fn_decl*, %struct.fn_decl** %18, align 8
  %267 = call i32 @SEEN(%struct.fn_decl* %266)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %274, label %269

269:                                              ; preds = %265
  %270 = load %struct.fn_decl*, %struct.fn_decl** %18, align 8
  %271 = call i32 @REQUIRED(%struct.fn_decl* %270)
  %272 = icmp ne i32 %271, 0
  %273 = xor i1 %272, true
  br label %274

274:                                              ; preds = %269, %265, %259
  %275 = phi i1 [ false, %265 ], [ false, %259 ], [ %273, %269 ]
  %276 = zext i1 %275 to i32
  store i32 %276, i32* %19, align 4
  %277 = load i32, i32* %17, align 4
  %278 = load i32, i32* %19, align 4
  %279 = add nsw i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %316

281:                                              ; preds = %274
  %282 = load i32, i32* %17, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %281
  %285 = load %struct.fn_decl*, %struct.fn_decl** %10, align 8
  %286 = call i32 @SET_REQUIRED(%struct.fn_decl* %285)
  br label %287

287:                                              ; preds = %284, %281
  %288 = load i32, i32* %19, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %287
  %291 = load %struct.fn_decl*, %struct.fn_decl** %18, align 8
  %292 = call i32 @SET_REQUIRED(%struct.fn_decl* %291)
  br label %293

293:                                              ; preds = %290, %287
  %294 = load i32, i32* %19, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %300

296:                                              ; preds = %293
  %297 = load i32, i32* %17, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %296
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %20, align 8
  br label %306

300:                                              ; preds = %296, %293
  %301 = load i32, i32* %19, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %300
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %20, align 8
  br label %305

304:                                              ; preds = %300
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %20, align 8
  br label %305

305:                                              ; preds = %304, %303
  br label %306

306:                                              ; preds = %305, %299
  %307 = load i32, i32* @ANSI_SYMBOL, align 4
  %308 = load i8*, i8** %20, align 8
  %309 = call i32 @add_symbols(i32 %307, i8* %308)
  %310 = load i32, i32* %17, align 4
  %311 = load i32, i32* %19, align 4
  %312 = add nsw i32 %310, %311
  %313 = sext i32 %312 to i64
  %314 = load i64, i64* @required_unseen_count, align 8
  %315 = add nsw i64 %314, %313
  store i64 %315, i64* @required_unseen_count, align 8
  br label %316

316:                                              ; preds = %306, %274
  br label %317

317:                                              ; preds = %316, %247
  br label %318

318:                                              ; preds = %317, %221, %217
  %319 = load i64, i64* @required_unseen_count, align 8
  %320 = load i64, i64* @partial_count, align 8
  %321 = add nsw i64 %319, %320
  %322 = load i64, i64* @required_other, align 8
  %323 = add nsw i64 %321, %322
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %325, label %335

325:                                              ; preds = %318
  %326 = load i64, i64* @verbose, align 8
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %325
  %329 = load i32, i32* @stderr, align 4
  %330 = load i8*, i8** @inc_filename, align 8
  %331 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %329, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8* %330)
  br label %332

332:                                              ; preds = %328, %325
  %333 = load i32, i32* @SUCCESS_EXIT_CODE, align 4
  %334 = call i32 @exit(i32 %333) #4
  unreachable

335:                                              ; preds = %318
  %336 = load i64, i64* @verbose, align 8
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %343, label %338

338:                                              ; preds = %335
  %339 = load i32, i32* @stderr, align 4
  %340 = load i8*, i8** @progname, align 8
  %341 = load i8*, i8** @inc_filename, align 8
  %342 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %339, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %340, i8* %341)
  br label %360

343:                                              ; preds = %335
  %344 = load i64, i64* @required_unseen_count, align 8
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %351

346:                                              ; preds = %343
  %347 = load i32, i32* @stderr, align 4
  %348 = load i8*, i8** @inc_filename, align 8
  %349 = load i64, i64* @required_unseen_count, align 8
  %350 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %347, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i8* %348, i64 %349)
  br label %351

351:                                              ; preds = %346, %343
  %352 = load i64, i64* @partial_count, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %359

354:                                              ; preds = %351
  %355 = load i32, i32* @stderr, align 4
  %356 = load i8*, i8** @inc_filename, align 8
  %357 = load i64, i64* @partial_count, align 8
  %358 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %355, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i8* %356, i64 %357)
  br label %359

359:                                              ; preds = %354, %351
  br label %360

360:                                              ; preds = %359, %338
  ret void
}

declare dso_local i32 @obstack_init(i32*) #1

declare dso_local i32 @linemap_init(i32*) #1

declare dso_local i32* @cpp_create_reader(i32, i32*, i32*) #1

declare dso_local %struct.TYPE_10__* @cpp_get_callbacks(i32*) #1

declare dso_local %struct.TYPE_9__* @cpp_get_options(i32*) #1

declare dso_local i32 @cpp_post_options(i32*) #1

declare dso_local i32 @cpp_read_main_file(i32*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @cpp_change_file(i32*, i32, i8*) #1

declare dso_local i32 @cpp_init_builtins(i32*, i32) #1

declare dso_local i32 @add_path(i32, i32, i32, i32) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @cpp_define(i32*, i8*) #1

declare dso_local i32 @cpp_error(i32*, i32, i8*, i8*) #1

declare dso_local i64 @cpp_errors(i32*) #1

declare dso_local i32 @register_include_chains(i32*, i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cpp_make_system_header(i32*, i32, i32) #1

declare dso_local i32 @scan_decls(i32*, i32, i8**) #1

declare dso_local i32 @check_macro_names(i32*, i64) #1

declare dso_local %struct.fn_decl* @lookup_std_proto(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @cpp_push_buffer(i32*, i8*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @cpp_get_token(i32*) #1

declare dso_local i64 @cpp_ideq(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @SEEN(%struct.fn_decl*) #1

declare dso_local i32 @REQUIRED(%struct.fn_decl*) #1

declare dso_local i32 @SET_REQUIRED(%struct.fn_decl*) #1

declare dso_local i32 @add_symbols(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
