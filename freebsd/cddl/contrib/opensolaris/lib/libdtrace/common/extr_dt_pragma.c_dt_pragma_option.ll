; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_pragma.c_dt_pragma_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_pragma.c_dt_pragma_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i64, i32, i32* }

@yypcb = common dso_local global %struct.TYPE_5__* null, align 8
@DT_NODE_IDENT = common dso_local global i64 0, align 8
@D_PRAGMA_MALFORM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"malformed #pragma %s <option>=<val>\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"superfluous arguments specified for #pragma %s\0A\00", align 1
@D_PRAGMA_OPTSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to set option '%s': %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"failed to set option '%s' to '%s': %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_4__*)* @dt_pragma_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_pragma_option(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @yypcb, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = icmp eq %struct.TYPE_4__* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DT_NODE_IDENT, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13, %2
  %20 = load i32, i32* @D_PRAGMA_MALFORM, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 (i32, i8*, i8*, ...) @xyerror(i32 %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %19, %13
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @D_PRAGMA_MALFORM, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 (i32, i8*, i8*, ...) @xyerror(i32 %29, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %28, %23
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @strlen(i32 %35)
  %37 = add nsw i64 %36, 1
  %38 = call i8* @alloca(i64 %37)
  store i8* %38, i8** %6, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @strcpy(i8* %39, i32 %42)
  %44 = load i8*, i8** %6, align 8
  %45 = call i8* @strchr(i8* %44, i8 signext 61)
  store i8* %45, i8** %7, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %32
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %7, align 8
  store i8 0, i8* %48, align 1
  br label %50

50:                                               ; preds = %47, %32
  %51 = load i32*, i32** %5, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @dtrace_setopt(i32* %51, i8* %52, i8* %53)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %77

56:                                               ; preds = %50
  %57 = load i8*, i8** %7, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i32, i32* @D_PRAGMA_OPTSET, align 4
  %61 = load i8*, i8** %6, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @dtrace_errno(i32* %63)
  %65 = call i32 @dtrace_errmsg(i32* %62, i32 %64)
  %66 = call i32 (i32, i8*, i8*, ...) @xyerror(i32 %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %61, i32 %65)
  br label %76

67:                                               ; preds = %56
  %68 = load i32, i32* @D_PRAGMA_OPTSET, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @dtrace_errno(i32* %72)
  %74 = call i32 @dtrace_errmsg(i32* %71, i32 %73)
  %75 = call i32 (i32, i8*, i8*, ...) @xyerror(i32 %68, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %69, i8* %70, i32 %74)
  br label %76

76:                                               ; preds = %67, %59
  br label %77

77:                                               ; preds = %76, %50
  ret void
}

declare dso_local i32 @xyerror(i32, i8*, i8*, ...) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @dtrace_setopt(i32*, i8*, i8*) #1

declare dso_local i32 @dtrace_errmsg(i32*, i32) #1

declare dso_local i32 @dtrace_errno(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
