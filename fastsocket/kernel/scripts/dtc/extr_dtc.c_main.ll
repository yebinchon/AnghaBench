; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_dtc.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_dtc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.boot_info = type { i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c"dts\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@DEFAULT_FDT_VERSION = common dso_local global i32 0, align 4
@quiet = common dso_local global i64 0, align 8
@reservenum = common dso_local global i8* null, align 8
@minsize = common dso_local global i8* null, align 8
@padsize = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"hI:O:o:V:R:S:p:fcqb:v\00", align 1
@EOF = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"Version: %s\0A\00", align 1
@DTC_VERSION = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Can't set both -p and -S\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"DTC: %s->%s  on file \22%s\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"dtb\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Unknown input format \22%s\22\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stdout = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Couldn't open output file %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"asm\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Unknown output format \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.boot_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32* null, i32** %14, align 8
  %17 = load i32, i32* @DEFAULT_FDT_VERSION, align 4
  store i32 %17, i32* %15, align 4
  store i64 -1, i64* %16, align 8
  store i64 0, i64* @quiet, align 8
  store i8* null, i8** @reservenum, align 8
  store i8* null, i8** @minsize, align 8
  store i8* null, i8** @padsize, align 8
  br label %18

18:                                               ; preds = %60, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @getopt(i32 %19, i8** %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* @EOF, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %18
  %25 = load i32, i32* %13, align 4
  switch i32 %25, label %58 [
    i32 73, label %26
    i32 79, label %28
    i32 111, label %30
    i32 86, label %32
    i32 82, label %36
    i32 83, label %39
    i32 112, label %42
    i32 102, label %45
    i32 99, label %46
    i32 113, label %47
    i32 98, label %50
    i32 118, label %53
    i32 104, label %57
  ]

26:                                               ; preds = %24
  %27 = load i8*, i8** @optarg, align 8
  store i8* %27, i8** %7, align 8
  br label %60

28:                                               ; preds = %24
  %29 = load i8*, i8** @optarg, align 8
  store i8* %29, i8** %8, align 8
  br label %60

30:                                               ; preds = %24
  %31 = load i8*, i8** @optarg, align 8
  store i8* %31, i8** %9, align 8
  br label %60

32:                                               ; preds = %24
  %33 = load i8*, i8** @optarg, align 8
  %34 = call i8* @strtol(i8* %33, i32* null, i32 0)
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* %15, align 4
  br label %60

36:                                               ; preds = %24
  %37 = load i8*, i8** @optarg, align 8
  %38 = call i8* @strtol(i8* %37, i32* null, i32 0)
  store i8* %38, i8** @reservenum, align 8
  br label %60

39:                                               ; preds = %24
  %40 = load i8*, i8** @optarg, align 8
  %41 = call i8* @strtol(i8* %40, i32* null, i32 0)
  store i8* %41, i8** @minsize, align 8
  br label %60

42:                                               ; preds = %24
  %43 = load i8*, i8** @optarg, align 8
  %44 = call i8* @strtol(i8* %43, i32* null, i32 0)
  store i8* %44, i8** @padsize, align 8
  br label %60

45:                                               ; preds = %24
  store i32 1, i32* %10, align 4
  br label %60

46:                                               ; preds = %24
  store i32 1, i32* %11, align 4
  br label %60

47:                                               ; preds = %24
  %48 = load i64, i64* @quiet, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* @quiet, align 8
  br label %60

50:                                               ; preds = %24
  %51 = load i8*, i8** @optarg, align 8
  %52 = call i64 @strtoll(i8* %51, i32* null, i32 0)
  store i64 %52, i64* %16, align 8
  br label %60

53:                                               ; preds = %24
  %54 = load i8*, i8** @DTC_VERSION, align 8
  %55 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  %56 = call i32 @exit(i32 0) #3
  unreachable

57:                                               ; preds = %24
  br label %58

58:                                               ; preds = %24, %57
  %59 = call i32 (...) @usage()
  br label %60

60:                                               ; preds = %58, %50, %47, %46, %45, %42, %39, %36, %32, %30, %28, %26
  br label %18

61:                                               ; preds = %18
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @optind, align 4
  %64 = add nsw i32 %63, 1
  %65 = icmp sgt i32 %62, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = call i32 (...) @usage()
  br label %81

68:                                               ; preds = %61
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @optind, align 4
  %71 = add nsw i32 %70, 1
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %80

74:                                               ; preds = %68
  %75 = load i8**, i8*** %5, align 8
  %76 = load i32, i32* @optind, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %12, align 8
  br label %80

80:                                               ; preds = %74, %73
  br label %81

81:                                               ; preds = %80, %66
  %82 = load i8*, i8** @minsize, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i8*, i8** @padsize, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %84, %81
  %90 = load i32, i32* @stderr, align 4
  %91 = load i8*, i8** %7, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = call i32 @fprintf(i32 %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %91, i8* %92, i8* %93)
  %95 = load i8*, i8** %7, align 8
  %96 = call i64 @streq(i8* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %89
  %99 = load i8*, i8** %12, align 8
  %100 = call %struct.boot_info* @dt_from_source(i8* %99)
  store %struct.boot_info* %100, %struct.boot_info** %6, align 8
  br label %120

101:                                              ; preds = %89
  %102 = load i8*, i8** %7, align 8
  %103 = call i64 @streq(i8* %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i8*, i8** %12, align 8
  %107 = call %struct.boot_info* @dt_from_fs(i8* %106)
  store %struct.boot_info* %107, %struct.boot_info** %6, align 8
  br label %119

108:                                              ; preds = %101
  %109 = load i8*, i8** %7, align 8
  %110 = call i64 @streq(i8* %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i8*, i8** %12, align 8
  %114 = call %struct.boot_info* @dt_from_blob(i8* %113)
  store %struct.boot_info* %114, %struct.boot_info** %6, align 8
  br label %118

115:                                              ; preds = %108
  %116 = load i8*, i8** %7, align 8
  %117 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* %116)
  br label %118

118:                                              ; preds = %115, %112
  br label %119

119:                                              ; preds = %118, %105
  br label %120

120:                                              ; preds = %119, %98
  %121 = load i64, i64* %16, align 8
  %122 = icmp ne i64 %121, -1
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i64, i64* %16, align 8
  %125 = load %struct.boot_info*, %struct.boot_info** %6, align 8
  %126 = getelementptr inbounds %struct.boot_info, %struct.boot_info* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %123, %120
  %128 = load %struct.boot_info*, %struct.boot_info** %6, align 8
  %129 = getelementptr inbounds %struct.boot_info, %struct.boot_info* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @fill_fullpaths(i32 %130, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0))
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.boot_info*, %struct.boot_info** %6, align 8
  %134 = call i32 @process_checks(i32 %132, %struct.boot_info* %133)
  %135 = load i8*, i8** %9, align 8
  %136 = call i64 @streq(i8* %135, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %127
  %139 = load i32*, i32** @stdout, align 8
  store i32* %139, i32** %14, align 8
  br label %151

140:                                              ; preds = %127
  %141 = load i8*, i8** %9, align 8
  %142 = call i32* @fopen(i8* %141, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  store i32* %142, i32** %14, align 8
  %143 = load i32*, i32** %14, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %150, label %145

145:                                              ; preds = %140
  %146 = load i8*, i8** %9, align 8
  %147 = load i32, i32* @errno, align 4
  %148 = call i32 @strerror(i32 %147)
  %149 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i8* %146, i32 %148)
  br label %150

150:                                              ; preds = %145, %140
  br label %151

151:                                              ; preds = %150, %138
  %152 = load i8*, i8** %8, align 8
  %153 = call i64 @streq(i8* %152, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load i32*, i32** %14, align 8
  %157 = load %struct.boot_info*, %struct.boot_info** %6, align 8
  %158 = call i32 @dt_to_source(i32* %156, %struct.boot_info* %157)
  br label %188

159:                                              ; preds = %151
  %160 = load i8*, i8** %8, align 8
  %161 = call i64 @streq(i8* %160, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %159
  %164 = load i32*, i32** %14, align 8
  %165 = load %struct.boot_info*, %struct.boot_info** %6, align 8
  %166 = load i32, i32* %15, align 4
  %167 = call i32 @dt_to_blob(i32* %164, %struct.boot_info* %165, i32 %166)
  br label %187

168:                                              ; preds = %159
  %169 = load i8*, i8** %8, align 8
  %170 = call i64 @streq(i8* %169, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %168
  %173 = load i32*, i32** %14, align 8
  %174 = load %struct.boot_info*, %struct.boot_info** %6, align 8
  %175 = load i32, i32* %15, align 4
  %176 = call i32 @dt_to_asm(i32* %173, %struct.boot_info* %174, i32 %175)
  br label %186

177:                                              ; preds = %168
  %178 = load i8*, i8** %8, align 8
  %179 = call i64 @streq(i8* %178, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %177
  br label %185

182:                                              ; preds = %177
  %183 = load i8*, i8** %8, align 8
  %184 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i8* %183)
  br label %185

185:                                              ; preds = %182, %181
  br label %186

186:                                              ; preds = %185, %172
  br label %187

187:                                              ; preds = %186, %163
  br label %188

188:                                              ; preds = %187, %155
  %189 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @strtol(i8*, i32*, i32) #1

declare dso_local i64 @strtoll(i8*, i32*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @usage(...) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local %struct.boot_info* @dt_from_source(i8*) #1

declare dso_local %struct.boot_info* @dt_from_fs(i8*) #1

declare dso_local %struct.boot_info* @dt_from_blob(i8*) #1

declare dso_local i32 @fill_fullpaths(i32, i8*) #1

declare dso_local i32 @process_checks(i32, %struct.boot_info*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @dt_to_source(i32*, %struct.boot_info*) #1

declare dso_local i32 @dt_to_blob(i32*, %struct.boot_info*, i32) #1

declare dso_local i32 @dt_to_asm(i32*, %struct.boot_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
