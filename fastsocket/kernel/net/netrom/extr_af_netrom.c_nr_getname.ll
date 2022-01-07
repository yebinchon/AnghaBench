; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_af_netrom.c_nr_getname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_af_netrom.c_nr_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }
%struct.sockaddr = type { i32 }
%struct.full_sockaddr_ax25 = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, i32, i8* }
%struct.nr_sock = type { i32, i32, i32 }

@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@AF_NETROM = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32*, i32)* @nr_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nr_getname(%struct.socket* %0, %struct.sockaddr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.full_sockaddr_ax25*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.nr_sock*, align 8
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %14 = bitcast %struct.sockaddr* %13 to %struct.full_sockaddr_ax25*
  store %struct.full_sockaddr_ax25* %14, %struct.full_sockaddr_ax25** %10, align 8
  %15 = load %struct.socket*, %struct.socket** %6, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %17, %struct.sock** %11, align 8
  %18 = load %struct.sock*, %struct.sock** %11, align 8
  %19 = call %struct.nr_sock* @nr_sk(%struct.sock* %18)
  store %struct.nr_sock* %19, %struct.nr_sock** %12, align 8
  %20 = load %struct.sock*, %struct.sock** %11, align 8
  %21 = call i32 @lock_sock(%struct.sock* %20)
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %61

24:                                               ; preds = %4
  %25 = load %struct.sock*, %struct.sock** %11, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TCP_ESTABLISHED, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.sock*, %struct.sock** %11, align 8
  %32 = call i32 @release_sock(%struct.sock* %31)
  %33 = load i32, i32* @ENOTCONN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %79

35:                                               ; preds = %24
  %36 = load i8*, i8** @AF_NETROM, align 8
  %37 = load %struct.full_sockaddr_ax25*, %struct.full_sockaddr_ax25** %10, align 8
  %38 = getelementptr inbounds %struct.full_sockaddr_ax25, %struct.full_sockaddr_ax25* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i8* %36, i8** %39, align 8
  %40 = load %struct.full_sockaddr_ax25*, %struct.full_sockaddr_ax25** %10, align 8
  %41 = getelementptr inbounds %struct.full_sockaddr_ax25, %struct.full_sockaddr_ax25* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.nr_sock*, %struct.nr_sock** %12, align 8
  %44 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.full_sockaddr_ax25*, %struct.full_sockaddr_ax25** %10, align 8
  %47 = getelementptr inbounds %struct.full_sockaddr_ax25, %struct.full_sockaddr_ax25* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load %struct.full_sockaddr_ax25*, %struct.full_sockaddr_ax25** %10, align 8
  %50 = getelementptr inbounds %struct.full_sockaddr_ax25, %struct.full_sockaddr_ax25* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @memset(i32* %51, i32 0, i32 8)
  %53 = load %struct.nr_sock*, %struct.nr_sock** %12, align 8
  %54 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.full_sockaddr_ax25*, %struct.full_sockaddr_ax25** %10, align 8
  %57 = getelementptr inbounds %struct.full_sockaddr_ax25, %struct.full_sockaddr_ax25* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 %55, i32* %59, align 4
  %60 = load i32*, i32** %8, align 8
  store i32 24, i32* %60, align 4
  br label %76

61:                                               ; preds = %4
  %62 = load i8*, i8** @AF_NETROM, align 8
  %63 = load %struct.full_sockaddr_ax25*, %struct.full_sockaddr_ax25** %10, align 8
  %64 = getelementptr inbounds %struct.full_sockaddr_ax25, %struct.full_sockaddr_ax25* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  store i8* %62, i8** %65, align 8
  %66 = load %struct.full_sockaddr_ax25*, %struct.full_sockaddr_ax25** %10, align 8
  %67 = getelementptr inbounds %struct.full_sockaddr_ax25, %struct.full_sockaddr_ax25* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  %69 = load %struct.nr_sock*, %struct.nr_sock** %12, align 8
  %70 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.full_sockaddr_ax25*, %struct.full_sockaddr_ax25** %10, align 8
  %73 = getelementptr inbounds %struct.full_sockaddr_ax25, %struct.full_sockaddr_ax25* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load i32*, i32** %8, align 8
  store i32 4, i32* %75, align 4
  br label %76

76:                                               ; preds = %61, %35
  %77 = load %struct.sock*, %struct.sock** %11, align 8
  %78 = call i32 @release_sock(%struct.sock* %77)
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %76, %30
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local %struct.nr_sock* @nr_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
