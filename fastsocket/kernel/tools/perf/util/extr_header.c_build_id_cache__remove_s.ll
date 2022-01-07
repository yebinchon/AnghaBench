; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c_build_id_cache__remove_s.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c_build_id_cache__remove_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"%s/.build-id/%.2s/%s\00", align 1
@F_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_id_cache__remove_s(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i64, i64* @PATH_MAX, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i8* @zalloc(i64 %10)
  store i8* %11, i8** %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i8* @zalloc(i64 %12)
  store i8* %13, i8** %7, align 8
  store i32 -1, i32* %8, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i8*, i8** %7, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %2
  br label %58

20:                                               ; preds = %16
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  %27 = call i32 @snprintf(i8* %21, i64 %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %24, i8* %26)
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* @F_OK, align 4
  %30 = call i64 @access(i8* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %58

33:                                               ; preds = %20
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = sub i64 %36, 1
  %38 = call i64 @readlink(i8* %34, i8* %35, i64 %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %58

41:                                               ; preds = %33
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @unlink(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %58

46:                                               ; preds = %41
  %47 = load i8*, i8** %7, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = load i8*, i8** %3, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @snprintf(i8* %47, i64 %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %49, i8* %50, i8* %51)
  %53 = load i8*, i8** %7, align 8
  %54 = call i64 @unlink(i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %58

57:                                               ; preds = %46
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %57, %56, %45, %40, %32, %19
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @free(i8* %61)
  %63 = load i32, i32* %8, align 4
  ret i32 %63
}

declare dso_local i8* @zalloc(i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i64 @readlink(i8*, i8*, i64) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
