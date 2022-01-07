; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/profile/extr_InstrProfilingFile.c_parseAndSetFilename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/profile/extr_InstrProfilingFile.c_parseAndSetFilename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64 }

@lprofCurFilename = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DefaultProfileName = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"LLVM_PROFILE_VERBOSE\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Set profile file path to \22%s\22 via %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Override old profile path \22%s\22 via %s to \22%s\22 via %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32)* @parseAndSetFilename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parseAndSetFilename(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lprofCurFilename, i32 0, i32 0), align 8
  store i8* %9, i8** %7, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lprofCurFilename, i32 0, i32 1), align 8
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %67

15:                                               ; preds = %3
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = load i8*, i8** @DefaultProfileName, align 8
  store i8* %19, i8** %4, align 8
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @strcmp(i8* %24, i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i64, i64* %5, align 8
  store i64 %29, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lprofCurFilename, i32 0, i32 1), align 8
  br label %67

30:                                               ; preds = %23, %20
  %31 = load i8*, i8** %4, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @parseFilenamePattern(i8* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33, %30
  %39 = call i32 (...) @resetFilenameToDefault()
  br label %40

40:                                               ; preds = %38, %33
  %41 = load i64, i64* %5, align 8
  store i64 %41, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lprofCurFilename, i32 0, i32 1), align 8
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %40
  %45 = call i64 @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lprofCurFilename, i32 0, i32 0), align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @getPNSStr(i64 %49)
  %51 = call i32 (i8*, i8*, i32, ...) @PROF_NOTE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %48, i32 %50)
  br label %52

52:                                               ; preds = %47, %44
  br label %65

53:                                               ; preds = %40
  %54 = call i64 @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i8*, i8** %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @getPNSStr(i64 %58)
  %60 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lprofCurFilename, i32 0, i32 0), align 8
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @getPNSStr(i64 %61)
  %63 = call i32 (i8*, i8*, i32, ...) @PROF_NOTE(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* %57, i32 %59, i8* %60, i32 %62)
  br label %64

64:                                               ; preds = %56, %53
  br label %65

65:                                               ; preds = %64, %52
  %66 = call i32 (...) @truncateCurrentFile()
  br label %67

67:                                               ; preds = %65, %28, %14
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @parseFilenamePattern(i8*, i32) #1

declare dso_local i32 @resetFilenameToDefault(...) #1

declare dso_local i64 @getenv(i8*) #1

declare dso_local i32 @PROF_NOTE(i8*, i8*, i32, ...) #1

declare dso_local i32 @getPNSStr(i64) #1

declare dso_local i32 @truncateCurrentFile(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
