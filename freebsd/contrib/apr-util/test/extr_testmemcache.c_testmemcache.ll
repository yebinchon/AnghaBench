; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testmemcache.c_testmemcache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testmemcache.c_testmemcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APR_SUCCESS = common dso_local global i64 0, align 8
@test_memcache_create = common dso_local global i32 0, align 4
@test_memcache_user_funcs = common dso_local global i32 0, align 4
@test_memcache_meta = common dso_local global i32 0, align 4
@test_memcache_setget = common dso_local global i32 0, align 4
@test_memcache_multiget = common dso_local global i32 0, align 4
@test_memcache_addreplace = common dso_local global i32 0, align 4
@test_memcache_incrdecr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"Error %d occurred attempting to reach memcached on %s:%d.  Skipping apr_memcache tests...\00", align 1
@HOST = common dso_local global i32 0, align 4
@PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @testmemcache(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32* @ADD_SUITE(i32* %4)
  store i32* %5, i32** %2, align 8
  %6 = call i64 (...) @check_mc()
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @APR_SUCCESS, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @test_memcache_create, align 4
  %13 = call i32 @abts_run_test(i32* %11, i32 %12, i32* null)
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @test_memcache_user_funcs, align 4
  %16 = call i32 @abts_run_test(i32* %14, i32 %15, i32* null)
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @test_memcache_meta, align 4
  %19 = call i32 @abts_run_test(i32* %17, i32 %18, i32* null)
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @test_memcache_setget, align 4
  %22 = call i32 @abts_run_test(i32* %20, i32 %21, i32* null)
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @test_memcache_multiget, align 4
  %25 = call i32 @abts_run_test(i32* %23, i32 %24, i32* null)
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* @test_memcache_addreplace, align 4
  %28 = call i32 @abts_run_test(i32* %26, i32 %27, i32* null)
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* @test_memcache_incrdecr, align 4
  %31 = call i32 @abts_run_test(i32* %29, i32 %30, i32* null)
  br label %37

32:                                               ; preds = %1
  %33 = load i64, i64* %3, align 8
  %34 = load i32, i32* @HOST, align 4
  %35 = load i32, i32* @PORT, align 4
  %36 = call i32 @abts_log_message(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i64 %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %10
  %38 = load i32*, i32** %2, align 8
  ret i32* %38
}

declare dso_local i32* @ADD_SUITE(i32*) #1

declare dso_local i64 @check_mc(...) #1

declare dso_local i32 @abts_run_test(i32*, i32, i32*) #1

declare dso_local i32 @abts_log_message(i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
