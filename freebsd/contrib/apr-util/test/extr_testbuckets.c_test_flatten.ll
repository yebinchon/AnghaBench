; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testbuckets.c_test_flatten.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testbuckets.c_test_flatten.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"hello, \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"flatten brigade\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"hello, world\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @test_flatten to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_flatten(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @p, align 4
  %8 = call i32* @apr_bucket_alloc_create(i32 %7)
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32* @make_simple_brigade(i32* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @flatten_match(i32* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @apr_brigade_destroy(i32* %14)
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @apr_bucket_alloc_destroy(i32* %16)
  ret void
}

declare dso_local i32* @apr_bucket_alloc_create(i32) #1

declare dso_local i32* @make_simple_brigade(i32*, i8*, i8*) #1

declare dso_local i32 @flatten_match(i32*, i8*, i32*, i8*) #1

declare dso_local i32 @apr_brigade_destroy(i32*) #1

declare dso_local i32 @apr_bucket_alloc_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
