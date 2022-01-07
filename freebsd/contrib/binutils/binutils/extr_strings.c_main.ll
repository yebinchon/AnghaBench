; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_strings.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_strings.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@PACKAGE = common dso_local global i32 0, align 4
@LOCALEDIR = common dso_local global i32 0, align 4
@program_name = common dso_local global i8* null, align 8
@string_min = common dso_local global i32 0, align 4
@print_addresses = common dso_local global i8* null, align 8
@print_filenames = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@datasection_only = common dso_local global i8* null, align 8
@target = common dso_local global i8* null, align 8
@encoding = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [26 x i8] c"afhHn:ot:e:T:Vv0123456789\00", align 1
@long_options = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"invalid number %s\00", align 1
@address_radix = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"strings\00", align 1
@encoding_bytes = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"{standard input}\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@LC_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load i64, i64* @FALSE, align 8
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %8, align 8
  %11 = load i32, i32* @PACKAGE, align 4
  %12 = load i32, i32* @LOCALEDIR, align 4
  %13 = call i32 @bindtextdomain(i32 %11, i32 %12)
  %14 = load i32, i32* @PACKAGE, align 4
  %15 = call i32 @textdomain(i32 %14)
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** @program_name, align 8
  %19 = load i8*, i8** @program_name, align 8
  %20 = call i32 @xmalloc_set_program_name(i8* %19)
  %21 = call i32 @expandargv(i32* %4, i8*** %5)
  store i32 -1, i32* @string_min, align 4
  %22 = load i64, i64* @FALSE, align 8
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** @print_addresses, align 8
  %24 = load i64, i64* @FALSE, align 8
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** @print_filenames, align 8
  %26 = load i8*, i8** @TRUE, align 8
  store i8* %26, i8** @datasection_only, align 8
  store i8* null, i8** @target, align 8
  store i8 115, i8* @encoding, align 1
  br label %27

27:                                               ; preds = %111, %2
  %28 = load i32, i32* %4, align 4
  %29 = load i8**, i8*** %5, align 8
  %30 = load i32, i32* @long_options, align 4
  %31 = call i32 @getopt_long(i32 %28, i8** %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %30, i32* null)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @EOF, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %112

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  switch i32 %35, label %98 [
    i32 97, label %36
    i32 102, label %39
    i32 72, label %41
    i32 104, label %41
    i32 110, label %44
    i32 111, label %54
    i32 116, label %56
    i32 84, label %78
    i32 101, label %80
    i32 86, label %93
    i32 118, label %93
    i32 63, label %95
  ]

36:                                               ; preds = %34
  %37 = load i64, i64* @FALSE, align 8
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** @datasection_only, align 8
  br label %111

39:                                               ; preds = %34
  %40 = load i8*, i8** @TRUE, align 8
  store i8* %40, i8** @print_filenames, align 8
  br label %111

41:                                               ; preds = %34, %34
  %42 = load i32, i32* @stdout, align 4
  %43 = call i32 @usage(i32 %42, i32 0)
  br label %44

44:                                               ; preds = %34, %41
  %45 = load i8*, i8** @optarg, align 8
  %46 = call i32 @integer_arg(i8* %45)
  store i32 %46, i32* @string_min, align 4
  %47 = load i32, i32* @string_min, align 4
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i8*, i8** @optarg, align 8
  %52 = call i32 @fatal(i32 %50, i8* %51)
  br label %53

53:                                               ; preds = %49, %44
  br label %111

54:                                               ; preds = %34
  %55 = load i8*, i8** @TRUE, align 8
  store i8* %55, i8** @print_addresses, align 8
  store i32 8, i32* @address_radix, align 4
  br label %111

56:                                               ; preds = %34
  %57 = load i8*, i8** @TRUE, align 8
  store i8* %57, i8** @print_addresses, align 8
  %58 = load i8*, i8** @optarg, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* @stderr, align 4
  %65 = call i32 @usage(i32 %64, i32 1)
  br label %66

66:                                               ; preds = %63, %56
  %67 = load i8*, i8** @optarg, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  switch i32 %70, label %74 [
    i32 111, label %71
    i32 100, label %72
    i32 120, label %73
  ]

71:                                               ; preds = %66
  store i32 8, i32* @address_radix, align 4
  br label %77

72:                                               ; preds = %66
  store i32 10, i32* @address_radix, align 4
  br label %77

73:                                               ; preds = %66
  store i32 16, i32* @address_radix, align 4
  br label %77

74:                                               ; preds = %66
  %75 = load i32, i32* @stderr, align 4
  %76 = call i32 @usage(i32 %75, i32 1)
  br label %77

77:                                               ; preds = %74, %73, %72, %71
  br label %111

78:                                               ; preds = %34
  %79 = load i8*, i8** @optarg, align 8
  store i8* %79, i8** @target, align 8
  br label %111

80:                                               ; preds = %34
  %81 = load i8*, i8** @optarg, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* @stderr, align 4
  %88 = call i32 @usage(i32 %87, i32 1)
  br label %89

89:                                               ; preds = %86, %80
  %90 = load i8*, i8** @optarg, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  %92 = load i8, i8* %91, align 1
  store i8 %92, i8* @encoding, align 1
  br label %111

93:                                               ; preds = %34, %34
  %94 = call i32 @print_version(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %111

95:                                               ; preds = %34
  %96 = load i32, i32* @stderr, align 4
  %97 = call i32 @usage(i32 %96, i32 1)
  br label %98

98:                                               ; preds = %34, %95
  %99 = load i32, i32* @string_min, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* %6, align 4
  %103 = sub nsw i32 %102, 48
  store i32 %103, i32* @string_min, align 4
  br label %110

104:                                              ; preds = %98
  %105 = load i32, i32* @string_min, align 4
  %106 = mul nsw i32 %105, 10
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %106, %107
  %109 = sub nsw i32 %108, 48
  store i32 %109, i32* @string_min, align 4
  br label %110

110:                                              ; preds = %104, %101
  br label %111

111:                                              ; preds = %110, %93, %89, %78, %77, %54, %53, %39, %36
  br label %27

112:                                              ; preds = %27
  %113 = load i32, i32* @string_min, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 4, i32* @string_min, align 4
  br label %116

116:                                              ; preds = %115, %112
  %117 = load i8, i8* @encoding, align 1
  %118 = sext i8 %117 to i32
  switch i32 %118, label %122 [
    i32 83, label %119
    i32 115, label %119
    i32 98, label %120
    i32 108, label %120
    i32 66, label %121
    i32 76, label %121
  ]

119:                                              ; preds = %116, %116
  store i32 1, i32* @encoding_bytes, align 4
  br label %125

120:                                              ; preds = %116, %116
  store i32 2, i32* @encoding_bytes, align 4
  br label %125

121:                                              ; preds = %116, %116
  store i32 4, i32* @encoding_bytes, align 4
  br label %125

122:                                              ; preds = %116
  %123 = load i32, i32* @stderr, align 4
  %124 = call i32 @usage(i32 %123, i32 1)
  br label %125

125:                                              ; preds = %122, %121, %120, %119
  %126 = call i32 (...) @bfd_init()
  %127 = call i32 (...) @set_default_bfd_target()
  %128 = load i32, i32* @optind, align 4
  %129 = load i32, i32* %4, align 4
  %130 = icmp sge i32 %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %125
  %132 = load i64, i64* @FALSE, align 8
  %133 = inttoptr i64 %132 to i8*
  store i8* %133, i8** @datasection_only, align 8
  %134 = load i32, i32* @stdin, align 4
  %135 = call i32 @print_strings(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %134, i32 0, i32 0, i32 0, i8* null)
  %136 = load i8*, i8** @TRUE, align 8
  store i8* %136, i8** %8, align 8
  br label %171

137:                                              ; preds = %125
  br label %138

138:                                              ; preds = %167, %137
  %139 = load i32, i32* @optind, align 4
  %140 = load i32, i32* %4, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %170

142:                                              ; preds = %138
  %143 = load i8**, i8*** %5, align 8
  %144 = load i32, i32* @optind, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = call i64 @strcmp(i8* %147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %142
  %151 = load i64, i64* @FALSE, align 8
  %152 = inttoptr i64 %151 to i8*
  store i8* %152, i8** @datasection_only, align 8
  br label %166

153:                                              ; preds = %142
  %154 = load i8*, i8** @TRUE, align 8
  store i8* %154, i8** %8, align 8
  %155 = load i8**, i8*** %5, align 8
  %156 = load i32, i32* @optind, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %155, i64 %157
  %159 = load i8*, i8** %158, align 8
  %160 = call i64 @strings_file(i8* %159)
  %161 = load i64, i64* @FALSE, align 8
  %162 = icmp eq i64 %160, %161
  %163 = zext i1 %162 to i32
  %164 = load i32, i32* %7, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %7, align 4
  br label %166

166:                                              ; preds = %153, %150
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* @optind, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* @optind, align 4
  br label %138

170:                                              ; preds = %138
  br label %171

171:                                              ; preds = %170, %131
  %172 = load i8*, i8** %8, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %177, label %174

174:                                              ; preds = %171
  %175 = load i32, i32* @stderr, align 4
  %176 = call i32 @usage(i32 %175, i32 1)
  br label %177

177:                                              ; preds = %174, %171
  %178 = load i32, i32* %7, align 4
  ret i32 %178
}

declare dso_local i32 @bindtextdomain(i32, i32) #1

declare dso_local i32 @textdomain(i32) #1

declare dso_local i32 @xmalloc_set_program_name(i8*) #1

declare dso_local i32 @expandargv(i32*, i8***) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @usage(i32, i32) #1

declare dso_local i32 @integer_arg(i8*) #1

declare dso_local i32 @fatal(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @print_version(i8*) #1

declare dso_local i32 @bfd_init(...) #1

declare dso_local i32 @set_default_bfd_target(...) #1

declare dso_local i32 @print_strings(i8*, i32, i32, i32, i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strings_file(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
