; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testmd5.c_testmd5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testmd5.c_testmd5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@count = common dso_local global i64 0, align 8
@num_sums = common dso_local global i64 0, align 8
@test_md5sum = common dso_local global i32 0, align 4
@test_md5sum_unaligned = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @testmd5(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32* @ADD_SUITE(i32* %3)
  store i32* %4, i32** %2, align 8
  store i64 0, i64* @count, align 8
  br label %5

5:                                                ; preds = %13, %1
  %6 = load i64, i64* @count, align 8
  %7 = load i64, i64* @num_sums, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* @test_md5sum, align 4
  %12 = call i32 @abts_run_test(i32* %10, i32 %11, i32* null)
  br label %13

13:                                               ; preds = %9
  %14 = load i64, i64* @count, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* @count, align 8
  br label %5

16:                                               ; preds = %5
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @test_md5sum_unaligned, align 4
  %19 = call i32 @abts_run_test(i32* %17, i32 %18, i32* null)
  %20 = load i32*, i32** %2, align 8
  ret i32* %20
}

declare dso_local i32* @ADD_SUITE(i32*) #1

declare dso_local i32 @abts_run_test(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
