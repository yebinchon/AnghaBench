; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_error.c_dtrace_errmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_error.c_dtrace_errmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8* }
%struct.TYPE_4__ = type { i8*, i64 }

@EDT_COMPILER = common dso_local global i32 0, align 4
@EDT_CTF = common dso_local global i32 0, align 4
@EDT_BASE = common dso_local global i32 0, align 4
@_dt_nerr = common dso_local global i32 0, align 4
@_dt_errlist = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"Unknown error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dtrace_errmsg(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @EDT_COMPILER, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %6, align 8
  br label %84

26:                                               ; preds = %14, %11, %2
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @EDT_CTF, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i8* @ctf_errmsg(i64 %41)
  store i8* %42, i8** %6, align 8
  br label %83

43:                                               ; preds = %33, %30, %26
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @EDT_BASE, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %79

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @EDT_BASE, align 4
  %50 = sub nsw i32 %48, %49
  %51 = load i32, i32* @_dt_nerr, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %79

53:                                               ; preds = %47
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %75, %53
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @_dt_nerr, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %54
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_dt_errlist, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %58
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_dt_errlist, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %3, align 8
  br label %92

74:                                               ; preds = %58
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %54

78:                                               ; preds = %54
  store i8* null, i8** %6, align 8
  br label %82

79:                                               ; preds = %47, %43
  %80 = load i32, i32* %5, align 4
  %81 = call i8* @strerror(i32 %80)
  store i8* %81, i8** %6, align 8
  br label %82

82:                                               ; preds = %79, %78
  br label %83

83:                                               ; preds = %82, %38
  br label %84

84:                                               ; preds = %83, %22
  %85 = load i8*, i8** %6, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i8*, i8** %6, align 8
  br label %90

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %89, %87
  %91 = phi i8* [ %88, %87 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %89 ]
  store i8* %91, i8** %3, align 8
  br label %92

92:                                               ; preds = %90, %67
  %93 = load i8*, i8** %3, align 8
  ret i8* %93
}

declare dso_local i8* @ctf_errmsg(i64) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
