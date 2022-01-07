; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_super.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_super.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"AFFS: Invalid blocksize (512, 1024, 2048, 4096 allowed)\0A\00", align 1
@SF_SETMODE = common dso_local global i64 0, align 8
@SF_MUFS = common dso_local global i64 0, align 8
@SF_PREFIX = common dso_local global i64 0, align 8
@SF_IMMUTABLE = common dso_local global i64 0, align 8
@SF_SETGID = common dso_local global i64 0, align 8
@SF_SETUID = common dso_local global i64 0, align 8
@SF_VERBOSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"AFFS: Unrecognized mount option \22%s\22 or missing value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32*, i32*, i32*, i32*, i8**, i8*, i64*)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_options(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i8** %7, i8* %8, i64* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8**, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  store i8* %0, i8** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32* %3, i32** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i8** %7, i8*** %19, align 8
  store i8* %8, i8** %20, align 8
  store i64* %9, i64** %21, align 8
  %30 = load i32, i32* @MAX_OPT_ARGS, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %23, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %24, align 8
  %34 = call i32 (...) @current_uid()
  %35 = load i32*, i32** %13, align 8
  store i32 %34, i32* %35, align 4
  %36 = call i32 (...) @current_gid()
  %37 = load i32*, i32** %14, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %16, align 8
  store i32 2, i32* %38, align 4
  %39 = load i32*, i32** %17, align 8
  store i32 -1, i32* %39, align 4
  %40 = load i32*, i32** %18, align 8
  store i32 -1, i32* %40, align 4
  %41 = load i8*, i8** %20, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 58, i8* %42, align 1
  %43 = load i8*, i8** %20, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  store i8 0, i8* %44, align 1
  %45 = load i64*, i64** %21, align 8
  store i64 0, i64* %45, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %10
  store i32 1, i32* %11, align 4
  store i32 1, i32* %25, align 4
  br label %189

49:                                               ; preds = %10
  br label %50

50:                                               ; preds = %187, %57, %49
  %51 = call i8* @strsep(i8** %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %51, i8** %22, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %188

53:                                               ; preds = %50
  %54 = load i8*, i8** %22, align 8
  %55 = load i8, i8* %54, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  br label %50

58:                                               ; preds = %53
  %59 = load i8*, i8** %22, align 8
  %60 = load i32, i32* @tokens, align 4
  %61 = call i32 @match_token(i8* %59, i32 %60, i32* %33)
  store i32 %61, i32* %26, align 4
  %62 = load i32, i32* %26, align 4
  switch i32 %62, label %184 [
    i32 139, label %63
    i32 137, label %87
    i32 136, label %100
    i32 135, label %105
    i32 134, label %121
    i32 133, label %126
    i32 132, label %133
    i32 131, label %140
    i32 130, label %152
    i32 129, label %166
    i32 128, label %171
    i32 138, label %183
  ]

63:                                               ; preds = %58
  %64 = getelementptr inbounds i32, i32* %33, i64 0
  %65 = call i32 @match_int(i32* %64, i32* %27)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %11, align 4
  store i32 1, i32* %25, align 4
  br label %189

70:                                               ; preds = %63
  %71 = load i32, i32* %27, align 4
  %72 = icmp ne i32 %71, 512
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load i32, i32* %27, align 4
  %75 = icmp ne i32 %74, 1024
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i32, i32* %27, align 4
  %78 = icmp ne i32 %77, 2048
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32, i32* %27, align 4
  %81 = icmp ne i32 %80, 4096
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  store i32 1, i32* %25, align 4
  br label %189

84:                                               ; preds = %79, %76, %73, %70
  %85 = load i32, i32* %27, align 4
  %86 = load i32*, i32** %18, align 8
  store i32 %85, i32* %86, align 4
  br label %187

87:                                               ; preds = %58
  %88 = getelementptr inbounds i32, i32* %33, i64 0
  %89 = call i32 @match_octal(i32* %88, i32* %28)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 1, i32* %11, align 4
  store i32 1, i32* %25, align 4
  br label %189

92:                                               ; preds = %87
  %93 = load i32, i32* %28, align 4
  %94 = and i32 %93, 511
  %95 = load i32*, i32** %15, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i64, i64* @SF_SETMODE, align 8
  %97 = load i64*, i64** %21, align 8
  %98 = load i64, i64* %97, align 8
  %99 = or i64 %98, %96
  store i64 %99, i64* %97, align 8
  br label %187

100:                                              ; preds = %58
  %101 = load i64, i64* @SF_MUFS, align 8
  %102 = load i64*, i64** %21, align 8
  %103 = load i64, i64* %102, align 8
  %104 = or i64 %103, %101
  store i64 %104, i64* %102, align 8
  br label %187

105:                                              ; preds = %58
  %106 = load i8**, i8*** %19, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @kfree(i8* %107)
  %109 = getelementptr inbounds i32, i32* %33, i64 0
  %110 = call i8* @match_strdup(i32* %109)
  %111 = load i8**, i8*** %19, align 8
  store i8* %110, i8** %111, align 8
  %112 = load i8**, i8*** %19, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %105
  store i32 0, i32* %11, align 4
  store i32 1, i32* %25, align 4
  br label %189

116:                                              ; preds = %105
  %117 = load i64, i64* @SF_PREFIX, align 8
  %118 = load i64*, i64** %21, align 8
  %119 = load i64, i64* %118, align 8
  %120 = or i64 %119, %117
  store i64 %120, i64* %118, align 8
  br label %187

121:                                              ; preds = %58
  %122 = load i64, i64* @SF_IMMUTABLE, align 8
  %123 = load i64*, i64** %21, align 8
  %124 = load i64, i64* %123, align 8
  %125 = or i64 %124, %122
  store i64 %125, i64* %123, align 8
  br label %187

126:                                              ; preds = %58
  %127 = getelementptr inbounds i32, i32* %33, i64 0
  %128 = load i32*, i32** %16, align 8
  %129 = call i32 @match_int(i32* %127, i32* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  store i32 1, i32* %11, align 4
  store i32 1, i32* %25, align 4
  br label %189

132:                                              ; preds = %126
  br label %187

133:                                              ; preds = %58
  %134 = getelementptr inbounds i32, i32* %33, i64 0
  %135 = load i32*, i32** %17, align 8
  %136 = call i32 @match_int(i32* %134, i32* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  store i32 1, i32* %11, align 4
  store i32 1, i32* %25, align 4
  br label %189

139:                                              ; preds = %133
  br label %187

140:                                              ; preds = %58
  %141 = getelementptr inbounds i32, i32* %33, i64 0
  %142 = call i32 @match_int(i32* %141, i32* %28)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  store i32 1, i32* %11, align 4
  store i32 1, i32* %25, align 4
  br label %189

145:                                              ; preds = %140
  %146 = load i32, i32* %28, align 4
  %147 = load i32*, i32** %14, align 8
  store i32 %146, i32* %147, align 4
  %148 = load i64, i64* @SF_SETGID, align 8
  %149 = load i64*, i64** %21, align 8
  %150 = load i64, i64* %149, align 8
  %151 = or i64 %150, %148
  store i64 %151, i64* %149, align 8
  br label %187

152:                                              ; preds = %58
  %153 = getelementptr inbounds i32, i32* %33, i64 0
  %154 = call i32 @match_int(i32* %153, i32* %28)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %11, align 4
  store i32 1, i32* %25, align 4
  br label %189

159:                                              ; preds = %152
  %160 = load i32, i32* %28, align 4
  %161 = load i32*, i32** %13, align 8
  store i32 %160, i32* %161, align 4
  %162 = load i64, i64* @SF_SETUID, align 8
  %163 = load i64*, i64** %21, align 8
  %164 = load i64, i64* %163, align 8
  %165 = or i64 %164, %162
  store i64 %165, i64* %163, align 8
  br label %187

166:                                              ; preds = %58
  %167 = load i64, i64* @SF_VERBOSE, align 8
  %168 = load i64*, i64** %21, align 8
  %169 = load i64, i64* %168, align 8
  %170 = or i64 %169, %167
  store i64 %170, i64* %168, align 8
  br label %187

171:                                              ; preds = %58
  %172 = getelementptr inbounds i32, i32* %33, i64 0
  %173 = call i8* @match_strdup(i32* %172)
  store i8* %173, i8** %29, align 8
  %174 = load i8*, i8** %29, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %177, label %176

176:                                              ; preds = %171
  store i32 0, i32* %11, align 4
  store i32 1, i32* %25, align 4
  br label %189

177:                                              ; preds = %171
  %178 = load i8*, i8** %20, align 8
  %179 = load i8*, i8** %29, align 8
  %180 = call i32 @strlcpy(i8* %178, i8* %179, i32 32)
  %181 = load i8*, i8** %29, align 8
  %182 = call i32 @kfree(i8* %181)
  br label %187

183:                                              ; preds = %58
  br label %187

184:                                              ; preds = %58
  %185 = load i8*, i8** %22, align 8
  %186 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* %185)
  store i32 0, i32* %11, align 4
  store i32 1, i32* %25, align 4
  br label %189

187:                                              ; preds = %183, %177, %166, %159, %145, %139, %132, %121, %116, %100, %92, %84
  br label %50

188:                                              ; preds = %50
  store i32 1, i32* %11, align 4
  store i32 1, i32* %25, align 4
  br label %189

189:                                              ; preds = %188, %184, %176, %156, %144, %138, %131, %115, %91, %82, %67, %48
  %190 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %190)
  %191 = load i32, i32* %11, align 4
  ret i32 %191
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @current_uid(...) #2

declare dso_local i32 @current_gid(...) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @match_int(i32*, i32*) #2

declare dso_local i32 @printk(i8*, ...) #2

declare dso_local i32 @match_octal(i32*, i32*) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i8* @match_strdup(i32*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
