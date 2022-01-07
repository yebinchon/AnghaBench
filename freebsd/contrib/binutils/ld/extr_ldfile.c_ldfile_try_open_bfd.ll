; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldfile.c_ldfile_try_open_bfd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldfile.c_ldfile_try_open_bfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i8*, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_21__ = type { i64, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_19__*, i32, i64, i32, i32 }

@trace_file_tries = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"attempt to open %s failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"attempt to open %s succeeded\0A\00", align 1
@bfd_error_invalid_target = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"%F%P: invalid BFD target `%s'\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@bfd_archive = common dso_local global i32 0, align 4
@bfd_object = common dso_local global i32 0, align 4
@bfd_error_file_not_recognized = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@ldfile_assumed_script = common dso_local global i32 0, align 4
@input_selected = common dso_local global i32 0, align 4
@parser_input = common dso_local global i32 0, align 4
@INPUT_SCRIPT = common dso_local global i32 0, align 4
@yylval = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@command_line = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@yyin = external dso_local global i32*, align 8
@.str.3 = private unnamed_addr constant [52 x i8] c"%P: skipping incompatible %s when searching for %s\0A\00", align 1
@DYNAMIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"%F%P: attempted static link of dynamic object `%s'\0A\00", align 1
@output_bfd = common dso_local global %struct.TYPE_19__* null, align 8
@bfd_target_xcoff_flavour = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldfile_try_open_bfd(i8* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_19__* @bfd_openr(i8* %13, i32 %16)
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  store %struct.TYPE_19__* %17, %struct.TYPE_19__** %19, align 8
  %20 = load i64, i64* @trace_file_tries, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %2
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %26 = icmp eq %struct.TYPE_19__* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @info_msg(i32 %28, i8* %29)
  br label %35

31:                                               ; preds = %22
  %32 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @info_msg(i32 %32, i8* %33)
  br label %35

35:                                               ; preds = %31, %27
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %38, align 8
  %40 = icmp eq %struct.TYPE_19__* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = call i64 (...) @bfd_get_error()
  %43 = load i64, i64* @bfd_error_invalid_target, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 (i32, i8*, ...) @einfo(i32 %46, i8* %51)
  br label %53

53:                                               ; preds = %45, %41
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %3, align 4
  br label %317

55:                                               ; preds = %36
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %315, label %65

65:                                               ; preds = %60, %55
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %67, align 8
  %69 = load i32, i32* @bfd_archive, align 4
  %70 = call i64 @bfd_check_format(%struct.TYPE_19__* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %74, align 8
  %76 = call %struct.TYPE_19__* @bfd_openr_next_archived_file(%struct.TYPE_19__* %75, i32* null)
  store %struct.TYPE_19__* %76, %struct.TYPE_19__** %6, align 8
  br label %81

77:                                               ; preds = %65
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %79, align 8
  store %struct.TYPE_19__* %80, %struct.TYPE_19__** %6, align 8
  br label %81

81:                                               ; preds = %77, %72
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %83 = icmp ne %struct.TYPE_19__* %82, null
  br i1 %83, label %84, label %314

84:                                               ; preds = %81
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %86 = load i32, i32* @bfd_object, align 4
  %87 = call i64 @bfd_check_format(%struct.TYPE_19__* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %242, label %89

89:                                               ; preds = %84
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %92, align 8
  %94 = icmp eq %struct.TYPE_19__* %90, %93
  br i1 %94, label %95, label %240

95:                                               ; preds = %89
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %240

100:                                              ; preds = %95
  %101 = call i64 (...) @bfd_get_error()
  %102 = load i64, i64* @bfd_error_file_not_recognized, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %240

104:                                              ; preds = %100
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %106 = call i32 @ldemul_unrecognized_file(%struct.TYPE_18__* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %240, label %108

108:                                              ; preds = %104
  store i32 0, i32* %8, align 4
  %109 = load i8*, i8** %4, align 8
  %110 = call i32 @ldfile_open_command_file(i8* %109)
  %111 = load i32, i32* @TRUE, align 4
  store i32 %111, i32* @ldfile_assumed_script, align 4
  %112 = load i32, i32* @input_selected, align 4
  store i32 %112, i32* @parser_input, align 4
  %113 = call i32 (...) @ldlex_both()
  %114 = load i32, i32* @INPUT_SCRIPT, align 4
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %212, %146, %136, %127, %123, %108
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %214

118:                                              ; preds = %115
  %119 = load i32, i32* %7, align 4
  switch i32 %119, label %212 [
    i32 130, label %120
    i32 131, label %202
    i32 132, label %202
    i32 129, label %202
    i32 128, label %202
    i32 133, label %205
  ]

120:                                              ; preds = %118
  %121 = call i32 (...) @yylex()
  store i32 %121, i32* %7, align 4
  %122 = icmp ne i32 %121, 40
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %115

124:                                              ; preds = %120
  %125 = call i32 (...) @yylex()
  store i32 %125, i32* %7, align 4
  %126 = icmp ne i32 %125, 131
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %115

128:                                              ; preds = %124
  %129 = load i8*, i8** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @yylval, i32 0, i32 0), align 8
  store i8* %129, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %130 = call i32 (...) @yylex()
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp eq i32 %131, 44
  br i1 %132, label %133, label %154

133:                                              ; preds = %128
  %134 = call i32 (...) @yylex()
  store i32 %134, i32* %7, align 4
  %135 = icmp ne i32 %134, 131
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i8*, i8** %10, align 8
  %138 = call i32 @free(i8* %137)
  br label %115

139:                                              ; preds = %133
  %140 = load i8*, i8** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @yylval, i32 0, i32 0), align 8
  store i8* %140, i8** %11, align 8
  %141 = call i32 (...) @yylex()
  store i32 %141, i32* %7, align 4
  %142 = icmp ne i32 %141, 44
  br i1 %142, label %146, label %143

143:                                              ; preds = %139
  %144 = call i32 (...) @yylex()
  store i32 %144, i32* %7, align 4
  %145 = icmp ne i32 %144, 131
  br i1 %145, label %146, label %151

146:                                              ; preds = %143, %139
  %147 = load i8*, i8** %10, align 8
  %148 = call i32 @free(i8* %147)
  %149 = load i8*, i8** %11, align 8
  %150 = call i32 @free(i8* %149)
  br label %115

151:                                              ; preds = %143
  %152 = load i8*, i8** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @yylval, i32 0, i32 0), align 8
  store i8* %152, i8** %12, align 8
  %153 = call i32 (...) @yylex()
  store i32 %153, i32* %7, align 4
  br label %154

154:                                              ; preds = %151, %128
  %155 = load i32, i32* %7, align 4
  %156 = icmp eq i32 %155, 41
  br i1 %156, label %157, label %187

157:                                              ; preds = %154
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @command_line, i32 0, i32 2), align 4
  switch i32 %158, label %159 [
    i32 134, label %160
    i32 136, label %162
    i32 135, label %171
  ]

159:                                              ; preds = %157
  br label %160

160:                                              ; preds = %157, %159
  %161 = load i8*, i8** %10, align 8
  store i8* %161, i8** %9, align 8
  br label %180

162:                                              ; preds = %157
  %163 = load i8*, i8** %11, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = load i8*, i8** %11, align 8
  br label %169

167:                                              ; preds = %162
  %168 = load i8*, i8** %10, align 8
  br label %169

169:                                              ; preds = %167, %165
  %170 = phi i8* [ %166, %165 ], [ %168, %167 ]
  store i8* %170, i8** %9, align 8
  br label %180

171:                                              ; preds = %157
  %172 = load i8*, i8** %12, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = load i8*, i8** %12, align 8
  br label %178

176:                                              ; preds = %171
  %177 = load i8*, i8** %10, align 8
  br label %178

178:                                              ; preds = %176, %174
  %179 = phi i8* [ %175, %174 ], [ %177, %176 ]
  store i8* %179, i8** %9, align 8
  br label %180

180:                                              ; preds = %178, %169, %160
  %181 = load i8*, i8** %9, align 8
  %182 = call i32 (...) @lang_get_output_target()
  %183 = call i32 @strcmp(i8* %181, i32 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %180
  store i32 1, i32* %8, align 4
  br label %186

186:                                              ; preds = %185, %180
  br label %187

187:                                              ; preds = %186, %154
  %188 = load i8*, i8** %10, align 8
  %189 = call i32 @free(i8* %188)
  %190 = load i8*, i8** %11, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  %193 = load i8*, i8** %11, align 8
  %194 = call i32 @free(i8* %193)
  br label %195

195:                                              ; preds = %192, %187
  %196 = load i8*, i8** %12, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = load i8*, i8** %12, align 8
  %200 = call i32 @free(i8* %199)
  br label %201

201:                                              ; preds = %198, %195
  br label %212

202:                                              ; preds = %118, %118, %118, %118
  %203 = load i8*, i8** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @yylval, i32 0, i32 0), align 8
  %204 = call i32 @free(i8* %203)
  br label %212

205:                                              ; preds = %118
  %206 = load i8*, i8** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @yylval, i32 0, i32 1, i32 0), align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %208, label %211

208:                                              ; preds = %205
  %209 = load i8*, i8** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @yylval, i32 0, i32 1, i32 0), align 8
  %210 = call i32 @free(i8* %209)
  br label %211

211:                                              ; preds = %208, %205
  br label %212

212:                                              ; preds = %118, %211, %202, %201
  %213 = call i32 (...) @yylex()
  store i32 %213, i32* %7, align 4
  br label %115

214:                                              ; preds = %115
  %215 = call i32 (...) @ldlex_popstate()
  %216 = load i32, i32* @FALSE, align 4
  store i32 %216, i32* @ldfile_assumed_script, align 4
  %217 = load i32*, i32** @yyin, align 8
  %218 = call i32 @fclose(i32* %217)
  store i32* null, i32** @yyin, align 8
  %219 = load i32, i32* %8, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %239

221:                                              ; preds = %214
  %222 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @command_line, i32 0, i32 0), align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %231

224:                                              ; preds = %221
  %225 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %226 = load i8*, i8** %4, align 8
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = call i32 (i32, i8*, ...) @einfo(i32 %225, i8* %226, i32 %229)
  br label %231

231:                                              ; preds = %224, %221
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %233, align 8
  %235 = call i32 @bfd_close(%struct.TYPE_19__* %234)
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 0
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %237, align 8
  %238 = load i32, i32* @FALSE, align 4
  store i32 %238, i32* %3, align 4
  br label %317

239:                                              ; preds = %214
  br label %240

240:                                              ; preds = %239, %104, %100, %95, %89
  %241 = load i32, i32* @TRUE, align 4
  store i32 %241, i32* %3, align 4
  br label %317

242:                                              ; preds = %84
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 8
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %267, label %247

247:                                              ; preds = %242
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @DYNAMIC, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %267

256:                                              ; preds = %247
  %257 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  %258 = load i8*, i8** %4, align 8
  %259 = call i32 (i32, i8*, ...) @einfo(i32 %257, i8* %258)
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %261, align 8
  %263 = call i32 @bfd_close(%struct.TYPE_19__* %262)
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 0
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %265, align 8
  %266 = load i32, i32* @FALSE, align 4
  store i32 %266, i32* %3, align 4
  br label %317

267:                                              ; preds = %247, %242
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %268, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %313

272:                                              ; preds = %267
  %273 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %274 = load %struct.TYPE_19__*, %struct.TYPE_19__** @output_bfd, align 8
  %275 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @command_line, i32 0, i32 1), align 8
  %276 = call i32 @bfd_arch_get_compatible(%struct.TYPE_19__* %273, %struct.TYPE_19__* %274, i32 %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %313, label %278

278:                                              ; preds = %272
  %279 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %280 = call i64 @bfd_get_flavour(%struct.TYPE_19__* %279)
  %281 = load i64, i64* @bfd_target_xcoff_flavour, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %295

283:                                              ; preds = %278
  %284 = load %struct.TYPE_19__*, %struct.TYPE_19__** @output_bfd, align 8
  %285 = call i64 @bfd_get_flavour(%struct.TYPE_19__* %284)
  %286 = load i64, i64* @bfd_target_xcoff_flavour, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %295

288:                                              ; preds = %283
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %289, i32 0, i32 0
  %291 = load %struct.TYPE_19__*, %struct.TYPE_19__** %290, align 8
  %292 = load i32, i32* @bfd_archive, align 4
  %293 = call i64 @bfd_check_format(%struct.TYPE_19__* %291, i32 %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %313, label %295

295:                                              ; preds = %288, %283, %278
  %296 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @command_line, i32 0, i32 0), align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %305

298:                                              ; preds = %295
  %299 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %300 = load i8*, i8** %4, align 8
  %301 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = call i32 (i32, i8*, ...) @einfo(i32 %299, i8* %300, i32 %303)
  br label %305

305:                                              ; preds = %298, %295
  %306 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %306, i32 0, i32 0
  %308 = load %struct.TYPE_19__*, %struct.TYPE_19__** %307, align 8
  %309 = call i32 @bfd_close(%struct.TYPE_19__* %308)
  %310 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %310, i32 0, i32 0
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %311, align 8
  %312 = load i32, i32* @FALSE, align 4
  store i32 %312, i32* %3, align 4
  br label %317

313:                                              ; preds = %288, %272, %267
  br label %314

314:                                              ; preds = %313, %81
  br label %315

315:                                              ; preds = %314, %60
  %316 = load i32, i32* @TRUE, align 4
  store i32 %316, i32* %3, align 4
  br label %317

317:                                              ; preds = %315, %305, %256, %240, %231, %53
  %318 = load i32, i32* %3, align 4
  ret i32 %318
}

declare dso_local %struct.TYPE_19__* @bfd_openr(i8*, i32) #1

declare dso_local i32 @info_msg(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @bfd_get_error(...) #1

declare dso_local i32 @einfo(i32, i8*, ...) #1

declare dso_local i64 @bfd_check_format(%struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_19__* @bfd_openr_next_archived_file(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @ldemul_unrecognized_file(%struct.TYPE_18__*) #1

declare dso_local i32 @ldfile_open_command_file(i8*) #1

declare dso_local i32 @ldlex_both(...) #1

declare dso_local i32 @yylex(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @lang_get_output_target(...) #1

declare dso_local i32 @ldlex_popstate(...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @bfd_close(%struct.TYPE_19__*) #1

declare dso_local i32 @bfd_arch_get_compatible(%struct.TYPE_19__*, %struct.TYPE_19__*, i32) #1

declare dso_local i64 @bfd_get_flavour(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
