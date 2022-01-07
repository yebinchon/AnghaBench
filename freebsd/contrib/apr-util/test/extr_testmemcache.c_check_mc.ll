; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testmemcache.c_check_mc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testmemcache.c_check_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i8*, i32 }

@p = common dso_local global i32* null, align 8
@APR_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i64 0, align 8
@HOST = common dso_local global i32 0, align 4
@PORT = common dso_local global i32 0, align 4
@APR_USEC_PER_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"VERSION\00", align 1
@APR_EGENERAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @check_mc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @check_mc() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [2 x %struct.iovec], align 16
  %7 = alloca i32, align 4
  %8 = alloca [128 x i8], align 16
  %9 = alloca i32, align 4
  %10 = load i32*, i32** @p, align 8
  store i32* %10, i32** %2, align 8
  store i32* null, i32** %4, align 8
  %11 = load i32, i32* @APR_INET, align 4
  %12 = load i32, i32* @SOCK_STREAM, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = call i64 @apr_socket_create(i32** %4, i32 %11, i32 %12, i32 0, i32* %13)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @APR_SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %0
  %19 = load i64, i64* %3, align 8
  store i64 %19, i64* %1, align 8
  br label %94

20:                                               ; preds = %0
  %21 = load i32, i32* @HOST, align 4
  %22 = load i32, i32* @APR_INET, align 4
  %23 = load i32, i32* @PORT, align 4
  %24 = load i32*, i32** %2, align 8
  %25 = call i64 @apr_sockaddr_info_get(i32** %5, i32 %21, i32 %22, i32 %23, i32 0, i32* %24)
  store i64 %25, i64* %3, align 8
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @APR_SUCCESS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i64, i64* %3, align 8
  store i64 %30, i64* %1, align 8
  br label %94

31:                                               ; preds = %20
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @APR_USEC_PER_SEC, align 4
  %34 = mul nsw i32 1, %33
  %35 = call i64 @apr_socket_timeout_set(i32* %32, i32 %34)
  store i64 %35, i64* %3, align 8
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* @APR_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i64, i64* %3, align 8
  store i64 %40, i64* %1, align 8
  br label %94

41:                                               ; preds = %31
  %42 = load i32*, i32** %4, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = call i64 @apr_socket_connect(i32* %42, i32* %43)
  store i64 %44, i64* %3, align 8
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* @APR_SUCCESS, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i64, i64* %3, align 8
  store i64 %49, i64* %1, align 8
  br label %94

50:                                               ; preds = %41
  %51 = load i32*, i32** %4, align 8
  %52 = call i64 @apr_socket_timeout_set(i32* %51, i32 -1)
  store i64 %52, i64* %3, align 8
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* @APR_SUCCESS, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i64, i64* %3, align 8
  store i64 %57, i64* %1, align 8
  br label %94

58:                                               ; preds = %50
  %59 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %6, i64 0, i64 0
  %60 = getelementptr inbounds %struct.iovec, %struct.iovec* %59, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %60, align 16
  %61 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %6, i64 0, i64 0
  %62 = getelementptr inbounds %struct.iovec, %struct.iovec* %61, i32 0, i32 1
  store i32 7, i32* %62, align 8
  %63 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %6, i64 0, i64 1
  %64 = getelementptr inbounds %struct.iovec, %struct.iovec* %63, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %64, align 16
  %65 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %6, i64 0, i64 1
  %66 = getelementptr inbounds %struct.iovec, %struct.iovec* %65, i32 0, i32 1
  store i32 2, i32* %66, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %6, i64 0, i64 0
  %69 = call i64 @apr_socket_sendv(i32* %67, %struct.iovec* %68, i32 2, i32* %7)
  store i64 %69, i64* %3, align 8
  %70 = load i64, i64* %3, align 8
  %71 = load i64, i64* @APR_SUCCESS, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %58
  %74 = load i64, i64* %3, align 8
  store i64 %74, i64* %1, align 8
  br label %94

75:                                               ; preds = %58
  store i32 128, i32* %9, align 4
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %78 = call i64 @apr_socket_recv(i32* %76, i8* %77, i32* %9)
  store i64 %78, i64* %3, align 8
  %79 = load i64, i64* %3, align 8
  %80 = load i64, i64* @APR_SUCCESS, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i64, i64* %3, align 8
  store i64 %83, i64* %1, align 8
  br label %94

84:                                               ; preds = %75
  %85 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %86 = call i64 @strncmp(i8* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i64, i64* @APR_EGENERAL, align 8
  store i64 %89, i64* %3, align 8
  br label %90

90:                                               ; preds = %88, %84
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @apr_socket_close(i32* %91)
  %93 = load i64, i64* %3, align 8
  store i64 %93, i64* %1, align 8
  br label %94

94:                                               ; preds = %90, %82, %73, %56, %48, %39, %29, %18
  %95 = load i64, i64* %1, align 8
  ret i64 %95
}

declare dso_local i64 @apr_socket_create(i32**, i32, i32, i32, i32*) #1

declare dso_local i64 @apr_sockaddr_info_get(i32**, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @apr_socket_timeout_set(i32*, i32) #1

declare dso_local i64 @apr_socket_connect(i32*, i32*) #1

declare dso_local i64 @apr_socket_sendv(i32*, %struct.iovec*, i32, i32*) #1

declare dso_local i64 @apr_socket_recv(i32*, i8*, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @apr_socket_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
