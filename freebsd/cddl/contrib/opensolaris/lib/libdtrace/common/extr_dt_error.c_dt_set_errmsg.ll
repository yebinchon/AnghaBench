; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_error.c_dt_set_errmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_error.c_dt_set_errmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i8*, i8*, i8* }

@yypcb = common dso_local global %struct.TYPE_5__* null, align 8
@DTRACE_C_ETAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"\22%s\22, line %d: \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"line %d: \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"in %s: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dt_set_errmsg(%struct.TYPE_4__* %0, i8* %1, i8* %2, i8* %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %18, align 8
  store i64 8, i64* %16, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %7
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @yypcb, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DTRACE_C_ETAGS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i8*, i8** %18, align 8
  %33 = load i64, i64* %16, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %32, i64 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %39

36:                                               ; preds = %24, %7
  %37 = load i8*, i8** %18, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 0, i8* %38, align 1
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strlen(i8* %42)
  store i64 %43, i64* %15, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i64, i64* %15, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %18, align 8
  %49 = load i64, i64* %15, align 8
  %50 = sub i64 8, %49
  store i64 %50, i64* %16, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %39
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %11, align 8
  br label %57

57:                                               ; preds = %53, %39
  %58 = load i8*, i8** %11, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i8*, i8** %18, align 8
  %62 = load i64, i64* %16, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %61, i64 %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %63, i32 %64)
  br label %84

66:                                               ; preds = %57
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i8*, i8** %18, align 8
  %71 = load i64, i64* %16, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %70, i64 %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  br label %83

74:                                               ; preds = %66
  %75 = load i8*, i8** %10, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i8*, i8** %18, align 8
  %79 = load i64, i64* %16, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %78, i64 %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %77, %74
  br label %83

83:                                               ; preds = %82, %69
  br label %84

84:                                               ; preds = %83, %60
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @strlen(i8* %87)
  store i64 %88, i64* %15, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load i64, i64* %15, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8* %93, i8** %18, align 8
  %94 = load i64, i64* %15, align 8
  %95 = sub i64 8, %94
  store i64 %95, i64* %16, align 8
  %96 = load i8*, i8** %18, align 8
  %97 = load i64, i64* %16, align 8
  %98 = load i8*, i8** %13, align 8
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @vsnprintf(i8* %96, i64 %97, i8* %98, i32 %99)
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i8* @strrchr(i8* %103, i8 signext 10)
  store i8* %104, i8** %17, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %84
  %107 = load i8*, i8** %17, align 8
  store i8 0, i8* %107, align 1
  br label %108

108:                                              ; preds = %106, %84
  %109 = load i8*, i8** %9, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  ret void
}

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @vsnprintf(i8*, i64, i8*, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
