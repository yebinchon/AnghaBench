; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_random.c_srandom.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_random.c_srandom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@state = common dso_local global i32* null, align 8
@rand_type = common dso_local global i64 0, align 8
@TYPE_0 = common dso_local global i64 0, align 8
@rand_deg = common dso_local global i64 0, align 8
@rand_sep = common dso_local global i64 0, align 8
@fptr = common dso_local global i32* null, align 8
@rptr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @srandom(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32*, i32** @state, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  store i32 %4, i32* %6, align 4
  %7 = load i64, i64* @rand_type, align 8
  %8 = load i64, i64* @TYPE_0, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %46

10:                                               ; preds = %1
  store i64 1, i64* %3, align 8
  br label %11

11:                                               ; preds = %26, %10
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @rand_deg, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = load i32*, i32** @state, align 8
  %17 = load i64, i64* %3, align 8
  %18 = sub nsw i64 %17, 1
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 1103515145, %20
  %22 = add nsw i32 %21, 12345
  %23 = load i32*, i32** @state, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32 %22, i32* %25, align 4
  br label %26

26:                                               ; preds = %15
  %27 = load i64, i64* %3, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %3, align 8
  br label %11

29:                                               ; preds = %11
  %30 = load i32*, i32** @state, align 8
  %31 = load i64, i64* @rand_sep, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32* %32, i32** @fptr, align 8
  %33 = load i32*, i32** @state, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32* %34, i32** @rptr, align 8
  store i64 0, i64* %3, align 8
  br label %35

35:                                               ; preds = %42, %29
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* @rand_deg, align 8
  %38 = mul nsw i64 10, %37
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = call i32 (...) @random()
  br label %42

42:                                               ; preds = %40
  %43 = load i64, i64* %3, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %3, align 8
  br label %35

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %1
  ret void
}

declare dso_local i32 @random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
