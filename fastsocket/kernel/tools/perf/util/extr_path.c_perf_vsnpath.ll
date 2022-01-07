; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_path.c_perf_vsnpath.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_path.c_perf_vsnpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bad_path = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i8*, i32)* @perf_vsnpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @perf_vsnpath(i8* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = call i8* (...) @get_perf_dir()
  store i8* %12, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = call i64 @strlen(i8* %13)
  store i64 %14, i64* %11, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %11, align 8
  %17 = add i64 %16, 1
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %59

20:                                               ; preds = %4
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @memcpy(i8* %21, i8* %22, i64 %23)
  %25 = load i64, i64* %11, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %20
  %28 = load i8*, i8** %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = sub i64 %29, 1
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = call i32 @is_dir_sep(i8 signext %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %27
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %11, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %11, align 8
  %39 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8 47, i8* %39, align 1
  br label %40

40:                                               ; preds = %35, %27, %20
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %11, align 8
  %46 = sub i64 %44, %45
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i64 @vsnprintf(i8* %43, i64 %46, i8* %47, i32 %48)
  %50 = load i64, i64* %11, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp uge i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %40
  br label %59

56:                                               ; preds = %40
  %57 = load i8*, i8** %6, align 8
  %58 = call i8* @cleanup_path(i8* %57)
  store i8* %58, i8** %5, align 8
  br label %65

59:                                               ; preds = %55, %19
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* @bad_path, align 4
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @strlcpy(i8* %60, i32 %61, i64 %62)
  %64 = load i8*, i8** %6, align 8
  store i8* %64, i8** %5, align 8
  br label %65

65:                                               ; preds = %59, %56
  %66 = load i8*, i8** %5, align 8
  ret i8* %66
}

declare dso_local i8* @get_perf_dir(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @is_dir_sep(i8 signext) #1

declare dso_local i64 @vsnprintf(i8*, i64, i8*, i32) #1

declare dso_local i8* @cleanup_path(i8*) #1

declare dso_local i32 @strlcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
