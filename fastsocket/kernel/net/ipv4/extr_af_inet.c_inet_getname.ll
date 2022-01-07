; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_af_inet.c_inet_getname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_af_inet.c_inet_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.inet_sock = type { i64, i64, i64, i64, i64 }
%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@AF_INET = common dso_local global i32 0, align 4
@TCPF_CLOSE = common dso_local global i32 0, align 4
@TCPF_SYN_SENT = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_getname(%struct.socket* %0, %struct.sockaddr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.inet_sock*, align 8
  %12 = alloca %struct.sockaddr_in*, align 8
  %13 = alloca i64, align 8
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.socket*, %struct.socket** %6, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %10, align 8
  %17 = load %struct.sock*, %struct.sock** %10, align 8
  %18 = call %struct.inet_sock* @inet_sk(%struct.sock* %17)
  store %struct.inet_sock* %18, %struct.inet_sock** %11, align 8
  %19 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %20 = bitcast %struct.sockaddr* %19 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %20, %struct.sockaddr_in** %12, align 8
  %21 = load i32, i32* @AF_INET, align 4
  %22 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %59

26:                                               ; preds = %4
  %27 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %28 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load %struct.sock*, %struct.sock** %10, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 1, %34
  %36 = load i32, i32* @TCPF_CLOSE, align 4
  %37 = load i32, i32* @TCPF_SYN_SENT, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %31
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %41, %26
  %45 = load i32, i32* @ENOTCONN, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %85

47:                                               ; preds = %41, %31
  %48 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %49 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %52 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  %53 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %54 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %57 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i64 %55, i64* %58, align 8
  br label %79

59:                                               ; preds = %4
  %60 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %61 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %13, align 8
  %63 = load i64, i64* %13, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %59
  %66 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %67 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %13, align 8
  br label %69

69:                                               ; preds = %65, %59
  %70 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %71 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %74 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  %75 = load i64, i64* %13, align 8
  %76 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %77 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i64 %75, i64* %78, align 8
  br label %79

79:                                               ; preds = %69, %47
  %80 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %81 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @memset(i32 %82, i32 0, i32 4)
  %84 = load i32*, i32** %8, align 8
  store i32 32, i32* %84, align 4
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %79, %44
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
