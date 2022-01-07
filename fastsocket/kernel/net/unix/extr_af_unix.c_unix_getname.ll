; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_af_unix.c_unix_getname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_af_unix.c_unix_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.unix_sock = type { %struct.unix_address* }
%struct.unix_address = type { i32, i32 }
%struct.sockaddr_un = type { i64*, i32 }

@ENOTCONN = common dso_local global i32 0, align 4
@AF_UNIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32*, i32)* @unix_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unix_getname(%struct.socket* %0, %struct.sockaddr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.unix_sock*, align 8
  %11 = alloca %struct.sockaddr_un*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.unix_address*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.socket*, %struct.socket** %5, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %9, align 8
  %17 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %18 = bitcast %struct.sockaddr* %17 to %struct.sockaddr_un*
  store %struct.sockaddr_un* %18, %struct.sockaddr_un** %11, align 8
  store i32 0, i32* %12, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %4
  %22 = load %struct.sock*, %struct.sock** %9, align 8
  %23 = call %struct.sock* @unix_peer_get(%struct.sock* %22)
  store %struct.sock* %23, %struct.sock** %9, align 8
  %24 = load i32, i32* @ENOTCONN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %12, align 4
  %26 = load %struct.sock*, %struct.sock** %9, align 8
  %27 = icmp ne %struct.sock* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %71

29:                                               ; preds = %21
  store i32 0, i32* %12, align 4
  br label %33

30:                                               ; preds = %4
  %31 = load %struct.sock*, %struct.sock** %9, align 8
  %32 = call i32 @sock_hold(%struct.sock* %31)
  br label %33

33:                                               ; preds = %30, %29
  %34 = load %struct.sock*, %struct.sock** %9, align 8
  %35 = call %struct.unix_sock* @unix_sk(%struct.sock* %34)
  store %struct.unix_sock* %35, %struct.unix_sock** %10, align 8
  %36 = load %struct.sock*, %struct.sock** %9, align 8
  %37 = call i32 @unix_state_lock(%struct.sock* %36)
  %38 = load %struct.unix_sock*, %struct.unix_sock** %10, align 8
  %39 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %38, i32 0, i32 0
  %40 = load %struct.unix_address*, %struct.unix_address** %39, align 8
  %41 = icmp ne %struct.unix_address* %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* @AF_UNIX, align 4
  %44 = load %struct.sockaddr_un*, %struct.sockaddr_un** %11, align 8
  %45 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.sockaddr_un*, %struct.sockaddr_un** %11, align 8
  %47 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  store i64 0, i64* %49, align 8
  %50 = load i32*, i32** %7, align 8
  store i32 2, i32* %50, align 4
  br label %66

51:                                               ; preds = %33
  %52 = load %struct.unix_sock*, %struct.unix_sock** %10, align 8
  %53 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %52, i32 0, i32 0
  %54 = load %struct.unix_address*, %struct.unix_address** %53, align 8
  store %struct.unix_address* %54, %struct.unix_address** %13, align 8
  %55 = load %struct.unix_address*, %struct.unix_address** %13, align 8
  %56 = getelementptr inbounds %struct.unix_address, %struct.unix_address* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  %59 = load %struct.sockaddr_un*, %struct.sockaddr_un** %11, align 8
  %60 = load %struct.unix_address*, %struct.unix_address** %13, align 8
  %61 = getelementptr inbounds %struct.unix_address, %struct.unix_address* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @memcpy(%struct.sockaddr_un* %59, i32 %62, i32 %64)
  br label %66

66:                                               ; preds = %51, %42
  %67 = load %struct.sock*, %struct.sock** %9, align 8
  %68 = call i32 @unix_state_unlock(%struct.sock* %67)
  %69 = load %struct.sock*, %struct.sock** %9, align 8
  %70 = call i32 @sock_put(%struct.sock* %69)
  br label %71

71:                                               ; preds = %66, %28
  %72 = load i32, i32* %12, align 4
  ret i32 %72
}

declare dso_local %struct.sock* @unix_peer_get(%struct.sock*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local %struct.unix_sock* @unix_sk(%struct.sock*) #1

declare dso_local i32 @unix_state_lock(%struct.sock*) #1

declare dso_local i32 @memcpy(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i32 @unix_state_unlock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
