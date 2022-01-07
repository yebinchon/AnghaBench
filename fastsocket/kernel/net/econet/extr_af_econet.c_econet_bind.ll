; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/econet/extr_af_econet.c_econet_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/econet/extr_af_econet.c_econet_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_ec = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.econet_sock = type { i32, i32, i32, i32 }

@AF_ECONET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@econet_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @econet_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @econet_bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_ec*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.econet_sock*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %12 = bitcast %struct.sockaddr* %11 to %struct.sockaddr_ec*
  store %struct.sockaddr_ec* %12, %struct.sockaddr_ec** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 24
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load %struct.sockaddr_ec*, %struct.sockaddr_ec** %8, align 8
  %18 = getelementptr inbounds %struct.sockaddr_ec, %struct.sockaddr_ec* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AF_ECONET, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16, %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %55

25:                                               ; preds = %16
  %26 = call i32 @mutex_lock(i32* @econet_mutex)
  %27 = load %struct.socket*, %struct.socket** %5, align 8
  %28 = getelementptr inbounds %struct.socket, %struct.socket* %27, i32 0, i32 0
  %29 = load %struct.sock*, %struct.sock** %28, align 8
  store %struct.sock* %29, %struct.sock** %9, align 8
  %30 = load %struct.sock*, %struct.sock** %9, align 8
  %31 = call %struct.econet_sock* @ec_sk(%struct.sock* %30)
  store %struct.econet_sock* %31, %struct.econet_sock** %10, align 8
  %32 = load %struct.sockaddr_ec*, %struct.sockaddr_ec** %8, align 8
  %33 = getelementptr inbounds %struct.sockaddr_ec, %struct.sockaddr_ec* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.econet_sock*, %struct.econet_sock** %10, align 8
  %36 = getelementptr inbounds %struct.econet_sock, %struct.econet_sock* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.sockaddr_ec*, %struct.sockaddr_ec** %8, align 8
  %38 = getelementptr inbounds %struct.sockaddr_ec, %struct.sockaddr_ec* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.econet_sock*, %struct.econet_sock** %10, align 8
  %41 = getelementptr inbounds %struct.econet_sock, %struct.econet_sock* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.sockaddr_ec*, %struct.sockaddr_ec** %8, align 8
  %43 = getelementptr inbounds %struct.sockaddr_ec, %struct.sockaddr_ec* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.econet_sock*, %struct.econet_sock** %10, align 8
  %47 = getelementptr inbounds %struct.econet_sock, %struct.econet_sock* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.sockaddr_ec*, %struct.sockaddr_ec** %8, align 8
  %49 = getelementptr inbounds %struct.sockaddr_ec, %struct.sockaddr_ec* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.econet_sock*, %struct.econet_sock** %10, align 8
  %53 = getelementptr inbounds %struct.econet_sock, %struct.econet_sock* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = call i32 @mutex_unlock(i32* @econet_mutex)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %25, %22
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.econet_sock* @ec_sk(%struct.sock*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
