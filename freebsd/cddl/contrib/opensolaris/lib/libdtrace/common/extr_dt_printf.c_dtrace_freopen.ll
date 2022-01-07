; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_dtrace_freopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_dtrace_freopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i8* }

@DT_FREOPEN_RESTORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"couldn't freopen() \22%s\22: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_freopen(%struct.TYPE_8__* %0, i32* %1, i8* %2, i32* %3, i32* %4, i32 %5, i8* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca [40 x i8], align 16
  %19 = alloca [40 x i8], align 16
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_9__*, align 8
  %25 = alloca %struct.TYPE_10__*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = bitcast i8* %29 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %24, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %25, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load i32*, i32** %14, align 8
  %38 = load i32, i32* %15, align 4
  %39 = load i8*, i8** %16, align 8
  %40 = load i64, i64* %17, align 8
  %41 = call i32 @dtrace_sprintf(%struct.TYPE_8__* %34, i32* %35, i8* %36, i32* %37, i32 %38, i8* %39, i64 %40)
  store i32 %41, i32* %22, align 4
  %42 = load i32, i32* %22, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %47, label %44

44:                                               ; preds = %8
  %45 = load i32*, i32** %11, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44, %8
  %48 = load i32, i32* %22, align 4
  store i32 %48, i32* %9, align 4
  br label %138

49:                                               ; preds = %44
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %84

54:                                               ; preds = %49
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* @DT_FREOPEN_RESTORE, align 4
  %59 = call i64 @strcmp(i8* %57, i32 %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %54
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* @DT_FREOPEN_RESTORE, align 4
  %66 = call i64 @strcmp(i8* %64, i32 %65)
  %67 = icmp eq i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %61
  %75 = load i32, i32* %22, align 4
  store i32 %75, i32* %9, align 4
  br label %138

76:                                               ; preds = %61
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @fclose(i32* %79)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  store i32* null, i32** %82, align 8
  %83 = load i32, i32* %22, align 4
  store i32 %83, i32* %9, align 4
  br label %138

84:                                               ; preds = %54, %49
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32* @fopen(i8* %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %88, i32** %21, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %123

90:                                               ; preds = %84
  %91 = load i32, i32* @errno, align 4
  %92 = call i8* @strerror(i32 %91)
  store i8* %92, i8** %26, align 8
  store i32 80, i32* %28, align 4
  %93 = load i8*, i8** %26, align 8
  %94 = call i64 @strlen(i8* %93)
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @strlen(i8* %97)
  %99 = add nsw i64 %94, %98
  %100 = load i32, i32* %28, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %28, align 4
  %104 = load i32, i32* %28, align 4
  %105 = call i8* @alloca(i32 %104)
  store i8* %105, i8** %27, align 8
  %106 = load i8*, i8** %27, align 8
  %107 = load i32, i32* %28, align 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* @errno, align 4
  %112 = call i8* @strerror(i32 %111)
  %113 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %106, i32 %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %110, i8* %112)
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %115 = load i32*, i32** %13, align 8
  %116 = load i8*, i8** %27, align 8
  %117 = call i32 @dt_handle_liberr(%struct.TYPE_8__* %114, i32* %115, i8* %116)
  store i32 %117, i32* %23, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %90
  %120 = load i32, i32* %22, align 4
  store i32 %120, i32* %9, align 4
  br label %138

121:                                              ; preds = %90
  %122 = load i32, i32* %23, align 4
  store i32 %122, i32* %9, align 4
  br label %138

123:                                              ; preds = %84
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @fclose(i32* %131)
  br label %133

133:                                              ; preds = %128, %123
  %134 = load i32*, i32** %21, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  store i32* %134, i32** %136, align 8
  %137 = load i32, i32* %22, align 4
  store i32 %137, i32* %9, align 4
  br label %138

138:                                              ; preds = %133, %121, %119, %76, %74, %47
  %139 = load i32, i32* %9, align 4
  ret i32 %139
}

declare dso_local i32 @dtrace_sprintf(%struct.TYPE_8__*, i32*, i8*, i32*, i32, i8*, i64) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @dt_handle_liberr(%struct.TYPE_8__*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
