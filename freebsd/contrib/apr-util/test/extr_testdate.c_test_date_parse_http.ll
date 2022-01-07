; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testdate.c_test_date_parse_http.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testdate.c_test_date_parse_http.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@year2secs = common dso_local global i32* null, align 8
@APR_USEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @test_date_parse_http to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_date_parse_http(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [50 x i8], align 16
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 1970, i32* %5, align 4
  br label %12

12:                                               ; preds = %38, %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 2038
  br i1 %14, label %15, label %41

15:                                               ; preds = %12
  %16 = load i32*, i32** @year2secs, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sub nsw i32 %17, 1970
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %9, align 4
  %24 = getelementptr inbounds [50 x i8], [50 x i8]* %11, i64 0, i64 0
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @gm_timestr_822(i8* %24, i32 %25)
  %27 = load i32, i32* @APR_USEC_PER_SEC, align 4
  %28 = load i32, i32* %9, align 4
  %29 = mul nsw i32 %28, %27
  store i32 %29, i32* %9, align 4
  %30 = getelementptr inbounds [50 x i8], [50 x i8]* %11, i64 0, i64 0
  %31 = call i32 @apr_date_parse_http(i8* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @ABTS_TRUE(i32* %32, i32 %36)
  br label %38

38:                                               ; preds = %15
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %12

41:                                               ; preds = %12
  %42 = call i32 (...) @apr_time_now()
  %43 = call i32 @APR_TIME_C(i32 -5)
  %44 = srem i32 %42, %43
  store i32 %44, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %75, %41
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 10000
  br i1 %47, label %48, label %78

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @lgc(i32 %49)
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* %7, align 4
  %56 = mul nsw i32 %55, -1
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %54, %48
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %9, align 4
  %61 = getelementptr inbounds [50 x i8], [50 x i8]* %11, i64 0, i64 0
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @gm_timestr_822(i8* %61, i32 %62)
  %64 = load i32, i32* @APR_USEC_PER_SEC, align 4
  %65 = load i32, i32* %9, align 4
  %66 = mul nsw i32 %65, %64
  store i32 %66, i32* %9, align 4
  %67 = getelementptr inbounds [50 x i8], [50 x i8]* %11, i64 0, i64 0
  %68 = call i32 @apr_date_parse_http(i8* %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @ABTS_TRUE(i32* %69, i32 %73)
  br label %75

75:                                               ; preds = %57
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %45

78:                                               ; preds = %45
  ret void
}

declare dso_local i32 @gm_timestr_822(i8*, i32) #1

declare dso_local i32 @apr_date_parse_http(i8*) #1

declare dso_local i32 @ABTS_TRUE(i32*, i32) #1

declare dso_local i32 @apr_time_now(...) #1

declare dso_local i32 @APR_TIME_C(i32) #1

declare dso_local i64 @lgc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
