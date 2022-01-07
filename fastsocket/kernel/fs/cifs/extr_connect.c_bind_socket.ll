; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_bind_socket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_bind_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { %struct.TYPE_5__, %struct.socket* }
%struct.TYPE_5__ = type { i64 }
%struct.socket = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.socket*, %struct.sockaddr*, i32)* }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sockaddr_in6 = type { i64, i32 }

@AF_UNSPEC = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"cifs: Failed to bind to: %pI6c, error: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"cifs: Failed to bind to: %pI4, error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*)* @bind_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bind_socket(%struct.TCP_Server_Info* %0) #0 {
  %2 = alloca %struct.TCP_Server_Info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca %struct.sockaddr_in6*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %8 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @AF_UNSPEC, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %54

13:                                               ; preds = %1
  %14 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %15 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %14, i32 0, i32 1
  %16 = load %struct.socket*, %struct.socket** %15, align 8
  store %struct.socket* %16, %struct.socket** %4, align 8
  %17 = load %struct.socket*, %struct.socket** %4, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (%struct.socket*, %struct.sockaddr*, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i32)** %20, align 8
  %22 = load %struct.socket*, %struct.socket** %4, align 8
  %23 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %24 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %23, i32 0, i32 0
  %25 = bitcast %struct.TYPE_5__* %24 to %struct.sockaddr*
  %26 = call i32 %21(%struct.socket* %22, %struct.sockaddr* %25, i32 8)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %13
  %30 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %31 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %30, i32 0, i32 0
  %32 = bitcast %struct.TYPE_5__* %31 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %32, %struct.sockaddr_in** %5, align 8
  %33 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %34 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %33, i32 0, i32 0
  %35 = bitcast %struct.TYPE_5__* %34 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %35, %struct.sockaddr_in6** %6, align 8
  %36 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %37 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AF_INET6, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %29
  %42 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %43 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %42, i32 0, i32 1
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32* %43, i32 %44)
  br label %52

46:                                               ; preds = %29
  %47 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %48 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %46, %41
  br label %53

53:                                               ; preds = %52, %13
  br label %54

54:                                               ; preds = %53, %1
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @cERROR(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
