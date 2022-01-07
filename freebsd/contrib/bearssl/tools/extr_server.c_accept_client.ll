; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_server.c_accept_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_server.c_accept_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@INVALID_SOCKET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"accept()\00", align 1
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"<unknown: %lu>\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"accepting connection from: %s\0A\00", align 1
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@FIONBIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @accept_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @accept_client(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 4, i32* %10, align 4
  %14 = load i32, i32* %5, align 4
  %15 = bitcast i32* %9 to %struct.sockaddr*
  %16 = call i32 @accept(i32 %14, %struct.sockaddr* %15, i32* %10)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @INVALID_SOCKET, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32, i32* @INVALID_SOCKET, align 4
  store i32 %26, i32* %4, align 4
  br label %72

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %62

30:                                               ; preds = %27
  %31 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %32 = add nsw i32 %31, 50
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %11, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %12, align 8
  store i8* null, i8** %13, align 8
  %36 = bitcast i32* %9 to %struct.sockaddr*
  %37 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 4
  switch i64 %38, label %49 [
    i64 129, label %39
    i64 128, label %44
  ]

39:                                               ; preds = %30
  %40 = bitcast i32* %9 to %struct.sockaddr_in*
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %40, i32 0, i32 0
  %42 = trunc i64 %33 to i32
  %43 = call i8* @inet_ntop(i32 129, i32* %41, i8* %35, i32 %42)
  store i8* %43, i8** %13, align 8
  br label %49

44:                                               ; preds = %30
  %45 = bitcast i32* %9 to %struct.sockaddr_in6*
  %46 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %45, i32 0, i32 0
  %47 = trunc i64 %33 to i32
  %48 = call i8* @inet_ntop(i32 128, i32* %46, i8* %35, i32 %47)
  store i8* %48, i8** %13, align 8
  br label %49

49:                                               ; preds = %30, %44, %39
  %50 = load i8*, i8** %13, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = bitcast i32* %9 to %struct.sockaddr*
  %54 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 4
  %56 = call i32 @sprintf(i8* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  store i8* %35, i8** %13, align 8
  br label %57

57:                                               ; preds = %52, %49
  %58 = load i32, i32* @stderr, align 4
  %59 = load i8*, i8** %13, align 8
  %60 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  %61 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %61)
  br label %62

62:                                               ; preds = %57, %27
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @F_SETFL, align 4
  %68 = load i32, i32* @O_NONBLOCK, align 4
  %69 = call i32 @fcntl(i32 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %62
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %25
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @inet_ntop(i32, i32*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @fcntl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
