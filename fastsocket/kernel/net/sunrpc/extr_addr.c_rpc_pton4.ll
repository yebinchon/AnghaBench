; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_addr.c_rpc_pton4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_addr.c_rpc_pton4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@INET_ADDRSTRLEN = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, %struct.sockaddr*, i64)* @rpc_pton4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rpc_pton4(i8* %0, i64 %1, %struct.sockaddr* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %13 = bitcast %struct.sockaddr* %12 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %13, %struct.sockaddr_in** %10, align 8
  %14 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32* %16, i32** %11, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @INET_ADDRSTRLEN, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i64, i64* %9, align 8
  %22 = icmp ult i64 %21, 8
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %4
  store i64 0, i64* %5, align 8
  br label %37

24:                                               ; preds = %20
  %25 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %26 = call i32 @memset(%struct.sockaddr* %25, i32 0, i32 8)
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = call i64 @in4_pton(i8* %27, i64 %28, i32* %29, i8 signext 0, i32* null)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i64 0, i64* %5, align 8
  br label %37

33:                                               ; preds = %24
  %34 = load i32, i32* @AF_INET, align 4
  %35 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  store i64 8, i64* %5, align 8
  br label %37

37:                                               ; preds = %33, %32, %23
  %38 = load i64, i64* %5, align 8
  ret i64 %38
}

declare dso_local i32 @memset(%struct.sockaddr*, i32, i32) #1

declare dso_local i64 @in4_pton(i8*, i64, i32*, i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
