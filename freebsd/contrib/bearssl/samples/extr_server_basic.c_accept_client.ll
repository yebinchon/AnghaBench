; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/samples/extr_server_basic.c_accept_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/samples/extr_server_basic.c_accept_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"accept()\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"<unknown: %lu>\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"accepting connection from: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @accept_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @accept_client(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %12 = add nsw i32 %11, 50
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  store i32 4, i32* %6, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @accept(i32 %16, %struct.sockaddr* %5, i32* %6)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %48

22:                                               ; preds = %1
  store i8* null, i8** %9, align 8
  %23 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %35 [
    i32 129, label %25
    i32 128, label %30
  ]

25:                                               ; preds = %22
  %26 = bitcast %struct.sockaddr* %5 to %struct.sockaddr_in*
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %26, i32 0, i32 0
  %28 = trunc i64 %13 to i32
  %29 = call i8* @inet_ntop(i32 129, i32* %27, i8* %15, i32 %28)
  store i8* %29, i8** %9, align 8
  br label %35

30:                                               ; preds = %22
  %31 = bitcast %struct.sockaddr* %5 to %struct.sockaddr_in6*
  %32 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %31, i32 0, i32 0
  %33 = trunc i64 %13 to i32
  %34 = call i8* @inet_ntop(i32 128, i32* %32, i8* %15, i32 %33)
  store i8* %34, i8** %9, align 8
  br label %35

35:                                               ; preds = %22, %30, %25
  %36 = load i8*, i8** %9, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %5, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  store i8* %15, i8** %9, align 8
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i32, i32* @stderr, align 4
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @fprintf(i32 %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %48

48:                                               ; preds = %43, %20
  %49 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %49)
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i8* @inet_ntop(i32, i32*, i8*, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i64) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
