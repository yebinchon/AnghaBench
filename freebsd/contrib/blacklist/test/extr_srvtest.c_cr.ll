; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/blacklist/test/extr_srvtest.c_cr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/blacklist/test/extr_srvtest.c_cr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i64 }
%struct.sockaddr_in = type { i32, i8* }
%struct.sockaddr_in6 = type { i8*, i32 }

@AF_INET = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @cr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cr(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_storage, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.sockaddr_in6*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @AF_INET, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @PF_INET, align 4
  br label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @PF_INET6, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @socket(i32 %20, i32 %21, i32 0)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %19
  %28 = load i8*, i8** %6, align 8
  %29 = call i8* @htons(i8* %28)
  store i8* %29, i8** %6, align 8
  %30 = call i32 @memset(%struct.sockaddr_storage* %8, i32 0, i32 8)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @AF_INET, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = bitcast %struct.sockaddr_storage* %8 to i8*
  %36 = bitcast i8* %35 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %36, %struct.sockaddr_in** %10, align 8
  %37 = load i32, i32* @AF_INET, align 4
  %38 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  store i32 16, i32* %9, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  br label %52

43:                                               ; preds = %27
  %44 = bitcast %struct.sockaddr_storage* %8 to i8*
  %45 = bitcast i8* %44 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %45, %struct.sockaddr_in6** %11, align 8
  %46 = load i32, i32* @AF_INET6, align 4
  %47 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %48 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  store i32 16, i32* %9, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %51 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %43, %34
  %53 = load i32, i32* %7, align 4
  %54 = bitcast %struct.sockaddr_storage* %8 to i8*
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @bind(i32 %53, i8* %54, i32 %55)
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %52
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @SOCK_DGRAM, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @listen(i32 %65, i32 5)
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %64
  br label %71

71:                                               ; preds = %70, %60
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @htons(i8*) #1

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @bind(i32, i8*, i32) #1

declare dso_local i32 @listen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
