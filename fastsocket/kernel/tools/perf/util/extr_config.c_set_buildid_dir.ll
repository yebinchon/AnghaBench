; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_config.c_set_buildid_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_config.c_set_buildid_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buildid_dir = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@MAXPATHLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@DEBUG_CACHE_DIR = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"PERF_BUILDID_DIR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_buildid_dir() #0 {
  %1 = alloca i8*, align 8
  %2 = load i8*, i8** @buildid_dir, align 8
  %3 = getelementptr inbounds i8, i8* %2, i64 0
  store i8 0, i8* %3, align 1
  %4 = call i32 (...) @check_buildid_dir_config()
  %5 = load i8*, i8** @buildid_dir, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %0
  %11 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** %1, align 8
  %12 = load i8*, i8** %1, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load i8*, i8** @buildid_dir, align 8
  %16 = load i32, i32* @MAXPATHLEN, align 4
  %17 = sub nsw i32 %16, 1
  %18 = load i8*, i8** %1, align 8
  %19 = load i8*, i8** @DEBUG_CACHE_DIR, align 8
  %20 = call i32 @snprintf(i8* %15, i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %18, i8* %19)
  br label %27

21:                                               ; preds = %10
  %22 = load i8*, i8** @buildid_dir, align 8
  %23 = load i8*, i8** @DEBUG_CACHE_DIR, align 8
  %24 = load i32, i32* @MAXPATHLEN, align 4
  %25 = sub nsw i32 %24, 1
  %26 = call i32 @strncpy(i8* %22, i8* %23, i32 %25)
  br label %27

27:                                               ; preds = %21, %14
  %28 = load i8*, i8** @buildid_dir, align 8
  %29 = load i32, i32* @MAXPATHLEN, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  store i8 0, i8* %32, align 1
  br label %33

33:                                               ; preds = %27, %0
  %34 = load i8*, i8** @buildid_dir, align 8
  %35 = call i32 @setenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %34, i32 1)
  ret void
}

declare dso_local i32 @check_buildid_dir_config(...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
