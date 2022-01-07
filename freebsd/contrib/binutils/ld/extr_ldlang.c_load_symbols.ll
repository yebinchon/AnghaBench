; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_load_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_load_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_16__*, i8*, i8*)* }
%struct.TYPE_15__ = type { i32, i8*, i32, i32, i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@bfd_error_file_ambiguously_recognized = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"%B: file not recognized: %E\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%B: matching formats:\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%F\0A\00", align 1
@bfd_error_file_not_recognized = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"%F%B: file not recognized: %E\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@stat_ptr = common dso_local global i32* null, align 8
@ldlang_sysrooted_script = common dso_local global i32 0, align 4
@as_needed = common dso_local global i32 0, align 4
@add_needed = common dso_local global i32 0, align 4
@ldfile_assumed_script = common dso_local global i32 0, align 4
@input_script = common dso_local global i32 0, align 4
@parser_input = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@trace_files = common dso_local global i32 0, align 4
@trace_file_tries = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"%I\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"%F%B: member %B in archive is not an object\0A\00", align 1
@link_info = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"--whole-archive\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"%F%B: could not read symbols: %E\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_symbols(%struct.TYPE_15__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* %3, align 4
  br label %234

22:                                               ; preds = %2
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %24 = call i32 @ldfile_open_file(%struct.TYPE_15__* %23)
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @bfd_check_format(i8* %27, i32 129)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %131, label %30

30:                                               ; preds = %22
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @bfd_check_format_matches(i8* %33, i32 128, i8*** %6)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %131, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @TRUE, align 4
  store i32 %37, i32* %9, align 4
  %38 = call i64 (...) @bfd_get_error()
  store i64 %38, i64* %7, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %40 = call i64 @ldemul_unrecognized_file(%struct.TYPE_15__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @TRUE, align 4
  store i32 %43, i32* %3, align 4
  br label %234

44:                                               ; preds = %36
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @bfd_error_file_ambiguously_recognized, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %44
  %49 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i8*, ...) @einfo(i8* %49, i8* %52)
  %54 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i8*, ...) @einfo(i8* %54, i8* %57)
  %59 = load i8**, i8*** %6, align 8
  store i8** %59, i8*** %13, align 8
  br label %60

60:                                               ; preds = %68, %48
  %61 = load i8**, i8*** %13, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i8**, i8*** %13, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (i8*, ...) @einfo(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %64
  %69 = load i8**, i8*** %13, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i32 1
  store i8** %70, i8*** %13, align 8
  br label %60

71:                                               ; preds = %60
  %72 = call i32 (i8*, ...) @einfo(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %90

73:                                               ; preds = %44
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* @bfd_error_file_not_recognized, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = load i32*, i32** %5, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %77, %73
  %81 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 (i8*, ...) @einfo(i8* %81, i8* %84)
  br label %89

86:                                               ; preds = %77
  %87 = load i8*, i8** @FALSE, align 8
  %88 = ptrtoint i8* %87 to i32
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %86, %80
  br label %90

90:                                               ; preds = %89, %71
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @bfd_close(i8* %93)
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  store i8* null, i8** %96, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ldfile_open_command_file(i32 %99)
  %101 = load i32*, i32** @stat_ptr, align 8
  store i32* %101, i32** %8, align 8
  %102 = load i32*, i32** %5, align 8
  store i32* %102, i32** @stat_ptr, align 8
  %103 = load i32, i32* @ldlang_sysrooted_script, align 4
  store i32 %103, i32* %10, align 4
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* @ldlang_sysrooted_script, align 4
  %107 = load i32, i32* @as_needed, align 4
  store i32 %107, i32* %11, align 4
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* @as_needed, align 4
  %111 = load i32, i32* @add_needed, align 4
  store i32 %111, i32* %12, align 4
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* @add_needed, align 4
  %115 = load i32, i32* @TRUE, align 4
  store i32 %115, i32* @ldfile_assumed_script, align 4
  %116 = load i32, i32* @input_script, align 4
  store i32 %116, i32* @parser_input, align 4
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  store i32 %119, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 0), align 4
  %120 = call i32 (...) @yyparse()
  %121 = load i8*, i8** @FALSE, align 8
  %122 = ptrtoint i8* %121 to i32
  store i32 %122, i32* @ldfile_assumed_script, align 4
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* @ldlang_sysrooted_script, align 4
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* @as_needed, align 4
  %125 = load i32, i32* %12, align 4
  store i32 %125, i32* @add_needed, align 4
  %126 = load i32*, i32** %8, align 8
  store i32* %126, i32** @stat_ptr, align 8
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  store i32 %130, i32* %3, align 4
  br label %234

131:                                              ; preds = %30, %22
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %133 = call i64 @ldemul_recognized_file(%struct.TYPE_15__* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = load i32, i32* @TRUE, align 4
  store i32 %136, i32* %3, align 4
  br label %234

137:                                              ; preds = %131
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @bfd_get_format(i8* %140)
  switch i32 %141, label %142 [
    i32 128, label %143
    i32 129, label %155
  ]

142:                                              ; preds = %137
  br label %214

143:                                              ; preds = %137
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %145 = call i32 @ldlang_add_file(%struct.TYPE_15__* %144)
  %146 = load i32, i32* @trace_files, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %143
  %149 = load i32, i32* @trace_file_tries, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148, %143
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %153 = call i32 @info_msg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_15__* %152)
  br label %154

154:                                              ; preds = %151, %148
  br label %214

155:                                              ; preds = %137
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @check_excluded_libs(i8* %158)
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %213

164:                                              ; preds = %155
  store i8* null, i8** %14, align 8
  %165 = load i32, i32* @TRUE, align 4
  store i32 %165, i32* %15, align 4
  br label %166

166:                                              ; preds = %207, %164
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = load i8*, i8** %14, align 8
  %171 = call i8* @bfd_openr_next_archived_file(i8* %169, i8* %170)
  store i8* %171, i8** %14, align 8
  %172 = load i8*, i8** %14, align 8
  %173 = icmp eq i8* %172, null
  br i1 %173, label %174, label %175

174:                                              ; preds = %166
  br label %208

175:                                              ; preds = %166
  %176 = load i8*, i8** %14, align 8
  %177 = call i32 @bfd_check_format(i8* %176, i32 128)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %188, label %179

179:                                              ; preds = %175
  %180 = call i8* @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = load i8*, i8** %14, align 8
  %185 = call i32 (i8*, ...) @einfo(i8* %180, i8* %183, i8* %184)
  %186 = load i8*, i8** @FALSE, align 8
  %187 = ptrtoint i8* %186 to i32
  store i32 %187, i32* %15, align 4
  br label %188

188:                                              ; preds = %179, %175
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @link_info, i32 0, i32 0), align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 0
  %191 = load i32 (%struct.TYPE_16__*, i8*, i8*)*, i32 (%struct.TYPE_16__*, i8*, i8*)** %190, align 8
  %192 = load i8*, i8** %14, align 8
  %193 = call i32 %191(%struct.TYPE_16__* @link_info, i8* %192, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %188
  %196 = call i32 (...) @abort() #3
  unreachable

197:                                              ; preds = %188
  %198 = load i8*, i8** %14, align 8
  %199 = call i64 @bfd_link_add_symbols(i8* %198, %struct.TYPE_16__* @link_info)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %207, label %201

201:                                              ; preds = %197
  %202 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %203 = load i8*, i8** %14, align 8
  %204 = call i32 (i8*, ...) @einfo(i8* %202, i8* %203)
  %205 = load i8*, i8** @FALSE, align 8
  %206 = ptrtoint i8* %205 to i32
  store i32 %206, i32* %15, align 4
  br label %207

207:                                              ; preds = %201, %197
  br label %166

208:                                              ; preds = %174
  %209 = load i32, i32* %15, align 4
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 8
  %212 = load i32, i32* %15, align 4
  store i32 %212, i32* %3, align 4
  br label %234

213:                                              ; preds = %155
  br label %214

214:                                              ; preds = %213, %154, %142
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 1
  %217 = load i8*, i8** %216, align 8
  %218 = call i64 @bfd_link_add_symbols(i8* %217, %struct.TYPE_16__* @link_info)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %214
  %221 = load i32, i32* @TRUE, align 4
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  store i32 %221, i32* %223, align 8
  br label %230

224:                                              ; preds = %214
  %225 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 1
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 (i8*, ...) @einfo(i8* %225, i8* %228)
  br label %230

230:                                              ; preds = %224, %220
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  store i32 %233, i32* %3, align 4
  br label %234

234:                                              ; preds = %230, %208, %135, %90, %42, %20
  %235 = load i32, i32* %3, align 4
  ret i32 %235
}

declare dso_local i32 @ldfile_open_file(%struct.TYPE_15__*) #1

declare dso_local i32 @bfd_check_format(i8*, i32) #1

declare dso_local i32 @bfd_check_format_matches(i8*, i32, i8***) #1

declare dso_local i64 @bfd_get_error(...) #1

declare dso_local i64 @ldemul_unrecognized_file(%struct.TYPE_15__*) #1

declare dso_local i32 @einfo(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @bfd_close(i8*) #1

declare dso_local i32 @ldfile_open_command_file(i32) #1

declare dso_local i32 @yyparse(...) #1

declare dso_local i64 @ldemul_recognized_file(%struct.TYPE_15__*) #1

declare dso_local i32 @bfd_get_format(i8*) #1

declare dso_local i32 @ldlang_add_file(%struct.TYPE_15__*) #1

declare dso_local i32 @info_msg(i8*, %struct.TYPE_15__*) #1

declare dso_local i32 @check_excluded_libs(i8*) #1

declare dso_local i8* @bfd_openr_next_archived_file(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @bfd_link_add_symbols(i8*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
