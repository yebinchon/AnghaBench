; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_file.c_file_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_file.c_file_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_search(i32* %0, i8* %1, i8* %2, i8** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32* @file_open(i8* %15, i64* %12)
  store i32* %16, i32** %13, align 8
  %17 = load i32*, i32** %13, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %5
  %20 = load i64*, i64** %11, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %12, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i64, i64* %12, align 8
  %26 = load i64*, i64** %11, align 8
  store i64 %25, i64* %26, align 8
  store i32 -1, i32* %14, align 4
  br label %34

27:                                               ; preds = %19
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i8**, i8*** %10, align 8
  %33 = call i32 @file_search_or_reload(i32* %28, i32* %29, i8* %30, i8* %31, i8** %32, i32* null)
  store i32 %33, i32* %14, align 4
  br label %34

34:                                               ; preds = %27, %24
  %35 = load i32*, i32** %13, align 8
  %36 = call i32 @fclose(i32* %35)
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %6, align 4
  br label %40

38:                                               ; preds = %5
  %39 = load i32, i32* @errno, align 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32* @file_open(i8*, i64*) #1

declare dso_local i32 @file_search_or_reload(i32*, i32*, i8*, i8*, i8**, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
