; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_raw.c_raw_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_raw.c_raw_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.sockaddr = type { i32 }
%struct.inet_sock = type { i64, i64 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i64 0, align 8
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@RTN_LOCAL = common dso_local global i32 0, align 4
@RTN_MULTICAST = common dso_local global i32 0, align 4
@RTN_BROADCAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sockaddr*, i32)* @raw_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_bind(%struct.sock* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inet_sock*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.inet_sock* @inet_sk(%struct.sock* %11)
  store %struct.inet_sock* %12, %struct.inet_sock** %7, align 8
  %13 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %14 = bitcast %struct.sockaddr* %13 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %14, %struct.sockaddr_in** %8, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TCP_CLOSE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 8
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %3
  br label %77

27:                                               ; preds = %22
  %28 = load %struct.sock*, %struct.sock** %4, align 8
  %29 = call i32 @sock_net(%struct.sock* %28)
  %30 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @inet_addr_type(i32 %29, i64 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* @EADDRNOTAVAIL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %9, align 4
  %37 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %27
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @RTN_LOCAL, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @RTN_MULTICAST, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @RTN_BROADCAST, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %77

55:                                               ; preds = %50, %46, %42, %27
  %56 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %57 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %61 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %63 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %62, i32 0, i32 1
  store i64 %59, i64* %63, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @RTN_MULTICAST, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %55
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @RTN_BROADCAST, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67, %55
  %72 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %73 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %71, %67
  %75 = load %struct.sock*, %struct.sock** %4, align 8
  %76 = call i32 @sk_dst_reset(%struct.sock* %75)
  store i32 0, i32* %9, align 4
  br label %77

77:                                               ; preds = %74, %54, %26
  %78 = load i32, i32* %9, align 4
  ret i32 %78
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @inet_addr_type(i32, i64) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @sk_dst_reset(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
