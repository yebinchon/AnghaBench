; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testmd5.c_test_md5sum_unaligned.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testmd5.c_test_md5sum_unaligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [126 x i8] c"abcdefghijklmnopqrstuvwxyz01234abcdefghijklmnopqrstuvwxyz01234abcdefghijklmnopqrstuvwxyz01234abcdefghijklmnopqrstuvwxyz01234_\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"\93\17\22x\EE0\82\B3\EB\953\EC\EAx\B7\89\00", align 1
@APR_MD5_DIGESTSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"apr_md5_init\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"apr_md5_update\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"apr_md5_final\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"check for correct md5 digest of unaligned data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @test_md5sum_unaligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_md5sum_unaligned(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %11 = load i32, i32* @APR_MD5_DIGESTSIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @apr_md5_init(i32* %5)
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @ABTS_ASSERT(i32* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %34, %2
  %21 = load i32, i32* %10, align 4
  %22 = icmp ult i32 %21, 10
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load i32*, i32** %3, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = call i64 @apr_md5_update(i32* %5, i8* %25, i32 %27)
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @ABTS_ASSERT(i32* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %6, align 8
  br label %34

34:                                               ; preds = %23
  %35 = load i32, i32* %10, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %20

37:                                               ; preds = %20
  %38 = load i32*, i32** %3, align 8
  %39 = call i64 @apr_md5_final(i8* %14, i32* %5)
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @ABTS_ASSERT(i32* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* @APR_MD5_DIGESTSIZE, align 4
  %46 = call i64 @memcmp(i8* %14, i8* %44, i32 %45)
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @ABTS_ASSERT(i32* %43, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %48)
  %50 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %50)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ABTS_ASSERT(i32*, i8*, i32) #2

declare dso_local i64 @apr_md5_init(i32*) #2

declare dso_local i64 @apr_md5_update(i32*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @apr_md5_final(i8*, i32*) #2

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
