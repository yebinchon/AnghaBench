; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/blacklist/test/extr_cltest.c_getaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/blacklist/test/extr_cltest.c_getaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i64 }
%struct.sockaddr_in6 = type { i8*, i8*, i32 }
%struct.sockaddr_in = type { i8*, i8*, i32 }

@AF_INET6 = common dso_local global i8* null, align 8
@AF_INET = common dso_local global i8* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid address `%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.sockaddr_storage*, i32*)* @getaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getaddr(i8* %0, i8* %1, %struct.sockaddr_storage* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sockaddr_storage*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca %struct.sockaddr_in*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.sockaddr_storage* %2, %struct.sockaddr_storage** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %13 = call i32 @memset(%struct.sockaddr_storage* %12, i32 0, i32 8)
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* @htons(i8* %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strchr(i8* %16, i8 signext 58)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %4
  %20 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %21 = bitcast %struct.sockaddr_storage* %20 to i8*
  %22 = bitcast i8* %21 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %22, %struct.sockaddr_in6** %10, align 8
  %23 = load i8*, i8** @AF_INET6, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %26 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %25, i32 0, i32 2
  %27 = call i32 @inet_pton(i8* %23, i8* %24, i32* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i8*, i8** @AF_INET6, align 8
  %29 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %30 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load i32*, i32** %8, align 8
  store i32 24, i32* %31, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %34 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  br label %51

35:                                               ; preds = %4
  %36 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %37 = bitcast %struct.sockaddr_storage* %36 to i8*
  %38 = bitcast i8* %37 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %38, %struct.sockaddr_in** %11, align 8
  %39 = load i8*, i8** @AF_INET, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %41, i32 0, i32 2
  %43 = call i32 @inet_pton(i8* %39, i8* %40, i32* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i8*, i8** @AF_INET, align 8
  %45 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load i32*, i32** %8, align 8
  store i32 24, i32* %47, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %50 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %35, %19
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* @EXIT_FAILURE, align 4
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @err(i32 %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %54, %51
  ret void
}

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i8* @htons(i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @inet_pton(i8*, i8*, i32*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
