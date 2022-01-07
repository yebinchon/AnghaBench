; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testbuckets.c_testbuckets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testbuckets.c_testbuckets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_create = common dso_local global i32 0, align 4
@test_simple = common dso_local global i32 0, align 4
@test_flatten = common dso_local global i32 0, align 4
@test_split = common dso_local global i32 0, align 4
@test_bwrite = common dso_local global i32 0, align 4
@test_splitline = common dso_local global i32 0, align 4
@test_splits = common dso_local global i32 0, align 4
@test_insertfile = common dso_local global i32 0, align 4
@test_manyfile = common dso_local global i32 0, align 4
@test_truncfile = common dso_local global i32 0, align 4
@test_partition = common dso_local global i32 0, align 4
@test_write_split = common dso_local global i32 0, align 4
@test_write_putstrs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @testbuckets(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32* @ADD_SUITE(i32* %3)
  store i32* %4, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @test_create, align 4
  %7 = call i32 @abts_run_test(i32* %5, i32 %6, i32* null)
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @test_simple, align 4
  %10 = call i32 @abts_run_test(i32* %8, i32 %9, i32* null)
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @test_flatten, align 4
  %13 = call i32 @abts_run_test(i32* %11, i32 %12, i32* null)
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @test_split, align 4
  %16 = call i32 @abts_run_test(i32* %14, i32 %15, i32* null)
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @test_bwrite, align 4
  %19 = call i32 @abts_run_test(i32* %17, i32 %18, i32* null)
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @test_splitline, align 4
  %22 = call i32 @abts_run_test(i32* %20, i32 %21, i32* null)
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @test_splits, align 4
  %25 = call i32 @abts_run_test(i32* %23, i32 %24, i32* null)
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* @test_insertfile, align 4
  %28 = call i32 @abts_run_test(i32* %26, i32 %27, i32* null)
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* @test_manyfile, align 4
  %31 = call i32 @abts_run_test(i32* %29, i32 %30, i32* null)
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* @test_truncfile, align 4
  %34 = call i32 @abts_run_test(i32* %32, i32 %33, i32* null)
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* @test_partition, align 4
  %37 = call i32 @abts_run_test(i32* %35, i32 %36, i32* null)
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* @test_write_split, align 4
  %40 = call i32 @abts_run_test(i32* %38, i32 %39, i32* null)
  %41 = load i32*, i32** %2, align 8
  %42 = load i32, i32* @test_write_putstrs, align 4
  %43 = call i32 @abts_run_test(i32* %41, i32 %42, i32* null)
  %44 = load i32*, i32** %2, align 8
  ret i32* %44
}

declare dso_local i32* @ADD_SUITE(i32*) #1

declare dso_local i32 @abts_run_test(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
