; ModuleID = '/home/carl/AnghaBench/freebsd/bin/uuidgen/extr_uuidgen.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/uuidgen/extr_uuidgen.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"1n:o:\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"multiple output files not allowed\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"fopen\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"Unable to limit stdio\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Unable to enter capability mode\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"malloc()\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"uuidgen()\00", align 1
@uuid_s_ok = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"cannot stringify a UUID\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 -1, i32* %11, align 4
  %15 = load i32*, i32** @stdout, align 8
  store i32* %15, i32** %6, align 8
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %58, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @getopt(i32 %17, i8** %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %10, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %59

21:                                               ; preds = %16
  %22 = load i32, i32* %10, align 4
  switch i32 %22, label %56 [
    i32 49, label %23
    i32 110, label %24
    i32 111, label %42
  ]

23:                                               ; preds = %21
  store i32 1, i32* %13, align 4
  br label %58

24:                                               ; preds = %21
  %25 = load i32, i32* %11, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 (...) @usage()
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i32, i32* @optarg, align 4
  %31 = call i32 @strtol(i32 %30, i8** %9, i32 10)
  store i32 %31, i32* %11, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 1
  br i1 %38, label %39, label %41

39:                                               ; preds = %36, %29
  %40 = call i32 (...) @usage()
  br label %41

41:                                               ; preds = %39, %36
  br label %58

42:                                               ; preds = %21
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** @stdout, align 8
  %45 = icmp ne i32* %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i32, i32* @optarg, align 4
  %50 = call i32* @fopen(i32 %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %50, i32** %6, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %48
  br label %58

56:                                               ; preds = %21
  %57 = call i32 (...) @usage()
  br label %58

58:                                               ; preds = %56, %55, %41, %23
  br label %16

59:                                               ; preds = %16
  %60 = load i64, i64* @optind, align 8
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 %60
  store i8** %62, i8*** %5, align 8
  %63 = load i64, i64* @optind, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = sub nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %59
  %71 = call i32 (...) @usage()
  br label %72

72:                                               ; preds = %70, %59
  %73 = call i32 (...) @caph_cache_catpages()
  %74 = call i64 (...) @caph_limit_stdio()
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = call i32 @err(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %72
  %79 = call i64 (...) @caph_enter()
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = call i32 @err(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %78
  %84 = load i32, i32* %11, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 1, i32* %11, align 4
  br label %87

87:                                               ; preds = %86, %83
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 1, %89
  %91 = trunc i64 %90 to i32
  %92 = call i64 @malloc(i32 %91)
  %93 = inttoptr i64 %92 to i8*
  store i8* %93, i8** %7, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %87
  %97 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %87
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %98
  %102 = load i8*, i8** %7, align 8
  %103 = load i32, i32* %11, align 4
  %104 = call i64 @uuidgen(i8* %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %101
  br label %127

109:                                              ; preds = %98
  %110 = load i8*, i8** %7, align 8
  store i8* %110, i8** %8, align 8
  store i32 0, i32* %12, align 4
  br label %111

111:                                              ; preds = %123, %109
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %111
  %116 = load i8*, i8** %8, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %8, align 8
  %118 = call i64 @uuidgen(i8* %116, i32 1)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %115
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %12, align 4
  br label %111

126:                                              ; preds = %111
  br label %127

127:                                              ; preds = %126, %108
  %128 = load i8*, i8** %7, align 8
  store i8* %128, i8** %8, align 8
  br label %129

129:                                              ; preds = %143, %127
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %11, align 4
  %132 = icmp ne i32 %130, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %129
  %134 = load i8*, i8** %8, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %8, align 8
  %136 = ptrtoint i8* %134 to i32
  %137 = call i32 @uuid_to_string(i32 %136, i8** %9, i32* %14)
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* @uuid_s_ok, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %133
  %142 = call i32 @err(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %133
  %144 = load i32*, i32** %6, align 8
  %145 = load i8*, i8** %9, align 8
  %146 = call i32 @fprintf(i32* %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %145)
  %147 = load i8*, i8** %9, align 8
  %148 = call i32 @free(i8* %147)
  br label %129

149:                                              ; preds = %129
  %150 = load i8*, i8** %7, align 8
  %151 = call i32 @free(i8* %150)
  %152 = load i32*, i32** %6, align 8
  %153 = load i32*, i32** @stdout, align 8
  %154 = icmp ne i32* %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load i32*, i32** %6, align 8
  %157 = call i32 @fclose(i32* %156)
  br label %158

158:                                              ; preds = %155, %149
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @strtol(i32, i8**, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @caph_cache_catpages(...) #1

declare dso_local i64 @caph_limit_stdio(...) #1

declare dso_local i64 @caph_enter(...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @uuidgen(i8*, i32) #1

declare dso_local i32 @uuid_to_string(i32, i8**, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
