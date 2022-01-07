; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_af_x25.c_x25_getname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_af_x25.c_x25_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_x25 = type { i32, i32 }
%struct.x25_sock = type { i32, i32 }

@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@AF_X25 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32*, i32)* @x25_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25_getname(%struct.socket* %0, %struct.sockaddr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_x25*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.x25_sock*, align 8
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %14 = bitcast %struct.sockaddr* %13 to %struct.sockaddr_x25*
  store %struct.sockaddr_x25* %14, %struct.sockaddr_x25** %10, align 8
  %15 = load %struct.socket*, %struct.socket** %6, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %17, %struct.sock** %11, align 8
  %18 = load %struct.sock*, %struct.sock** %11, align 8
  %19 = call %struct.x25_sock* @x25_sk(%struct.sock* %18)
  store %struct.x25_sock* %19, %struct.x25_sock** %12, align 8
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %4
  %23 = load %struct.sock*, %struct.sock** %11, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TCP_ESTABLISHED, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOTCONN, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %48

31:                                               ; preds = %22
  %32 = load %struct.x25_sock*, %struct.x25_sock** %12, align 8
  %33 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sockaddr_x25*, %struct.sockaddr_x25** %10, align 8
  %36 = getelementptr inbounds %struct.sockaddr_x25, %struct.sockaddr_x25* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %43

37:                                               ; preds = %4
  %38 = load %struct.x25_sock*, %struct.x25_sock** %12, align 8
  %39 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sockaddr_x25*, %struct.sockaddr_x25** %10, align 8
  %42 = getelementptr inbounds %struct.sockaddr_x25, %struct.sockaddr_x25* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %37, %31
  %44 = load i32, i32* @AF_X25, align 4
  %45 = load %struct.sockaddr_x25*, %struct.sockaddr_x25** %10, align 8
  %46 = getelementptr inbounds %struct.sockaddr_x25, %struct.sockaddr_x25* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32*, i32** %8, align 8
  store i32 8, i32* %47, align 4
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %43, %28
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
