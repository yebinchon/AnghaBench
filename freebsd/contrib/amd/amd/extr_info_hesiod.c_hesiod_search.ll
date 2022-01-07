; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_hesiod.c_hesiod_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_hesiod.c_hesiod_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"hesiod_search(m=%lx, map=%s, key=%s, pval=%lx tp=%lx)\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@HES_PREFLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Hesiod base is: %s\0A\00", align 1
@gopt = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"hesiod_search: hes_resolve(%s, %s)\00", align 1
@D_INFO = common dso_local global i32 0, align 4
@RES_DEBUG = common dso_local global i32 0, align 4
@_res = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@CFM_SUN_MAP_SYNTAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"hesiod_search: Error: %d\00", align 1
@EIO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"hesiod_search: Returning: %d\00", align 1
@errno = common dso_local global i32 0, align 4
@hesiod_context = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hesiod_search(%struct.TYPE_7__* %0, i8* %1, i8* %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32, i32* @MAXPATHLEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = ptrtoint %struct.TYPE_7__* %21 to i64
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i8**, i8*** %10, align 8
  %26 = ptrtoint i8** %25 to i64
  %27 = load i32*, i32** %11, align 8
  %28 = ptrtoint i32* %27 to i64
  %29 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %22, i8* %23, i8* %24, i64 %26, i64 %28)
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 46
  br i1 %34, label %35, label %37

35:                                               ; preds = %5
  %36 = load i32, i32* @ENOENT, align 4
  store i32 %36, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %119

37:                                               ; preds = %5
  %38 = trunc i64 %18 to i32
  %39 = load i8*, i8** %9, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* @HES_PREFLEN, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = call i32 @xsnprintf(i8* %20, i32 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %39, i8* %43)
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gopt, i32 0, i32 0), align 4
  %46 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gopt, i32 0, i32 0), align 4
  %48 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %20, i32 %47)
  %49 = load i32, i32* @D_INFO, align 4
  %50 = call i64 @amuDebug(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %37
  %53 = load i32, i32* @RES_DEBUG, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_res, i32 0, i32 0), align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_res, i32 0, i32 0), align 4
  br label %56

56:                                               ; preds = %52, %37
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gopt, i32 0, i32 0), align 4
  %58 = call i8** @hes_resolve(i8* %20, i32 %57)
  store i8** %58, i8*** %14, align 8
  %59 = load i8**, i8*** %14, align 8
  %60 = icmp ne i8** %59, null
  br i1 %60, label %61, label %103

61:                                               ; preds = %56
  %62 = load i8**, i8*** %14, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %103

65:                                               ; preds = %61
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = icmp ne %struct.TYPE_6__* %68, null
  br i1 %69, label %70, label %88

70:                                               ; preds = %65
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @CFM_SUN_MAP_SYNTAX, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %70
  %80 = load i8*, i8** %9, align 8
  %81 = load i8**, i8*** %14, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = call i8* @sun_entry2amd(i8* %80, i8* %82)
  %84 = load i8**, i8*** %10, align 8
  store i8* %83, i8** %84, align 8
  %85 = load i8**, i8*** %14, align 8
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @XFREE(i8* %86)
  br label %92

88:                                               ; preds = %70, %65
  %89 = load i8**, i8*** %14, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = load i8**, i8*** %10, align 8
  store i8* %90, i8** %91, align 8
  br label %92

92:                                               ; preds = %88, %79
  br label %93

93:                                               ; preds = %98, %92
  %94 = load i8**, i8*** %14, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i32 1
  store i8** %95, i8*** %14, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i8**, i8*** %14, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @XFREE(i8* %100)
  br label %93

102:                                              ; preds = %93
  store i32 0, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %119

103:                                              ; preds = %61, %56
  %104 = call i64 (...) @hes_error()
  %105 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %104)
  %106 = call i64 (...) @hes_error()
  switch i64 %106, label %113 [
    i64 128, label %107
    i64 130, label %109
    i64 129, label %111
  ]

107:                                              ; preds = %103
  %108 = load i32, i32* @ENOENT, align 4
  store i32 %108, i32* %15, align 4
  br label %115

109:                                              ; preds = %103
  %110 = load i32, i32* @EIO, align 4
  store i32 %110, i32* %15, align 4
  br label %115

111:                                              ; preds = %103
  %112 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %112, i32* %15, align 4
  br label %115

113:                                              ; preds = %103
  %114 = load i32, i32* @EINVAL, align 4
  store i32 %114, i32* %15, align 4
  br label %115

115:                                              ; preds = %113, %111, %109, %107
  %116 = load i32, i32* %15, align 4
  %117 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* %15, align 4
  store i32 %118, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %119

119:                                              ; preds = %115, %102, %35
  %120 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dlog(i8*, ...) #2

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @amuDebug(i32) #2

declare dso_local i8** @hes_resolve(i8*, i32) #2

declare dso_local i8* @sun_entry2amd(i8*, i8*) #2

declare dso_local i32 @XFREE(i8*) #2

declare dso_local i64 @hes_error(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
