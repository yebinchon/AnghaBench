; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_tipc = type { i64, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_TIPC = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@TIPC_ADDR_NAME = common dso_local global i64 0, align 8
@TIPC_ADDR_NAMESEQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_tipc*, align 8
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %11 = bitcast %struct.sockaddr* %10 to %struct.sockaddr_tipc*
  store %struct.sockaddr_tipc* %11, %struct.sockaddr_tipc** %8, align 8
  %12 = load %struct.socket*, %struct.socket** %5, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_7__* @tipc_sk_port(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @tipc_withdraw(i32 %25, i32 0, %struct.TYPE_6__* null)
  store i32 %26, i32* %4, align 4
  br label %95

27:                                               ; preds = %3
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %29, 32
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %95

34:                                               ; preds = %27
  %35 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %8, align 8
  %36 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AF_TIPC, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EAFNOSUPPORT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %95

43:                                               ; preds = %34
  %44 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %8, align 8
  %45 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @TIPC_ADDR_NAME, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %8, align 8
  %51 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %8, align 8
  %56 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i32 %54, i32* %58, align 4
  br label %69

59:                                               ; preds = %43
  %60 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %8, align 8
  %61 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TIPC_ADDR_NAMESEQ, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @EAFNOSUPPORT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %95

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %49
  %70 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %8, align 8
  %71 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %8, align 8
  %77 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %8, align 8
  %80 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = call i32 @tipc_publish(i32 %75, i32 %78, %struct.TYPE_6__* %81)
  br label %93

83:                                               ; preds = %69
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %8, align 8
  %86 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 0, %87
  %89 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %8, align 8
  %90 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = call i32 @tipc_withdraw(i32 %84, i32 %88, %struct.TYPE_6__* %91)
  br label %93

93:                                               ; preds = %83, %74
  %94 = phi i32 [ %82, %74 ], [ %92, %83 ]
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %93, %65, %40, %31, %24
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.TYPE_7__* @tipc_sk_port(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tipc_withdraw(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @tipc_publish(i32, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
