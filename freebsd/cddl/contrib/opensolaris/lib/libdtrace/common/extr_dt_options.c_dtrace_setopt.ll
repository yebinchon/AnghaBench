; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_options.c_dtrace_setopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_options.c_dtrace_setopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (%struct.TYPE_11__*, i8*, i32)*, i32, i32* }
%struct.TYPE_11__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@_dtrace_ctoptions = common dso_local global %struct.TYPE_12__* null, align 8
@_dtrace_drtoptions = common dso_local global %struct.TYPE_12__* null, align 8
@_dtrace_rtoptions = common dso_local global %struct.TYPE_12__* null, align 8
@EDT_ACTIVE = common dso_local global i32 0, align 4
@EDT_BADOPTNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_setopt(%struct.TYPE_11__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = call i32 @dt_set_errno(%struct.TYPE_11__* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  br label %112

15:                                               ; preds = %3
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** @_dtrace_ctoptions, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %8, align 8
  br label %17

17:                                               ; preds = %40, %15
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %43

22:                                               ; preds = %17
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @strcmp(i32* %25, i8* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_11__*, i8*, i32)*, i32 (%struct.TYPE_11__*, i8*, i32)** %31, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 %32(%struct.TYPE_11__* %33, i8* %34, i32 %37)
  store i32 %38, i32* %4, align 4
  br label %112

39:                                               ; preds = %22
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 1
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %8, align 8
  br label %17

43:                                               ; preds = %17
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** @_dtrace_drtoptions, align 8
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %8, align 8
  br label %45

45:                                               ; preds = %68, %43
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %71

50:                                               ; preds = %45
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i64 @strcmp(i32* %53, i8* %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %50
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_11__*, i8*, i32)*, i32 (%struct.TYPE_11__*, i8*, i32)** %59, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 %60(%struct.TYPE_11__* %61, i8* %62, i32 %65)
  store i32 %66, i32* %4, align 4
  br label %112

67:                                               ; preds = %50
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 1
  store %struct.TYPE_12__* %70, %struct.TYPE_12__** %8, align 8
  br label %45

71:                                               ; preds = %45
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** @_dtrace_rtoptions, align 8
  store %struct.TYPE_12__* %72, %struct.TYPE_12__** %8, align 8
  br label %73

73:                                               ; preds = %105, %71
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %108

78:                                               ; preds = %73
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = call i64 @strcmp(i32* %81, i8* %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %104

85:                                               ; preds = %78
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %92 = load i32, i32* @EDT_ACTIVE, align 4
  %93 = call i32 @dt_set_errno(%struct.TYPE_11__* %91, i32 %92)
  store i32 %93, i32* %4, align 4
  br label %112

94:                                               ; preds = %85
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32 (%struct.TYPE_11__*, i8*, i32)*, i32 (%struct.TYPE_11__*, i8*, i32)** %96, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 %97(%struct.TYPE_11__* %98, i8* %99, i32 %102)
  store i32 %103, i32* %4, align 4
  br label %112

104:                                              ; preds = %78
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 1
  store %struct.TYPE_12__* %107, %struct.TYPE_12__** %8, align 8
  br label %73

108:                                              ; preds = %73
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %110 = load i32, i32* @EDT_BADOPTNAME, align 4
  %111 = call i32 @dt_set_errno(%struct.TYPE_11__* %109, i32 %110)
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %108, %94, %90, %57, %29, %11
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @dt_set_errno(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
