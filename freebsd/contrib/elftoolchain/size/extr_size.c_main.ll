; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/size/extr_size.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/size/extr_size.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RETURN_OK = common dso_local global i32 0, align 4
@EV_CURRENT = common dso_local global i32 0, align 4
@EV_NONE = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ELF library initialization failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ABVdhotx\00", align 1
@size_longopts = common dso_local global i32 0, align 4
@STYLE_SYSV = common dso_local global i64 0, align 8
@style = common dso_local global i64 0, align 8
@STYLE_BERKELEY = common dso_local global i64 0, align 8
@RADIX_DECIMAL = common dso_local global i32 0, align 4
@radix = common dso_local global i32 0, align 4
@RADIX_OCTAL = common dso_local global i32 0, align 4
@show_totals = common dso_local global i32 0, align 4
@RADIX_HEX = common dso_local global i32 0, align 4
@size_option = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"unrecognized format \22%s\22.\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"unsupported radix \22%s\22.\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Error in option handling.\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"a.out\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@CAP_FSTAT = common dso_local global i32 0, align 4
@CAP_MMAP_R = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@FA_OPEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"failed to initialize fileargs\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"failed to limit stdio rights\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"failed to enter capability mode\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"%s: Failed to open\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"%s: File format not recognized\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* @RETURN_OK, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* @EV_CURRENT, align 4
  %16 = call i64 @elf_version(i32 %15)
  %17 = load i64, i64* @EV_NONE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @EXIT_FAILURE, align 4
  %21 = call i32 @elf_errmsg(i32 -1)
  %22 = call i32 @errx(i32 %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %19, %2
  br label %24

24:                                               ; preds = %110, %23
  %25 = load i32, i32* %4, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = load i32, i32* @size_longopts, align 4
  %28 = call i32 @getopt_long(i32 %25, i8** %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32* null)
  store i32 %28, i32* %8, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %111

30:                                               ; preds = %24
  %31 = load i32, i32* %8, align 4
  %32 = trunc i32 %31 to i8
  %33 = sext i8 %32 to i32
  switch i32 %33, label %108 [
    i32 65, label %34
    i32 66, label %36
    i32 86, label %38
    i32 100, label %40
    i32 111, label %42
    i32 116, label %44
    i32 120, label %45
    i32 0, label %47
    i32 104, label %107
    i32 63, label %107
  ]

34:                                               ; preds = %30
  %35 = load i64, i64* @STYLE_SYSV, align 8
  store i64 %35, i64* @style, align 8
  br label %110

36:                                               ; preds = %30
  %37 = load i64, i64* @STYLE_BERKELEY, align 8
  store i64 %37, i64* @style, align 8
  br label %110

38:                                               ; preds = %30
  %39 = call i32 (...) @show_version()
  br label %110

40:                                               ; preds = %30
  %41 = load i32, i32* @RADIX_DECIMAL, align 4
  store i32 %41, i32* @radix, align 4
  br label %110

42:                                               ; preds = %30
  %43 = load i32, i32* @RADIX_OCTAL, align 4
  store i32 %43, i32* @radix, align 4
  br label %110

44:                                               ; preds = %30
  store i32 1, i32* @show_totals, align 4
  br label %110

45:                                               ; preds = %30
  %46 = load i32, i32* @RADIX_HEX, align 4
  store i32 %46, i32* @radix, align 4
  br label %110

47:                                               ; preds = %30
  %48 = load i32, i32* @size_option, align 4
  switch i32 %48, label %103 [
    i32 129, label %49
    i32 128, label %79
  ]

49:                                               ; preds = %47
  %50 = load i8*, i8** @optarg, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 115
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load i8*, i8** @optarg, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 83
  br i1 %58, label %59, label %61

59:                                               ; preds = %54, %49
  %60 = load i64, i64* @STYLE_SYSV, align 8
  store i64 %60, i64* @style, align 8
  br label %78

61:                                               ; preds = %54
  %62 = load i8*, i8** @optarg, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 98
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load i8*, i8** @optarg, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 66
  br i1 %70, label %71, label %73

71:                                               ; preds = %66, %61
  %72 = load i64, i64* @STYLE_BERKELEY, align 8
  store i64 %72, i64* @style, align 8
  br label %77

73:                                               ; preds = %66
  %74 = load i8*, i8** @optarg, align 8
  %75 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %74)
  %76 = call i32 (...) @usage()
  br label %77

77:                                               ; preds = %73, %71
  br label %78

78:                                               ; preds = %77, %59
  br label %106

79:                                               ; preds = %47
  %80 = load i8*, i8** @optarg, align 8
  %81 = call i32 @strtol(i8* %80, i32* null, i32 10)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp eq i32 %82, 8
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* @RADIX_OCTAL, align 4
  store i32 %85, i32* @radix, align 4
  br label %102

86:                                               ; preds = %79
  %87 = load i32, i32* %10, align 4
  %88 = icmp eq i32 %87, 10
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i32, i32* @RADIX_DECIMAL, align 4
  store i32 %90, i32* @radix, align 4
  br label %101

91:                                               ; preds = %86
  %92 = load i32, i32* %10, align 4
  %93 = icmp eq i32 %92, 16
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32, i32* @RADIX_HEX, align 4
  store i32 %95, i32* @radix, align 4
  br label %100

96:                                               ; preds = %91
  %97 = load i8*, i8** @optarg, align 8
  %98 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %97)
  %99 = call i32 (...) @usage()
  br label %100

100:                                              ; preds = %96, %94
  br label %101

101:                                              ; preds = %100, %89
  br label %102

102:                                              ; preds = %101, %84
  br label %106

103:                                              ; preds = %47
  %104 = load i32, i32* @EXIT_FAILURE, align 4
  %105 = call i32 @err(i32 %104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %102, %78
  br label %110

107:                                              ; preds = %30, %30
  br label %108

108:                                              ; preds = %30, %107
  %109 = call i32 (...) @usage()
  br label %110

110:                                              ; preds = %108, %106, %45, %44, %42, %40, %38, %36, %34
  br label %24

111:                                              ; preds = %24
  %112 = load i64, i64* @optind, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = sub nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %4, align 4
  %117 = load i64, i64* @optind, align 8
  %118 = load i8**, i8*** %5, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 %117
  store i8** %119, i8*** %5, align 8
  %120 = load i32, i32* %4, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %111
  %123 = call i8* @strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i8* %123, i8** %13, align 8
  %124 = load i8*, i8** %13, align 8
  %125 = icmp eq i8* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load i32, i32* @EXIT_FAILURE, align 4
  %128 = call i32 @err(i32 %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %129

129:                                              ; preds = %126, %122
  store i32 1, i32* %4, align 4
  store i8** %13, i8*** %5, align 8
  br label %131

130:                                              ; preds = %111
  store i8* null, i8** %13, align 8
  br label %131

131:                                              ; preds = %130, %129
  %132 = load i32, i32* @CAP_FSTAT, align 4
  %133 = load i32, i32* @CAP_MMAP_R, align 4
  %134 = call i32 @cap_rights_init(i32* %6, i32 %132, i32 %133)
  %135 = load i32, i32* %4, align 4
  %136 = load i8**, i8*** %5, align 8
  %137 = load i32, i32* @O_RDONLY, align 4
  %138 = load i32, i32* @FA_OPEN, align 4
  %139 = call i32* @fileargs_init(i32 %135, i8** %136, i32 %137, i32 0, i32* %6, i32 %138)
  store i32* %139, i32** %7, align 8
  %140 = load i32*, i32** %7, align 8
  %141 = icmp eq i32* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %131
  %143 = load i32, i32* @EXIT_FAILURE, align 4
  %144 = call i32 @err(i32 %143, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %145

145:                                              ; preds = %142, %131
  %146 = call i32 (...) @caph_cache_catpages()
  %147 = call i64 (...) @caph_limit_stdio()
  %148 = icmp slt i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load i32, i32* @EXIT_FAILURE, align 4
  %151 = call i32 @err(i32 %150, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  br label %152

152:                                              ; preds = %149, %145
  %153 = call i64 (...) @caph_enter_casper()
  %154 = icmp slt i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i32, i32* @EXIT_FAILURE, align 4
  %157 = call i32 @err(i32 %156, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  br label %158

158:                                              ; preds = %155, %152
  br label %159

159:                                              ; preds = %185, %158
  %160 = load i32, i32* %4, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %190

162:                                              ; preds = %159
  %163 = load i8**, i8*** %5, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 0
  %165 = load i8*, i8** %164, align 8
  store i8* %165, i8** %12, align 8
  %166 = load i32*, i32** %7, align 8
  %167 = load i8*, i8** %12, align 8
  %168 = call i32 @fileargs_open(i32* %166, i8* %167)
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %9, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %162
  %172 = load i8*, i8** %12, align 8
  %173 = call i32 @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %172)
  br label %185

174:                                              ; preds = %162
  %175 = load i32, i32* %9, align 4
  %176 = load i8*, i8** %12, align 8
  %177 = call i32 @handle_elf(i32 %175, i8* %176)
  store i32 %177, i32* %11, align 4
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* @RETURN_OK, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %174
  %182 = load i8*, i8** %12, align 8
  %183 = call i32 @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i8* %182)
  br label %184

184:                                              ; preds = %181, %174
  br label %185

185:                                              ; preds = %184, %171
  %186 = load i32, i32* %4, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %4, align 4
  %188 = load i8**, i8*** %5, align 8
  %189 = getelementptr inbounds i8*, i8** %188, i32 1
  store i8** %189, i8*** %5, align 8
  br label %159

190:                                              ; preds = %159
  %191 = load i64, i64* @style, align 8
  %192 = load i64, i64* @STYLE_BERKELEY, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %201

194:                                              ; preds = %190
  %195 = load i32, i32* @show_totals, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %194
  %198 = call i32 (...) @berkeley_totals()
  br label %199

199:                                              ; preds = %197, %194
  %200 = call i32 (...) @tbl_flush()
  br label %201

201:                                              ; preds = %199, %190
  %202 = load i32*, i32** %7, align 8
  %203 = call i32 @fileargs_free(i32* %202)
  %204 = load i8*, i8** %13, align 8
  %205 = call i32 @free(i8* %204)
  %206 = load i32, i32* %11, align 4
  ret i32 %206
}

declare dso_local i64 @elf_version(i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @show_version(...) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @cap_rights_init(i32*, i32, i32) #1

declare dso_local i32* @fileargs_init(i32, i8**, i32, i32, i32*, i32) #1

declare dso_local i32 @caph_cache_catpages(...) #1

declare dso_local i64 @caph_limit_stdio(...) #1

declare dso_local i64 @caph_enter_casper(...) #1

declare dso_local i32 @fileargs_open(i32*, i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @handle_elf(i32, i8*) #1

declare dso_local i32 @berkeley_totals(...) #1

declare dso_local i32 @tbl_flush(...) #1

declare dso_local i32 @fileargs_free(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
