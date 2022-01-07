; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/strings/extr_strings.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/strings/extr_strings.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@min_len = common dso_local global i32 0, align 4
@encoding_size = common dso_local global i32 0, align 4
@EV_CURRENT = common dso_local global i32 0, align 4
@EV_NONE = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ELF library initialization failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"1234567890ae:fhn:ot:Vv\00", align 1
@strings_longopts = common dso_local global i32 0, align 4
@entire_file = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@ENCODING_7BIT = common dso_local global i32 0, align 4
@encoding = common dso_local global i32 0, align 4
@ENCODING_8BIT = common dso_local global i32 0, align 4
@ENCODING_16BIT_BIG = common dso_local global i32 0, align 4
@ENCODING_32BIT_BIG = common dso_local global i32 0, align 4
@ENCODING_16BIT_LITTLE = common dso_local global i32 0, align 4
@ENCODING_32BIT_LITTLE = common dso_local global i32 0, align 4
@show_filename = common dso_local global i32 0, align 4
@EX_USAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"option -n should specify a positive decimal integer.\00", align 1
@show_loc = common dso_local global i32 0, align 4
@RADIX_OCTAL = common dso_local global i32 0, align 4
@radix = common dso_local global i32 0, align 4
@RADIX_DECIMAL = common dso_local global i32 0, align 4
@RADIX_HEX = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@CAP_READ = common dso_local global i32 0, align 4
@CAP_SEEK = common dso_local global i32 0, align 4
@CAP_FSTAT = common dso_local global i32 0, align 4
@CAP_FCNTL = common dso_local global i32 0, align 4
@CAP_MMAP_R = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@FA_OPEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Unable to initialize casper fileargs\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Unable to enter capability mode\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"{standard input}\00", align 1
@stdin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* @min_len, align 4
  store i32 1, i32* @encoding_size, align 4
  %10 = load i32, i32* @EV_CURRENT, align 4
  %11 = call i64 @elf_version(i32 %10)
  %12 = load i64, i64* @EV_NONE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @EXIT_FAILURE, align 4
  %16 = call i32 @elf_errmsg(i32 -1)
  %17 = call i32 (i32, i8*, ...) @errx(i32 %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %14, %2
  br label %19

19:                                               ; preds = %130, %18
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = load i32, i32* @strings_longopts, align 4
  %23 = call i32 @getopt_long(i32 %20, i8** %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32* null)
  store i32 %23, i32* %8, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %131

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = trunc i32 %26 to i8
  %28 = sext i8 %27 to i32
  switch i32 %28, label %128 [
    i32 97, label %29
    i32 101, label %30
    i32 102, label %80
    i32 110, label %81
    i32 111, label %90
    i32 116, label %92
    i32 118, label %118
    i32 86, label %118
    i32 48, label %120
    i32 49, label %120
    i32 50, label %120
    i32 51, label %120
    i32 52, label %120
    i32 53, label %120
    i32 54, label %120
    i32 55, label %120
    i32 56, label %120
    i32 57, label %120
    i32 104, label %127
    i32 63, label %127
  ]

29:                                               ; preds = %25
  store i32 1, i32* @entire_file, align 4
  br label %130

30:                                               ; preds = %25
  %31 = load i8*, i8** @optarg, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 115
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @ENCODING_7BIT, align 4
  store i32 %36, i32* @encoding, align 4
  br label %79

37:                                               ; preds = %30
  %38 = load i8*, i8** @optarg, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 83
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @ENCODING_8BIT, align 4
  store i32 %43, i32* @encoding, align 4
  br label %78

44:                                               ; preds = %37
  %45 = load i8*, i8** @optarg, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 98
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @ENCODING_16BIT_BIG, align 4
  store i32 %50, i32* @encoding, align 4
  store i32 2, i32* @encoding_size, align 4
  br label %77

51:                                               ; preds = %44
  %52 = load i8*, i8** @optarg, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 66
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @ENCODING_32BIT_BIG, align 4
  store i32 %57, i32* @encoding, align 4
  store i32 4, i32* @encoding_size, align 4
  br label %76

58:                                               ; preds = %51
  %59 = load i8*, i8** @optarg, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 108
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @ENCODING_16BIT_LITTLE, align 4
  store i32 %64, i32* @encoding, align 4
  store i32 2, i32* @encoding_size, align 4
  br label %75

65:                                               ; preds = %58
  %66 = load i8*, i8** @optarg, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 76
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @ENCODING_32BIT_LITTLE, align 4
  store i32 %71, i32* @encoding, align 4
  store i32 4, i32* @encoding_size, align 4
  br label %74

72:                                               ; preds = %65
  %73 = call i32 (...) @usage()
  br label %74

74:                                               ; preds = %72, %70
  br label %75

75:                                               ; preds = %74, %63
  br label %76

76:                                               ; preds = %75, %56
  br label %77

77:                                               ; preds = %76, %49
  br label %78

78:                                               ; preds = %77, %42
  br label %79

79:                                               ; preds = %78, %35
  br label %130

80:                                               ; preds = %25
  store i32 1, i32* @show_filename, align 4
  br label %130

81:                                               ; preds = %25
  %82 = load i8*, i8** @optarg, align 8
  %83 = call i32 @strtoimax(i8* %82, i8** null, i32 10)
  store i32 %83, i32* @min_len, align 4
  %84 = load i32, i32* @min_len, align 4
  %85 = icmp sle i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* @EX_USAGE, align 4
  %88 = call i32 (i32, i8*, ...) @errx(i32 %87, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %81
  br label %130

90:                                               ; preds = %25
  store i32 1, i32* @show_loc, align 4
  %91 = load i32, i32* @RADIX_OCTAL, align 4
  store i32 %91, i32* @radix, align 4
  br label %130

92:                                               ; preds = %25
  store i32 1, i32* @show_loc, align 4
  %93 = load i8*, i8** @optarg, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 100
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* @RADIX_DECIMAL, align 4
  store i32 %98, i32* @radix, align 4
  br label %117

99:                                               ; preds = %92
  %100 = load i8*, i8** @optarg, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 111
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* @RADIX_OCTAL, align 4
  store i32 %105, i32* @radix, align 4
  br label %116

106:                                              ; preds = %99
  %107 = load i8*, i8** @optarg, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 120
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i32, i32* @RADIX_HEX, align 4
  store i32 %112, i32* @radix, align 4
  br label %115

113:                                              ; preds = %106
  %114 = call i32 (...) @usage()
  br label %115

115:                                              ; preds = %113, %111
  br label %116

116:                                              ; preds = %115, %104
  br label %117

117:                                              ; preds = %116, %97
  br label %130

118:                                              ; preds = %25, %25
  %119 = call i32 (...) @show_version()
  br label %120

120:                                              ; preds = %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %118
  %121 = load i32, i32* @min_len, align 4
  %122 = mul nsw i32 %121, 10
  store i32 %122, i32* @min_len, align 4
  %123 = load i32, i32* %8, align 4
  %124 = sub nsw i32 %123, 48
  %125 = load i32, i32* @min_len, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* @min_len, align 4
  br label %130

127:                                              ; preds = %25, %25
  br label %128

128:                                              ; preds = %25, %127
  %129 = call i32 (...) @usage()
  br label %130

130:                                              ; preds = %128, %120, %117, %90, %89, %80, %79, %29
  br label %19

131:                                              ; preds = %19
  %132 = load i64, i64* @optind, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = sub nsw i64 %134, %132
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %4, align 4
  %137 = load i64, i64* @optind, align 8
  %138 = load i8**, i8*** %5, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 %137
  store i8** %139, i8*** %5, align 8
  %140 = load i32, i32* @CAP_READ, align 4
  %141 = load i32, i32* @CAP_SEEK, align 4
  %142 = load i32, i32* @CAP_FSTAT, align 4
  %143 = load i32, i32* @CAP_FCNTL, align 4
  %144 = load i32, i32* @CAP_MMAP_R, align 4
  %145 = call i32 @cap_rights_init(i32* %7, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144)
  %146 = load i32, i32* %4, align 4
  %147 = load i8**, i8*** %5, align 8
  %148 = load i32, i32* @O_RDONLY, align 4
  %149 = load i32, i32* @FA_OPEN, align 4
  %150 = call i32* @fileargs_init(i32 %146, i8** %147, i32 %148, i32 0, i32* %7, i32 %149)
  store i32* %150, i32** %6, align 8
  %151 = load i32*, i32** %6, align 8
  %152 = icmp eq i32* %151, null
  br i1 %152, label %153, label %155

153:                                              ; preds = %131
  %154 = call i32 @err(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %155

155:                                              ; preds = %153, %131
  %156 = call i32 (...) @caph_cache_catpages()
  %157 = call i64 (...) @caph_limit_stdio()
  %158 = icmp slt i64 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %155
  %160 = call i64 (...) @caph_enter_casper()
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %159, %155
  %163 = load i32*, i32** %6, align 8
  %164 = call i32 @fileargs_free(i32* %163)
  %165 = call i32 @err(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %166

166:                                              ; preds = %162, %159
  %167 = load i32, i32* @min_len, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  store i32 4, i32* @min_len, align 4
  br label %170

170:                                              ; preds = %169, %166
  %171 = load i8**, i8*** %5, align 8
  %172 = load i8*, i8** %171, align 8
  %173 = icmp eq i8* %172, null
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = load i32, i32* @stdin, align 4
  %176 = call i32 @find_strings(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %175, i32 0, i32 0)
  store i32 %176, i32* %9, align 4
  br label %193

177:                                              ; preds = %170
  br label %178

178:                                              ; preds = %189, %177
  %179 = load i8**, i8*** %5, align 8
  %180 = load i8*, i8** %179, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %192

182:                                              ; preds = %178
  %183 = load i32*, i32** %6, align 8
  %184 = load i8**, i8*** %5, align 8
  %185 = load i8*, i8** %184, align 8
  %186 = call i64 @handle_file(i32* %183, i8* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %182
  store i32 1, i32* %9, align 4
  br label %189

189:                                              ; preds = %188, %182
  %190 = load i8**, i8*** %5, align 8
  %191 = getelementptr inbounds i8*, i8** %190, i32 1
  store i8** %191, i8*** %5, align 8
  br label %178

192:                                              ; preds = %178
  br label %193

193:                                              ; preds = %192, %174
  %194 = load i32*, i32** %6, align 8
  %195 = call i32 @fileargs_free(i32* %194)
  %196 = load i32, i32* %9, align 4
  ret i32 %196
}

declare dso_local i64 @elf_version(i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @strtoimax(i8*, i8**, i32) #1

declare dso_local i32 @show_version(...) #1

declare dso_local i32 @cap_rights_init(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32* @fileargs_init(i32, i8**, i32, i32, i32*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @caph_cache_catpages(...) #1

declare dso_local i64 @caph_limit_stdio(...) #1

declare dso_local i64 @caph_enter_casper(...) #1

declare dso_local i32 @fileargs_free(i32*) #1

declare dso_local i32 @find_strings(i8*, i32, i32, i32) #1

declare dso_local i64 @handle_file(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
