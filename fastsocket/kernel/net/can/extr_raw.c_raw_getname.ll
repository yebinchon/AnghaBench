; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_raw.c_raw_getname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_raw.c_raw_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_can = type { i32, i32 }
%struct.raw_sock = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@AF_CAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32*, i32)* @raw_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_getname(%struct.socket* %0, %struct.sockaddr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_can*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.raw_sock*, align 8
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %14 = bitcast %struct.sockaddr* %13 to %struct.sockaddr_can*
  store %struct.sockaddr_can* %14, %struct.sockaddr_can** %10, align 8
  %15 = load %struct.socket*, %struct.socket** %6, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %17, %struct.sock** %11, align 8
  %18 = load %struct.sock*, %struct.sock** %11, align 8
  %19 = call %struct.raw_sock* @raw_sk(%struct.sock* %18)
  store %struct.raw_sock* %19, %struct.raw_sock** %12, align 8
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %37

25:                                               ; preds = %4
  %26 = load %struct.sockaddr_can*, %struct.sockaddr_can** %10, align 8
  %27 = call i32 @memset(%struct.sockaddr_can* %26, i32 0, i32 8)
  %28 = load i32, i32* @AF_CAN, align 4
  %29 = load %struct.sockaddr_can*, %struct.sockaddr_can** %10, align 8
  %30 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.raw_sock*, %struct.raw_sock** %12, align 8
  %32 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sockaddr_can*, %struct.sockaddr_can** %10, align 8
  %35 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32*, i32** %8, align 8
  store i32 8, i32* %36, align 4
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %25, %22
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local %struct.raw_sock* @raw_sk(%struct.sock*) #1

declare dso_local i32 @memset(%struct.sockaddr_can*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
