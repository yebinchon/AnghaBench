; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_ddp.c_atalk_getname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_ddp.c_atalk_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_at = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.atalk_sock = type { i32, i32, i32, i32, i32, i32 }

@SOCK_ZAPPED = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@AF_APPLETALK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32*, i32)* @atalk_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atalk_getname(%struct.socket* %0, %struct.sockaddr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_at, align 4
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.atalk_sock*, align 8
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.socket*, %struct.socket** %6, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 0
  %15 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %15, %struct.sock** %11, align 8
  %16 = load %struct.sock*, %struct.sock** %11, align 8
  %17 = call %struct.atalk_sock* @at_sk(%struct.sock* %16)
  store %struct.atalk_sock* %17, %struct.atalk_sock** %12, align 8
  %18 = load %struct.sock*, %struct.sock** %11, align 8
  %19 = load i32, i32* @SOCK_ZAPPED, align 4
  %20 = call i64 @sock_flag(%struct.sock* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %4
  %23 = load %struct.sock*, %struct.sock** %11, align 8
  %24 = call i64 @atalk_autobind(%struct.sock* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @ENOBUFS, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %80

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %4
  %31 = load i32*, i32** %8, align 8
  store i32 20, i32* %31, align 4
  %32 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %10, i32 0, i32 3
  %33 = call i32 @memset(i32* %32, i32 0, i32 4)
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %30
  %37 = load %struct.sock*, %struct.sock** %11, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TCP_ESTABLISHED, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOTCONN, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %80

45:                                               ; preds = %36
  %46 = load %struct.atalk_sock*, %struct.atalk_sock** %12, align 8
  %47 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %10, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.atalk_sock*, %struct.atalk_sock** %12, align 8
  %52 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %10, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.atalk_sock*, %struct.atalk_sock** %12, align 8
  %57 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %10, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  br label %75

60:                                               ; preds = %30
  %61 = load %struct.atalk_sock*, %struct.atalk_sock** %12, align 8
  %62 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %10, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.atalk_sock*, %struct.atalk_sock** %12, align 8
  %67 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %10, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.atalk_sock*, %struct.atalk_sock** %12, align 8
  %72 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %10, i32 0, i32 1
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %60, %45
  %76 = load i32, i32* @AF_APPLETALK, align 4
  %77 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %10, i32 0, i32 0
  store i32 %76, i32* %77, align 4
  %78 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %79 = call i32 @memcpy(%struct.sockaddr* %78, %struct.sockaddr_at* %10, i32 20)
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %75, %42, %26
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.atalk_sock* @at_sk(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i64 @atalk_autobind(%struct.sock*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.sockaddr*, %struct.sockaddr_at*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
