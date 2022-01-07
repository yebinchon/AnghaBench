; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_subr.c_dtrace_addr2str.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_subr.c_dtrace_addr2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"%s`%s+0x%llx\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s`%s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s`0x%llx\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_addr2str(i32* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 20, i64* %11, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @dtrace_lookup_by_addr(i32* %14, i64 %15, %struct.TYPE_6__* %10, %struct.TYPE_5__* %9)
  store i32 %16, i32* %13, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @strlen(i8* %20)
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strlen(i8* %23)
  %25 = add nsw i64 %21, %24
  %26 = add nsw i64 %25, 2
  %27 = load i64, i64* %11, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %11, align 8
  br label %29

29:                                               ; preds = %18, %4
  %30 = load i64, i64* %11, align 8
  %31 = call i8* @alloca(i64 %30)
  store i8* %31, i8** %12, align 8
  %32 = load i32, i32* %13, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %35, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load i8*, i8** %12, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = ptrtoint i8* %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %47, %49
  %51 = call i32 (i8*, i64, i8*, i64, ...) @snprintf(i8* %40, i64 %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %44, i8* %46, i64 %50)
  br label %84

52:                                               ; preds = %34, %29
  %53 = load i32, i32* %13, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load i8*, i8** %12, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = ptrtoint i8* %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (i8*, i64, i8*, i64, ...) @snprintf(i8* %56, i64 %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %60, i8* %62)
  br label %83

64:                                               ; preds = %52
  %65 = load i32*, i32** %5, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @dtrace_lookup_by_addr(i32* %65, i64 %66, %struct.TYPE_6__* null, %struct.TYPE_5__* %9)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load i8*, i8** %12, align 8
  %71 = load i64, i64* %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = ptrtoint i8* %73 to i64
  %75 = load i64, i64* %6, align 8
  %76 = call i32 (i8*, i64, i8*, i64, ...) @snprintf(i8* %70, i64 %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %74, i64 %75)
  br label %82

77:                                               ; preds = %64
  %78 = load i8*, i8** %12, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* %6, align 8
  %81 = call i32 (i8*, i64, i8*, i64, ...) @snprintf(i8* %78, i64 %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %80)
  br label %82

82:                                               ; preds = %77, %69
  br label %83

83:                                               ; preds = %82, %55
  br label %84

84:                                               ; preds = %83, %39
  %85 = load i8*, i8** %12, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @dt_string2str(i8* %85, i8* %86, i32 %87)
  ret i32 %88
}

declare dso_local i32 @dtrace_lookup_by_addr(i32*, i64, %struct.TYPE_6__*, %struct.TYPE_5__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i64, ...) #1

declare dso_local i32 @dt_string2str(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
