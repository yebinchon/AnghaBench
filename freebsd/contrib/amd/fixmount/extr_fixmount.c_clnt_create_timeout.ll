; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/fixmount/extr_fixmount.c_clnt_create_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/fixmount/extr_fixmount.c_clnt_create_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }
%struct.sockaddr_in = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hostent = type { i64 }

@before_rpc = common dso_local global i32 0, align 4
@quiet = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@RPC_TIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SIGALRM = common dso_local global i32 0, align 4
@create_timeout = common dso_local global i32 0, align 4
@localhost = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"can't get address of %s\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@RPC_ANYSOCK = common dso_local global i32 0, align 4
@MOUNTPROG = common dso_local global i32 0, align 4
@MOUNTVERS = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.timeval*)* @clnt_create_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @clnt_create_timeout(i8* %0, %struct.timeval* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca %struct.hostent*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.timeval* %1, %struct.timeval** %5, align 8
  %10 = load i32, i32* @before_rpc, align 4
  %11 = call i64 @setjmp(i32 %10) #3
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load i32, i32* @quiet, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* @stderr, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* @RPC_TIMEDOUT, align 4
  %21 = call i32 @clnt_perrno(i32 %20)
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 @fflush(i32 %24)
  br label %26

26:                                               ; preds = %16, %13
  store i32* null, i32** %3, align 8
  br label %106

27:                                               ; preds = %2
  %28 = load i32, i32* @SIGALRM, align 4
  %29 = load i32, i32* @create_timeout, align 4
  %30 = call i32 @signal(i32 %28, i32 %29)
  %31 = load %struct.timeval*, %struct.timeval** %5, align 8
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 %33, 1000000
  %35 = sext i32 %34 to i64
  %36 = load %struct.timeval*, %struct.timeval** %5, align 8
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = call i32 @ualarm(i64 %39, i32 0)
  %41 = load i8*, i8** %4, align 8
  %42 = call %struct.hostent* @gethostbyname(i8* %41)
  store %struct.hostent* %42, %struct.hostent** %8, align 8
  %43 = icmp eq %struct.hostent* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %27
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* @localhost, align 4
  %47 = call i32 @STREQ(i8* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @stderr, align 4
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  store i32* null, i32** %3, align 8
  br label %106

53:                                               ; preds = %44, %27
  %54 = call i32 @memset(%struct.sockaddr_in* %7, i32 0, i32 8)
  %55 = load i32, i32* @AF_INET, align 4
  %56 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  %57 = load %struct.hostent*, %struct.hostent** %8, align 8
  %58 = icmp ne %struct.hostent* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  %61 = ptrtoint %struct.TYPE_2__* %60 to i32
  %62 = load %struct.hostent*, %struct.hostent** %8, align 8
  %63 = getelementptr inbounds %struct.hostent, %struct.hostent* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @memmove(i32 %61, i32 %65, i32 4)
  br label %71

67:                                               ; preds = %53
  %68 = call i32 @htonl(i32 2130706433)
  %69 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %67, %59
  %72 = load i32, i32* @RPC_ANYSOCK, align 4
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* @MOUNTPROG, align 4
  %74 = load i32, i32* @MOUNTVERS, align 4
  %75 = call i32* @clnttcp_create(%struct.sockaddr_in* %7, i32 %73, i32 %74, i32* %9, i32 0, i32 0)
  store i32* %75, i32** %6, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %90, label %78

78:                                               ; preds = %71
  %79 = load i32, i32* @SOCK_DGRAM, align 4
  %80 = call i32 @privsock(i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* @MOUNTPROG, align 4
  %82 = load i32, i32* @MOUNTVERS, align 4
  %83 = load %struct.timeval*, %struct.timeval** %5, align 8
  %84 = bitcast %struct.timeval* %83 to { i32, i64 }*
  %85 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %84, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32* @clntudp_create(%struct.sockaddr_in* %7, i32 %81, i32 %82, i32 %86, i64 %88, i32* %9)
  store i32* %89, i32** %6, align 8
  br label %90

90:                                               ; preds = %78, %71
  %91 = load i32*, i32** %6, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %103, label %93

93:                                               ; preds = %90
  %94 = call i32 @ualarm(i64 0, i32 0)
  %95 = load i32, i32* @quiet, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %93
  %98 = load i8*, i8** %4, align 8
  %99 = call i32 @clnt_pcreateerror(i8* %98)
  %100 = load i32, i32* @stderr, align 4
  %101 = call i32 @fflush(i32 %100)
  br label %102

102:                                              ; preds = %97, %93
  store i32* null, i32** %3, align 8
  br label %106

103:                                              ; preds = %90
  %104 = call i32 @ualarm(i64 0, i32 0)
  %105 = load i32*, i32** %6, align 8
  store i32* %105, i32** %3, align 8
  br label %106

106:                                              ; preds = %103, %102, %49, %26
  %107 = load i32*, i32** %3, align 8
  ret i32* %107
}

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @clnt_perrno(i32) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i32 @signal(i32, i32) #2

declare dso_local i32 @ualarm(i64, i32) #2

declare dso_local %struct.hostent* @gethostbyname(i8*) #2

declare dso_local i32 @STREQ(i8*, i32) #2

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #2

declare dso_local i32 @memmove(i32, i32, i32) #2

declare dso_local i32 @htonl(i32) #2

declare dso_local i32* @clnttcp_create(%struct.sockaddr_in*, i32, i32, i32*, i32, i32) #2

declare dso_local i32 @privsock(i32) #2

declare dso_local i32* @clntudp_create(%struct.sockaddr_in*, i32, i32, i32, i64, i32*) #2

declare dso_local i32 @clnt_pcreateerror(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
