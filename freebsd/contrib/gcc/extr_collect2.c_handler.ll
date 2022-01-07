; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_collect2.c_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_collect2.c_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c_file = common dso_local global i64* null, align 8
@o_file = common dso_local global i64* null, align 8
@ldout = common dso_local global i64* null, align 8
@lderrout = common dso_local global i64* null, align 8
@SIG_DFL = common dso_local global i32 0, align 4
@export_file = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64*, i64** @c_file, align 8
  %4 = icmp ne i64* %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load i64*, i64** @c_file, align 8
  %7 = getelementptr inbounds i64, i64* %6, i64 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = load i64*, i64** @c_file, align 8
  %12 = call i32 @maybe_unlink(i64* %11)
  br label %13

13:                                               ; preds = %10, %5, %1
  %14 = load i64*, i64** @o_file, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load i64*, i64** @o_file, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i64*, i64** @o_file, align 8
  %23 = call i32 @maybe_unlink(i64* %22)
  br label %24

24:                                               ; preds = %21, %16, %13
  %25 = load i64*, i64** @ldout, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i64*, i64** @ldout, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i64*, i64** @ldout, align 8
  %34 = call i32 @maybe_unlink(i64* %33)
  br label %35

35:                                               ; preds = %32, %27, %24
  %36 = load i64*, i64** @lderrout, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i64*, i64** @lderrout, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i64*, i64** @lderrout, align 8
  %45 = call i32 @maybe_unlink(i64* %44)
  br label %46

46:                                               ; preds = %43, %38, %35
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @SIG_DFL, align 4
  %49 = call i32 @signal(i32 %47, i32 %48)
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @raise(i32 %50)
  ret void
}

declare dso_local i32 @maybe_unlink(i64*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @raise(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
