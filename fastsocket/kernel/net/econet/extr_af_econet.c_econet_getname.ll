; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/econet/extr_af_econet.c_econet_getname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/econet/extr_af_econet.c_econet_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.econet_sock = type { i32, i32, i32 }
%struct.sockaddr_ec = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@econet_mutex = common dso_local global i32 0, align 4
@AF_ECONET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32*, i32)* @econet_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @econet_getname(%struct.socket* %0, %struct.sockaddr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.econet_sock*, align 8
  %12 = alloca %struct.sockaddr_ec*, align 8
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %14 = bitcast %struct.sockaddr* %13 to %struct.sockaddr_ec*
  store %struct.sockaddr_ec* %14, %struct.sockaddr_ec** %12, align 8
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %51

20:                                               ; preds = %4
  %21 = load %struct.sockaddr_ec*, %struct.sockaddr_ec** %12, align 8
  %22 = call i32 @memset(%struct.sockaddr_ec* %21, i32 0, i32 16)
  %23 = call i32 @mutex_lock(i32* @econet_mutex)
  %24 = load %struct.socket*, %struct.socket** %6, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 0
  %26 = load %struct.sock*, %struct.sock** %25, align 8
  store %struct.sock* %26, %struct.sock** %10, align 8
  %27 = load %struct.sock*, %struct.sock** %10, align 8
  %28 = call %struct.econet_sock* @ec_sk(%struct.sock* %27)
  store %struct.econet_sock* %28, %struct.econet_sock** %11, align 8
  %29 = load i32, i32* @AF_ECONET, align 4
  %30 = load %struct.sockaddr_ec*, %struct.sockaddr_ec** %12, align 8
  %31 = getelementptr inbounds %struct.sockaddr_ec, %struct.sockaddr_ec* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.econet_sock*, %struct.econet_sock** %11, align 8
  %33 = getelementptr inbounds %struct.econet_sock, %struct.econet_sock* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sockaddr_ec*, %struct.sockaddr_ec** %12, align 8
  %36 = getelementptr inbounds %struct.sockaddr_ec, %struct.sockaddr_ec* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.econet_sock*, %struct.econet_sock** %11, align 8
  %38 = getelementptr inbounds %struct.econet_sock, %struct.econet_sock* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sockaddr_ec*, %struct.sockaddr_ec** %12, align 8
  %41 = getelementptr inbounds %struct.sockaddr_ec, %struct.sockaddr_ec* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.econet_sock*, %struct.econet_sock** %11, align 8
  %44 = getelementptr inbounds %struct.econet_sock, %struct.econet_sock* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sockaddr_ec*, %struct.sockaddr_ec** %12, align 8
  %47 = getelementptr inbounds %struct.sockaddr_ec, %struct.sockaddr_ec* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = call i32 @mutex_unlock(i32* @econet_mutex)
  %50 = load i32*, i32** %8, align 8
  store i32 16, i32* %50, align 4
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %20, %17
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @memset(%struct.sockaddr_ec*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.econet_sock* @ec_sk(%struct.sock*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
