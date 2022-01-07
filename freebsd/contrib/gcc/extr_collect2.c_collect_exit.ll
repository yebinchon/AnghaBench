; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_collect2.c_collect_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_collect2.c_collect_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c_file = common dso_local global i64* null, align 8
@o_file = common dso_local global i64* null, align 8
@ldout = common dso_local global i64* null, align 8
@stdout = common dso_local global i32 0, align 4
@lderrout = common dso_local global i64* null, align 8
@stderr = common dso_local global i32 0, align 4
@output_file = common dso_local global i64* null, align 8
@export_file = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @collect_exit(i32 %0) #0 {
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
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load i64*, i64** @ldout, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i64*, i64** @ldout, align 8
  %34 = load i32, i32* @stdout, align 4
  %35 = call i32 @dump_file(i64* %33, i32 %34)
  %36 = load i64*, i64** @ldout, align 8
  %37 = call i32 @maybe_unlink(i64* %36)
  br label %38

38:                                               ; preds = %32, %27, %24
  %39 = load i64*, i64** @lderrout, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load i64*, i64** @lderrout, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i64*, i64** @lderrout, align 8
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 @dump_file(i64* %47, i32 %48)
  %50 = load i64*, i64** @lderrout, align 8
  %51 = call i32 @maybe_unlink(i64* %50)
  br label %52

52:                                               ; preds = %46, %41, %38
  %53 = load i32, i32* %2, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load i64*, i64** @output_file, align 8
  %57 = icmp ne i64* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load i64*, i64** @output_file, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i64*, i64** @output_file, align 8
  %65 = call i32 @maybe_unlink(i64* %64)
  br label %66

66:                                               ; preds = %63, %58, %55, %52
  %67 = load i32, i32* %2, align 4
  %68 = call i32 @exit(i32 %67) #3
  unreachable
}

declare dso_local i32 @maybe_unlink(i64*) #1

declare dso_local i32 @dump_file(i64*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
