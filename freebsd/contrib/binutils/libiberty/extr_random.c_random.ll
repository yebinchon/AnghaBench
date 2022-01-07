; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_random.c_random.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_random.c_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rand_type = common dso_local global i64 0, align 8
@TYPE_0 = common dso_local global i64 0, align 8
@state = common dso_local global i32* null, align 8
@LONG_MAX = common dso_local global i32 0, align 4
@rptr = common dso_local global i32* null, align 8
@fptr = common dso_local global i32* null, align 8
@end_ptr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @random() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i64, i64* @rand_type, align 8
  %4 = load i64, i64* @TYPE_0, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %20

6:                                                ; preds = %0
  %7 = load i32*, i32** @state, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = mul nsw i32 %9, 1103515245
  %11 = add nsw i32 %10, 12345
  %12 = load i32, i32* @LONG_MAX, align 4
  %13 = and i32 %11, %12
  %14 = load i32*, i32** @state, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %13, i32* %15, align 4
  %16 = load i32*, i32** @state, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %1, align 8
  br label %52

20:                                               ; preds = %0
  %21 = load i32*, i32** @rptr, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** @fptr, align 8
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, %22
  store i32 %25, i32* %23, align 4
  %26 = load i32*, i32** @fptr, align 8
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 1
  %29 = load i32, i32* @LONG_MAX, align 4
  %30 = and i32 %28, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %2, align 8
  %32 = load i32*, i32** @fptr, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** @fptr, align 8
  %34 = load i32*, i32** @fptr, align 8
  %35 = load i32*, i32** @end_ptr, align 8
  %36 = icmp uge i32* %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %20
  %38 = load i32*, i32** @state, align 8
  store i32* %38, i32** @fptr, align 8
  %39 = load i32*, i32** @rptr, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** @rptr, align 8
  br label %50

41:                                               ; preds = %20
  %42 = load i32*, i32** @rptr, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** @rptr, align 8
  %44 = load i32*, i32** @rptr, align 8
  %45 = load i32*, i32** @end_ptr, align 8
  %46 = icmp uge i32* %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32*, i32** @state, align 8
  store i32* %48, i32** @rptr, align 8
  br label %49

49:                                               ; preds = %47, %41
  br label %50

50:                                               ; preds = %49, %37
  %51 = load i64, i64* %2, align 8
  store i64 %51, i64* %1, align 8
  br label %52

52:                                               ; preds = %50, %6
  %53 = load i64, i64* %1, align 8
  ret i64 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
