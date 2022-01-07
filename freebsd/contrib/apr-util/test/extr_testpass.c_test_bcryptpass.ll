; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testpass.c_test_bcryptpass.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testpass.c_test_bcryptpass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"hellojed\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"hellojed2\00", align 1
@__const.test_bcryptpass.salt = private unnamed_addr constant [16 x i8] c"sardine_sardine\00", align 16
@.str.2 = private unnamed_addr constant [61 x i8] c"$2a$08$qipUJiI9fySUN38hcbz.lucXvAmtgowKOWYtB9y3CXyl6lTknruou\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"foobar\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"bcrypt encode password\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"bcrypt password validated\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"wrong bcrypt password should not validate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @test_bcryptpass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_bcryptpass(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [16 x i8], align 16
  %8 = alloca [100 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %11 = bitcast [16 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.test_bcryptpass.salt, i32 0, i32 0), i64 16, i1 false)
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %15 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %16 = call i32 @apr_bcrypt_encode(i8* %13, i32 5, i8* %14, i32 16, i8* %15, i32 100)
  %17 = call i32 @apr_assert_success(i32* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %21 = call i32 @apr_password_validate(i8* %19, i8* %20)
  %22 = call i32 @apr_assert_success(i32* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %26 = call i32 @apr_password_validate(i8* %24, i8* %25)
  %27 = call i32 @APR_ASSERT_FAILURE(i32* %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @apr_password_validate(i8* %29, i8* %30)
  %32 = call i32 @apr_assert_success(i32* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %31)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @apr_assert_success(i32*, i8*, i32) #2

declare dso_local i32 @apr_bcrypt_encode(i8*, i32, i8*, i32, i8*, i32) #2

declare dso_local i32 @apr_password_validate(i8*, i8*) #2

declare dso_local i32 @APR_ASSERT_FAILURE(i32*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
