; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objcopy.c_strip_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objcopy.c_strip_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section_list = type { i8* }
%struct.stat = type { i32 }

@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"I:O:F:K:N:R:o:sSpdgxXHhVvw\00", align 1
@strip_options = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@sections_removed = common dso_local global i8* null, align 8
@STRIP_ALL = common dso_local global i64 0, align 8
@strip_symbols = common dso_local global i64 0, align 8
@STRIP_DEBUG = common dso_local global i64 0, align 8
@STRIP_UNNEEDED = common dso_local global i64 0, align 8
@keep_specific_list = common dso_local global i32* null, align 8
@strip_specific_list = common dso_local global i32* null, align 8
@preserve_dates = common dso_local global i8* null, align 8
@LOCALS_ALL = common dso_local global i64 0, align 8
@discard_locals = common dso_local global i64 0, align 8
@LOCALS_START_L = common dso_local global i64 0, align 8
@verbose = common dso_local global i8* null, align 8
@STRIP_NONDEBUG = common dso_local global i64 0, align 8
@keep_file_symbols = common dso_local global i32 0, align 4
@wildcard = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"strip\00", align 1
@STRIP_UNDEF = common dso_local global i64 0, align 8
@LOCALS_UNDEF = common dso_local global i64 0, align 8
@optind = common dso_local global i32 0, align 4
@status = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"could not create temporary file to hold stripped copy of '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @strip_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strip_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.section_list*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.stat, align 4
  %16 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %17 = load i8*, i8** @FALSE, align 8
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** @FALSE, align 8
  store i8* %18, i8** %9, align 8
  store i8* null, i8** %13, align 8
  br label %19

19:                                               ; preds = %80, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = load i32, i32* @strip_options, align 4
  %23 = call i32 @getopt_long(i32 %20, i8** %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %22, i32* null)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* @EOF, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %81

26:                                               ; preds = %19
  %27 = load i32, i32* %10, align 4
  switch i32 %27, label %77 [
    i32 73, label %28
    i32 79, label %30
    i32 70, label %32
    i32 82, label %34
    i32 115, label %42
    i32 83, label %44
    i32 103, label %44
    i32 100, label %44
    i32 128, label %46
    i32 75, label %48
    i32 78, label %51
    i32 111, label %54
    i32 112, label %56
    i32 120, label %58
    i32 88, label %60
    i32 118, label %62
    i32 86, label %64
    i32 131, label %66
    i32 129, label %68
    i32 130, label %70
    i32 0, label %71
    i32 119, label %72
    i32 72, label %74
    i32 104, label %74
  ]

28:                                               ; preds = %26
  %29 = load i8*, i8** @optarg, align 8
  store i8* %29, i8** %6, align 8
  br label %80

30:                                               ; preds = %26
  %31 = load i8*, i8** @optarg, align 8
  store i8* %31, i8** %7, align 8
  br label %80

32:                                               ; preds = %26
  %33 = load i8*, i8** @optarg, align 8
  store i8* %33, i8** %7, align 8
  store i8* %33, i8** %6, align 8
  br label %80

34:                                               ; preds = %26
  %35 = load i8*, i8** @optarg, align 8
  %36 = load i8*, i8** @TRUE, align 8
  %37 = call %struct.section_list* @find_section_list(i8* %35, i8* %36)
  store %struct.section_list* %37, %struct.section_list** %12, align 8
  %38 = load i8*, i8** @TRUE, align 8
  %39 = load %struct.section_list*, %struct.section_list** %12, align 8
  %40 = getelementptr inbounds %struct.section_list, %struct.section_list* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** @TRUE, align 8
  store i8* %41, i8** @sections_removed, align 8
  br label %80

42:                                               ; preds = %26
  %43 = load i64, i64* @STRIP_ALL, align 8
  store i64 %43, i64* @strip_symbols, align 8
  br label %80

44:                                               ; preds = %26, %26, %26
  %45 = load i64, i64* @STRIP_DEBUG, align 8
  store i64 %45, i64* @strip_symbols, align 8
  br label %80

46:                                               ; preds = %26
  %47 = load i64, i64* @STRIP_UNNEEDED, align 8
  store i64 %47, i64* @strip_symbols, align 8
  br label %80

48:                                               ; preds = %26
  %49 = load i8*, i8** @optarg, align 8
  %50 = call i32 @add_specific_symbol(i8* %49, i32** @keep_specific_list)
  br label %80

51:                                               ; preds = %26
  %52 = load i8*, i8** @optarg, align 8
  %53 = call i32 @add_specific_symbol(i8* %52, i32** @strip_specific_list)
  br label %80

54:                                               ; preds = %26
  %55 = load i8*, i8** @optarg, align 8
  store i8* %55, i8** %13, align 8
  br label %80

56:                                               ; preds = %26
  %57 = load i8*, i8** @TRUE, align 8
  store i8* %57, i8** @preserve_dates, align 8
  br label %80

58:                                               ; preds = %26
  %59 = load i64, i64* @LOCALS_ALL, align 8
  store i64 %59, i64* @discard_locals, align 8
  br label %80

60:                                               ; preds = %26
  %61 = load i64, i64* @LOCALS_START_L, align 8
  store i64 %61, i64* @discard_locals, align 8
  br label %80

62:                                               ; preds = %26
  %63 = load i8*, i8** @TRUE, align 8
  store i8* %63, i8** @verbose, align 8
  br label %80

64:                                               ; preds = %26
  %65 = load i8*, i8** @TRUE, align 8
  store i8* %65, i8** %8, align 8
  br label %80

66:                                               ; preds = %26
  %67 = load i8*, i8** @TRUE, align 8
  store i8* %67, i8** %9, align 8
  br label %80

68:                                               ; preds = %26
  %69 = load i64, i64* @STRIP_NONDEBUG, align 8
  store i64 %69, i64* @strip_symbols, align 8
  br label %80

70:                                               ; preds = %26
  store i32 1, i32* @keep_file_symbols, align 4
  br label %80

71:                                               ; preds = %26
  br label %80

72:                                               ; preds = %26
  %73 = load i8*, i8** @TRUE, align 8
  store i8* %73, i8** @wildcard, align 8
  br label %80

74:                                               ; preds = %26, %26
  %75 = load i32, i32* @stdout, align 4
  %76 = call i32 @strip_usage(i32 %75, i32 0)
  br label %77

77:                                               ; preds = %26, %74
  %78 = load i32, i32* @stderr, align 4
  %79 = call i32 @strip_usage(i32 %78, i32 1)
  br label %80

80:                                               ; preds = %77, %72, %71, %70, %68, %66, %64, %62, %60, %58, %56, %54, %51, %48, %46, %44, %42, %34, %32, %30, %28
  br label %19

81:                                               ; preds = %19
  %82 = load i8*, i8** %9, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32 (...) @display_info()
  store i32 0, i32* %3, align 4
  br label %238

86:                                               ; preds = %81
  %87 = load i8*, i8** %8, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call i32 @print_version(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %86
  %92 = load i64, i64* @strip_symbols, align 8
  %93 = load i64, i64* @STRIP_UNDEF, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %91
  %96 = load i64, i64* @discard_locals, align 8
  %97 = load i64, i64* @LOCALS_UNDEF, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load i32*, i32** @strip_specific_list, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i64, i64* @STRIP_ALL, align 8
  store i64 %103, i64* @strip_symbols, align 8
  br label %104

104:                                              ; preds = %102, %99, %95, %91
  %105 = load i8*, i8** %7, align 8
  %106 = icmp eq i8* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i8*, i8** %6, align 8
  store i8* %108, i8** %7, align 8
  br label %109

109:                                              ; preds = %107, %104
  %110 = load i32, i32* @optind, align 4
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %122, label %114

114:                                              ; preds = %109
  %115 = load i8*, i8** %13, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %125

117:                                              ; preds = %114
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  %120 = load i32, i32* %4, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %117, %109
  %123 = load i32, i32* @stderr, align 4
  %124 = call i32 @strip_usage(i32 %123, i32 1)
  br label %125

125:                                              ; preds = %122, %117, %114
  br label %126

126:                                              ; preds = %233, %125
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %4, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %236

130:                                              ; preds = %126
  %131 = load i32, i32* @status, align 4
  store i32 %131, i32* %14, align 4
  %132 = load i8**, i8*** %5, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @get_file_size(i8* %136)
  %138 = icmp slt i32 %137, 1
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  store i32 1, i32* @status, align 4
  br label %233

140:                                              ; preds = %130
  %141 = load i8*, i8** @preserve_dates, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %150

143:                                              ; preds = %140
  %144 = load i8**, i8*** %5, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %144, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @stat(i8* %148, %struct.stat* %15)
  br label %150

150:                                              ; preds = %143, %140
  %151 = load i8*, i8** %13, align 8
  %152 = icmp eq i8* %151, null
  br i1 %152, label %162, label %153

153:                                              ; preds = %150
  %154 = load i8**, i8*** %5, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = load i8*, i8** %13, align 8
  %160 = call i64 @strcmp(i8* %158, i8* %159)
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %153, %150
  %163 = load i8**, i8*** %5, align 8
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %163, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = call i8* @make_tempname(i8* %167)
  store i8* %168, i8** %16, align 8
  br label %171

169:                                              ; preds = %153
  %170 = load i8*, i8** %13, align 8
  store i8* %170, i8** %16, align 8
  br label %171

171:                                              ; preds = %169, %162
  %172 = load i8*, i8** %16, align 8
  %173 = icmp eq i8* %172, null
  br i1 %173, label %174, label %182

174:                                              ; preds = %171
  %175 = call i32 @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %176 = load i8**, i8*** %5, align 8
  %177 = load i32, i32* %11, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8*, i8** %176, i64 %178
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @non_fatal(i32 %175, i8* %180)
  store i32 1, i32* @status, align 4
  br label %233

182:                                              ; preds = %171
  store i32 0, i32* @status, align 4
  %183 = load i8**, i8*** %5, align 8
  %184 = load i32, i32* %11, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8*, i8** %183, i64 %185
  %187 = load i8*, i8** %186, align 8
  %188 = load i8*, i8** %16, align 8
  %189 = load i8*, i8** %6, align 8
  %190 = load i8*, i8** %7, align 8
  %191 = call i32 @copy_file(i8* %187, i8* %188, i8* %189, i8* %190)
  %192 = load i32, i32* @status, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %222

194:                                              ; preds = %182
  %195 = load i8*, i8** @preserve_dates, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = load i8*, i8** %16, align 8
  %199 = call i32 @set_times(i8* %198, %struct.stat* %15)
  br label %200

200:                                              ; preds = %197, %194
  %201 = load i8*, i8** %13, align 8
  %202 = load i8*, i8** %16, align 8
  %203 = icmp ne i8* %201, %202
  br i1 %203, label %204, label %220

204:                                              ; preds = %200
  %205 = load i8*, i8** %16, align 8
  %206 = load i8*, i8** %13, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %208, label %210

208:                                              ; preds = %204
  %209 = load i8*, i8** %13, align 8
  br label %216

210:                                              ; preds = %204
  %211 = load i8**, i8*** %5, align 8
  %212 = load i32, i32* %11, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8*, i8** %211, i64 %213
  %215 = load i8*, i8** %214, align 8
  br label %216

216:                                              ; preds = %210, %208
  %217 = phi i8* [ %209, %208 ], [ %215, %210 ]
  %218 = load i8*, i8** @preserve_dates, align 8
  %219 = call i32 @smart_rename(i8* %205, i8* %217, i8* %218)
  br label %220

220:                                              ; preds = %216, %200
  %221 = load i32, i32* %14, align 4
  store i32 %221, i32* @status, align 4
  br label %225

222:                                              ; preds = %182
  %223 = load i8*, i8** %16, align 8
  %224 = call i32 @unlink_if_ordinary(i8* %223)
  br label %225

225:                                              ; preds = %222, %220
  %226 = load i8*, i8** %13, align 8
  %227 = load i8*, i8** %16, align 8
  %228 = icmp ne i8* %226, %227
  br i1 %228, label %229, label %232

229:                                              ; preds = %225
  %230 = load i8*, i8** %16, align 8
  %231 = call i32 @free(i8* %230)
  br label %232

232:                                              ; preds = %229, %225
  br label %233

233:                                              ; preds = %232, %174, %139
  %234 = load i32, i32* %11, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %11, align 4
  br label %126

236:                                              ; preds = %126
  %237 = load i32, i32* @status, align 4
  store i32 %237, i32* %3, align 4
  br label %238

238:                                              ; preds = %236, %84
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local %struct.section_list* @find_section_list(i8*, i8*) #1

declare dso_local i32 @add_specific_symbol(i8*, i32**) #1

declare dso_local i32 @strip_usage(i32, i32) #1

declare dso_local i32 @display_info(...) #1

declare dso_local i32 @print_version(i8*) #1

declare dso_local i32 @get_file_size(i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @make_tempname(i8*) #1

declare dso_local i32 @non_fatal(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @copy_file(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @set_times(i8*, %struct.stat*) #1

declare dso_local i32 @smart_rename(i8*, i8*, i8*) #1

declare dso_local i32 @unlink_if_ordinary(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
