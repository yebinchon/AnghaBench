; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_iucv_sock_getname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_iucv_sock_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_iucv = type { i32, i32, i32, i32, i32 }
%struct.iucv_sock = type { i32, i32, i32, i32 }

@AF_IUCV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32*, i32)* @iucv_sock_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iucv_sock_getname(%struct.socket* %0, %struct.sockaddr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_iucv*, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.iucv_sock*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %13 = bitcast %struct.sockaddr* %12 to %struct.sockaddr_iucv*
  store %struct.sockaddr_iucv* %13, %struct.sockaddr_iucv** %9, align 8
  %14 = load %struct.socket*, %struct.socket** %5, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %10, align 8
  %17 = load %struct.sock*, %struct.sock** %10, align 8
  %18 = call %struct.iucv_sock* @iucv_sk(%struct.sock* %17)
  store %struct.iucv_sock* %18, %struct.iucv_sock** %11, align 8
  %19 = load i32, i32* @AF_IUCV, align 4
  %20 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %21 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32*, i32** %7, align 8
  store i32 20, i32* %22, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %4
  %26 = load %struct.sockaddr_iucv*, %struct.sockaddr_iucv** %9, align 8
  %27 = getelementptr inbounds %struct.sockaddr_iucv, %struct.sockaddr_iucv* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.iucv_sock*, %struct.iucv_sock** %11, align 8
  %30 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memcpy(i32 %28, i32 %31, i32 8)
  %33 = load %struct.sockaddr_iucv*, %struct.sockaddr_iucv** %9, align 8
  %34 = getelementptr inbounds %struct.sockaddr_iucv, %struct.sockaddr_iucv* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.iucv_sock*, %struct.iucv_sock** %11, align 8
  %37 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @memcpy(i32 %35, i32 %38, i32 8)
  br label %55

40:                                               ; preds = %4
  %41 = load %struct.sockaddr_iucv*, %struct.sockaddr_iucv** %9, align 8
  %42 = getelementptr inbounds %struct.sockaddr_iucv, %struct.sockaddr_iucv* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.iucv_sock*, %struct.iucv_sock** %11, align 8
  %45 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @memcpy(i32 %43, i32 %46, i32 8)
  %48 = load %struct.sockaddr_iucv*, %struct.sockaddr_iucv** %9, align 8
  %49 = getelementptr inbounds %struct.sockaddr_iucv, %struct.sockaddr_iucv* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.iucv_sock*, %struct.iucv_sock** %11, align 8
  %52 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @memcpy(i32 %50, i32 %53, i32 8)
  br label %55

55:                                               ; preds = %40, %25
  %56 = load %struct.sockaddr_iucv*, %struct.sockaddr_iucv** %9, align 8
  %57 = getelementptr inbounds %struct.sockaddr_iucv, %struct.sockaddr_iucv* %56, i32 0, i32 2
  %58 = call i32 @memset(i32* %57, i32 0, i32 4)
  %59 = load %struct.sockaddr_iucv*, %struct.sockaddr_iucv** %9, align 8
  %60 = getelementptr inbounds %struct.sockaddr_iucv, %struct.sockaddr_iucv* %59, i32 0, i32 1
  %61 = call i32 @memset(i32* %60, i32 0, i32 4)
  %62 = load %struct.sockaddr_iucv*, %struct.sockaddr_iucv** %9, align 8
  %63 = getelementptr inbounds %struct.sockaddr_iucv, %struct.sockaddr_iucv* %62, i32 0, i32 0
  %64 = call i32 @memset(i32* %63, i32 0, i32 4)
  ret i32 0
}

declare dso_local %struct.iucv_sock* @iucv_sk(%struct.sock*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
