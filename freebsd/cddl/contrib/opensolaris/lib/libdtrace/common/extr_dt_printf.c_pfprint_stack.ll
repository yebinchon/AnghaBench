; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_pfprint_stack.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_pfprint_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32 }

@DTRACEOPT_STACKINDENT = common dso_local global i64 0, align 8
@DT_PFCONV_DYNWIDTH = common dso_local global i32 0, align 4
@DT_PFCONV_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i8*, %struct.TYPE_10__*, i8*, i64, i32)* @pfprint_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfprint_stack(%struct.TYPE_9__* %0, i32* %1, i8* %2, %struct.TYPE_10__* %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @DTRACEOPT_STACKINDENT, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %16, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %17, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %7
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DT_PFCONV_DYNWIDTH, align 4
  %40 = and i32 %38, %39
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %15, align 4
  br label %70

46:                                               ; preds = %7
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DT_PFCONV_LEFT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %46
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  br label %66

62:                                               ; preds = %53
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi i32 [ %61, %58 ], [ %65, %62 ]
  store i32 %67, i32* %15, align 4
  br label %69

68:                                               ; preds = %46
  store i32 0, i32* %15, align 4
  br label %69

69:                                               ; preds = %68, %66
  br label %70

70:                                               ; preds = %69, %35
  %71 = load i32, i32* %15, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @DTRACEOPT_STACKINDENT, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32 %71, i32* %76, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %105 [
    i32 128, label %80
    i32 130, label %80
    i32 129, label %89
  ]

80:                                               ; preds = %70, %70
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = load i32, i32* %18, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dt_print_ustack(%struct.TYPE_9__* %81, i32* %82, i8* %83, i32 %84, i32 %87)
  store i32 %88, i32* %19, align 4
  br label %107

89:                                               ; preds = %70
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = load i32, i32* %18, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sdiv i32 %99, %102
  %104 = call i32 @dt_print_stack(%struct.TYPE_9__* %90, i32* %91, i8* %92, i32 %93, i32 %96, i32 %103)
  store i32 %104, i32* %19, align 4
  br label %107

105:                                              ; preds = %70
  %106 = call i32 @assert(i32 0)
  br label %107

107:                                              ; preds = %105, %89, %80
  %108 = load i32, i32* %16, align 4
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* @DTRACEOPT_STACKINDENT, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32 %108, i32* %113, align 4
  %114 = load i32, i32* %19, align 4
  ret i32 %114
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dt_print_ustack(%struct.TYPE_9__*, i32*, i8*, i32, i32) #1

declare dso_local i32 @dt_print_stack(%struct.TYPE_9__*, i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
