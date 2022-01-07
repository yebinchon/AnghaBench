; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_v9fs.c_v9fs_parse_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_v9fs.c_v9fs_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v9fs_session_info = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32*, i32, i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = common dso_local global i32 0, align 4
@P9_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"integer field, but no integer?\0A\00", align 1
@PATH_MAX = common dso_local global i32 0, align 4
@CACHE_LOOSE = common dso_local global i8* null, align 8
@CACHE_FSCACHE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"loose\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"fscache\00", align 1
@CACHE_NONE = common dso_local global i8* null, align 8
@V9FS_ACCESS_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@V9FS_ACCESS_USER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@V9FS_ACCESS_ANY = common dso_local global i32 0, align 4
@V9FS_ACCESS_SINGLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"failed to allocate copy of option argument\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@p9_debug_level = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v9fs_session_info*, i8*)* @v9fs_parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_parse_options(%struct.v9fs_session_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v9fs_session_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.v9fs_session_info* %0, %struct.v9fs_session_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %17 = load i32, i32* @MAX_OPT_ARGS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %21 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %22 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %21, i32 0, i32 0
  store i32 -1, i32* %22, align 8
  %23 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %24 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %26 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %25, i32 0, i32 7
  store i8* null, i8** %26, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %201

30:                                               ; preds = %2
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @kstrdup(i8* %31, i32 %32)
  store i8* %33, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %196

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %191, %190, %57, %45, %37
  %39 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %39, i8** %9, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %192

41:                                               ; preds = %38
  %42 = load i8*, i8** %9, align 8
  %43 = load i8, i8* %42, align 1
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  br label %38

46:                                               ; preds = %41
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* @tokens, align 4
  %49 = call i32 @match_token(i8* %47, i32 %48, i32* %20)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp slt i32 %50, 128
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = getelementptr inbounds i32, i32* %20, i64 0
  %54 = call i32 @match_int(i32* %53, i32* %10)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %59 = call i32 @P9_DPRINTK(i32 %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* %16, align 4
  store i32 %60, i32* %13, align 4
  br label %38

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %46
  %63 = load i32, i32* %15, align 4
  switch i32 %63, label %190 [
    i32 134, label %64
    i32 132, label %68
    i32 133, label %72
    i32 138, label %76
    i32 128, label %80
    i32 129, label %87
    i32 130, label %94
    i32 136, label %97
    i32 131, label %101
    i32 135, label %105
    i32 137, label %106
    i32 139, label %136
  ]

64:                                               ; preds = %62
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %67 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %191

68:                                               ; preds = %62
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %71 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  br label %191

72:                                               ; preds = %62
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %75 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  br label %191

76:                                               ; preds = %62
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %79 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  br label %191

80:                                               ; preds = %62
  %81 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %82 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %81, i32 0, i32 10
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds i32, i32* %20, i64 0
  %85 = load i32, i32* @PATH_MAX, align 4
  %86 = call i32 @match_strlcpy(i32 %83, i32* %84, i32 %85)
  br label %191

87:                                               ; preds = %62
  %88 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %89 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %88, i32 0, i32 9
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds i32, i32* %20, i64 0
  %92 = load i32, i32* @PATH_MAX, align 4
  %93 = call i32 @match_strlcpy(i32 %90, i32* %91, i32 %92)
  br label %191

94:                                               ; preds = %62
  %95 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %96 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %95, i32 0, i32 4
  store i32 1, i32* %96, align 8
  br label %191

97:                                               ; preds = %62
  %98 = load i8*, i8** @CACHE_LOOSE, align 8
  %99 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %100 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %99, i32 0, i32 7
  store i8* %98, i8** %100, align 8
  br label %191

101:                                              ; preds = %62
  %102 = load i8*, i8** @CACHE_FSCACHE, align 8
  %103 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %104 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %103, i32 0, i32 7
  store i8* %102, i8** %104, align 8
  br label %191

105:                                              ; preds = %62
  br label %191

106:                                              ; preds = %62
  %107 = getelementptr inbounds i32, i32* %20, i64 0
  %108 = call i8* @match_strdup(i32* %107)
  store i8* %108, i8** %11, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %106
  br label %196

112:                                              ; preds = %106
  %113 = load i8*, i8** %11, align 8
  %114 = call i32 @strcmp(i8* %113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i8*, i8** @CACHE_LOOSE, align 8
  %118 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %119 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %118, i32 0, i32 7
  store i8* %117, i8** %119, align 8
  br label %133

120:                                              ; preds = %112
  %121 = load i8*, i8** %11, align 8
  %122 = call i32 @strcmp(i8* %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load i8*, i8** @CACHE_FSCACHE, align 8
  %126 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %127 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %126, i32 0, i32 7
  store i8* %125, i8** %127, align 8
  br label %132

128:                                              ; preds = %120
  %129 = load i8*, i8** @CACHE_NONE, align 8
  %130 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %131 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %130, i32 0, i32 7
  store i8* %129, i8** %131, align 8
  br label %132

132:                                              ; preds = %128, %124
  br label %133

133:                                              ; preds = %132, %116
  %134 = load i8*, i8** %11, align 8
  %135 = call i32 @kfree(i8* %134)
  br label %191

136:                                              ; preds = %62
  %137 = getelementptr inbounds i32, i32* %20, i64 0
  %138 = call i8* @match_strdup(i32* %137)
  store i8* %138, i8** %11, align 8
  %139 = load i8*, i8** %11, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %136
  br label %196

142:                                              ; preds = %136
  %143 = load i32, i32* @V9FS_ACCESS_MASK, align 4
  %144 = xor i32 %143, -1
  %145 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %146 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 8
  %148 = and i32 %147, %144
  store i32 %148, i32* %146, align 8
  %149 = load i8*, i8** %11, align 8
  %150 = call i32 @strcmp(i8* %149, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %142
  %153 = load i32, i32* @V9FS_ACCESS_USER, align 4
  %154 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %155 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 8
  br label %187

158:                                              ; preds = %142
  %159 = load i8*, i8** %11, align 8
  %160 = call i32 @strcmp(i8* %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %158
  %163 = load i32, i32* @V9FS_ACCESS_ANY, align 4
  %164 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %165 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 8
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 8
  br label %186

168:                                              ; preds = %158
  %169 = load i32, i32* @V9FS_ACCESS_SINGLE, align 4
  %170 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %171 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 8
  %174 = load i8*, i8** %11, align 8
  %175 = call i32 @simple_strtoul(i8* %174, i8** %12, i32 10)
  %176 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %177 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %176, i32 0, i32 5
  store i32 %175, i32* %177, align 4
  %178 = load i8*, i8** %12, align 8
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %168
  %183 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %184 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %183, i32 0, i32 5
  store i32 -1, i32* %184, align 4
  br label %185

185:                                              ; preds = %182, %168
  br label %186

186:                                              ; preds = %185, %162
  br label %187

187:                                              ; preds = %186, %152
  %188 = load i8*, i8** %11, align 8
  %189 = call i32 @kfree(i8* %188)
  br label %191

190:                                              ; preds = %62
  br label %38

191:                                              ; preds = %187, %133, %105, %101, %97, %94, %87, %80, %76, %72, %68, %64
  br label %38

192:                                              ; preds = %38
  %193 = load i8*, i8** %6, align 8
  %194 = call i32 @kfree(i8* %193)
  %195 = load i32, i32* %13, align 4
  store i32 %195, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %201

196:                                              ; preds = %141, %111, %36
  %197 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %198 = call i32 @P9_DPRINTK(i32 %197, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %199 = load i32, i32* @ENOMEM, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %201

201:                                              ; preds = %196, %192, %29
  %202 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %202)
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @kstrdup(i8*, i32) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @match_int(i32*, i32*) #2

declare dso_local i32 @P9_DPRINTK(i32, i8*) #2

declare dso_local i32 @match_strlcpy(i32, i32*, i32) #2

declare dso_local i8* @match_strdup(i32*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
