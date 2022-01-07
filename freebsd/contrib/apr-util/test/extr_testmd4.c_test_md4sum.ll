; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testmd4.c_test_md4sum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testmd4.c_test_md4sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }

@APR_MD4_DIGESTSIZE = common dso_local global i32 0, align 4
@md4sums = common dso_local global %struct.TYPE_2__* null, align 8
@count = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"apr_md4_init\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"apr_md4_update\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"apr_md4_final\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"check for correct md4 digest\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @test_md4sum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_md4sum(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i32, i32* @APR_MD4_DIGESTSIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @md4sums, align 8
  %16 = load i64, i64* @count, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %8, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @md4sums, align 8
  %21 = load i64, i64* @count, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @strlen(i8* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = call i64 @apr_md4_init(i32* %5)
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @ABTS_ASSERT(i32* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @apr_md4_update(i32* %5, i8* %33, i32 %34)
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @ABTS_ASSERT(i32* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = call i64 @apr_md4_final(i8* %14, i32* %5)
  %41 = icmp eq i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @ABTS_ASSERT(i32* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i32, i32* @APR_MD4_DIGESTSIZE, align 4
  %47 = call i64 @memcmp(i8* %14, i8* %45, i32 %46)
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @ABTS_ASSERT(i32* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %51)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @ABTS_ASSERT(i32*, i8*, i32) #2

declare dso_local i64 @apr_md4_init(i32*) #2

declare dso_local i64 @apr_md4_update(i32*, i8*, i32) #2

declare dso_local i64 @apr_md4_final(i8*, i32*) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
