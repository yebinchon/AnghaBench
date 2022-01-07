; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testxml.c_test_xml_parser.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testxml.c_test_xml_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@p = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @test_xml_parser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_xml_parser(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @p, align 4
  %11 = call i64 @create_dummy_file(i32* %9, i32 %10, i32** %5)
  store i64 %11, i64* %8, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load i64, i64* @APR_SUCCESS, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @ABTS_INT_EQUAL(i32* %12, i64 %13, i64 %14)
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @APR_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %60

20:                                               ; preds = %2
  %21 = load i32, i32* @p, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @apr_xml_parse_file(i32 %21, i32** %6, %struct.TYPE_3__** %7, i32* %22, i32 2000)
  store i64 %23, i64* %8, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = load i64, i64* @APR_SUCCESS, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @ABTS_INT_EQUAL(i32* %24, i64 %25, i64 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dump_xml(i32* %28, i32 %31, i32 0)
  %33 = load i32*, i32** %5, align 8
  %34 = call i64 @apr_file_close(i32* %33)
  store i64 %34, i64* %8, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = load i64, i64* @APR_SUCCESS, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @ABTS_INT_EQUAL(i32* %35, i64 %36, i64 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* @p, align 4
  %41 = call i64 @create_dummy_file_error(i32* %39, i32 %40, i32** %5)
  store i64 %41, i64* %8, align 8
  %42 = load i32*, i32** %3, align 8
  %43 = load i64, i64* @APR_SUCCESS, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @ABTS_INT_EQUAL(i32* %42, i64 %43, i64 %44)
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @APR_SUCCESS, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %20
  br label %60

50:                                               ; preds = %20
  %51 = load i32, i32* @p, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = call i64 @apr_xml_parse_file(i32 %51, i32** %6, %struct.TYPE_3__** %7, i32* %52, i32 2000)
  store i64 %53, i64* %8, align 8
  %54 = load i32*, i32** %3, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @APR_SUCCESS, align 8
  %57 = icmp ne i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @ABTS_TRUE(i32* %54, i32 %58)
  br label %60

60:                                               ; preds = %50, %49, %19
  ret void
}

declare dso_local i64 @create_dummy_file(i32*, i32, i32**) #1

declare dso_local i32 @ABTS_INT_EQUAL(i32*, i64, i64) #1

declare dso_local i64 @apr_xml_parse_file(i32, i32**, %struct.TYPE_3__**, i32*, i32) #1

declare dso_local i32 @dump_xml(i32*, i32, i32) #1

declare dso_local i64 @apr_file_close(i32*) #1

declare dso_local i64 @create_dummy_file_error(i32*, i32, i32**) #1

declare dso_local i32 @ABTS_TRUE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
