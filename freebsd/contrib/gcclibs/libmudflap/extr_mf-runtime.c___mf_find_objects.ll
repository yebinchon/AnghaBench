; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libmudflap/extr_mf-runtime.c___mf_find_objects.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libmudflap/extr_mf-runtime.c___mf_find_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__MF_TYPE_NOACCESS = common dso_local global i32 0, align 4
@__MF_TYPE_GUESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mf_find_objects(i64 %0, i64 %1, i32** %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* @__MF_TYPE_NOACCESS, align 4
  store i32 %12, i32* %9, align 4
  br label %13

13:                                               ; preds = %40, %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @__MF_TYPE_GUESS, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i32**, i32*** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @__mf_find_objects2(i64 %18, i64 %19, i32** %20, i32 %21, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  store i32** null, i32*** %7, align 8
  br label %36

28:                                               ; preds = %17
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %8, align 4
  %31 = sub i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32**, i32*** %7, align 8
  %34 = zext i32 %32 to i64
  %35 = getelementptr inbounds i32*, i32** %33, i64 %34
  store i32** %35, i32*** %7, align 8
  br label %36

36:                                               ; preds = %28, %27
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %10, align 4
  %39 = add i32 %38, %37
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %13

43:                                               ; preds = %13
  %44 = load i32, i32* %10, align 4
  ret i32 %44
}

declare dso_local i32 @__mf_find_objects2(i64, i64, i32**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
