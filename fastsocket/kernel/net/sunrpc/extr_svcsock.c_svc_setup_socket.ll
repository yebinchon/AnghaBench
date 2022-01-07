; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcsock.c_svc_setup_socket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcsock.c_svc_setup_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_sock = type { %struct.sock*, %struct.socket*, i32, i32, i32 }
%struct.sock = type { i32, i32, i32, %struct.svc_sock*, i32, i32 }
%struct.svc_serv = type { i32 }
%struct.socket = type { i64, %struct.sock* }
%struct.TYPE_2__ = type { i32 }

@SVC_SOCK_ANONYMOUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"svc: svc_setup_socket %p\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"svc: svc_setup_socket created %p (inet %p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.svc_sock* (%struct.svc_serv*, %struct.socket*, i32*, i32)* @svc_setup_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.svc_sock* @svc_setup_socket(%struct.svc_serv* %0, %struct.socket* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.svc_sock*, align 8
  %6 = alloca %struct.svc_serv*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.svc_sock*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca i32, align 4
  store %struct.svc_serv* %0, %struct.svc_serv** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @SVC_SOCK_ANONYMOUS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %12, align 4
  %19 = load %struct.socket*, %struct.socket** %7, align 8
  %20 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.socket* %19)
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.svc_sock* @kzalloc(i32 32, i32 %21)
  store %struct.svc_sock* %22, %struct.svc_sock** %10, align 8
  %23 = icmp ne %struct.svc_sock* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = load i32*, i32** %8, align 8
  store i32 %26, i32* %27, align 4
  store %struct.svc_sock* null, %struct.svc_sock** %5, align 8
  br label %117

28:                                               ; preds = %4
  %29 = load %struct.socket*, %struct.socket** %7, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 1
  %31 = load %struct.sock*, %struct.sock** %30, align 8
  store %struct.sock* %31, %struct.sock** %11, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %28
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load %struct.svc_serv*, %struct.svc_serv** %6, align 8
  %40 = load %struct.sock*, %struct.sock** %11, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sock*, %struct.sock** %11, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.sock*, %struct.sock** %11, align 8
  %47 = call %struct.TYPE_2__* @inet_sk(%struct.sock* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ntohs(i32 %49)
  %51 = call i32 @svc_register(%struct.svc_serv* %39, i32 %42, i32 %45, i32 %50)
  %52 = load i32*, i32** %8, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %38, %35, %28
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load %struct.svc_sock*, %struct.svc_sock** %10, align 8
  %59 = call i32 @kfree(%struct.svc_sock* %58)
  store %struct.svc_sock* null, %struct.svc_sock** %5, align 8
  br label %117

60:                                               ; preds = %53
  %61 = load %struct.svc_sock*, %struct.svc_sock** %10, align 8
  %62 = load %struct.sock*, %struct.sock** %11, align 8
  %63 = getelementptr inbounds %struct.sock, %struct.sock* %62, i32 0, i32 3
  store %struct.svc_sock* %61, %struct.svc_sock** %63, align 8
  %64 = load %struct.socket*, %struct.socket** %7, align 8
  %65 = load %struct.svc_sock*, %struct.svc_sock** %10, align 8
  %66 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %65, i32 0, i32 1
  store %struct.socket* %64, %struct.socket** %66, align 8
  %67 = load %struct.sock*, %struct.sock** %11, align 8
  %68 = load %struct.svc_sock*, %struct.svc_sock** %10, align 8
  %69 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %68, i32 0, i32 0
  store %struct.sock* %67, %struct.sock** %69, align 8
  %70 = load %struct.sock*, %struct.sock** %11, align 8
  %71 = getelementptr inbounds %struct.sock, %struct.sock* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.svc_sock*, %struct.svc_sock** %10, align 8
  %74 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = load %struct.sock*, %struct.sock** %11, align 8
  %76 = getelementptr inbounds %struct.sock, %struct.sock* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.svc_sock*, %struct.svc_sock** %10, align 8
  %79 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.sock*, %struct.sock** %11, align 8
  %81 = getelementptr inbounds %struct.sock, %struct.sock* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.svc_sock*, %struct.svc_sock** %10, align 8
  %84 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.socket*, %struct.socket** %7, align 8
  %86 = getelementptr inbounds %struct.socket, %struct.socket* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @SOCK_DGRAM, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %60
  %91 = load %struct.svc_sock*, %struct.svc_sock** %10, align 8
  %92 = load %struct.svc_serv*, %struct.svc_serv** %6, align 8
  %93 = call i32 @svc_udp_init(%struct.svc_sock* %91, %struct.svc_serv* %92)
  br label %110

94:                                               ; preds = %60
  %95 = load %struct.svc_sock*, %struct.svc_sock** %10, align 8
  %96 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %95, i32 0, i32 1
  %97 = load %struct.socket*, %struct.socket** %96, align 8
  %98 = load %struct.svc_serv*, %struct.svc_serv** %6, align 8
  %99 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 4, %100
  %102 = load %struct.svc_serv*, %struct.svc_serv** %6, align 8
  %103 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 4, %104
  %106 = call i32 @svc_sock_setbufsize(%struct.socket* %97, i32 %101, i32 %105)
  %107 = load %struct.svc_sock*, %struct.svc_sock** %10, align 8
  %108 = load %struct.svc_serv*, %struct.svc_serv** %6, align 8
  %109 = call i32 @svc_tcp_init(%struct.svc_sock* %107, %struct.svc_serv* %108)
  br label %110

110:                                              ; preds = %94, %90
  %111 = load %struct.svc_sock*, %struct.svc_sock** %10, align 8
  %112 = load %struct.svc_sock*, %struct.svc_sock** %10, align 8
  %113 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %112, i32 0, i32 0
  %114 = load %struct.sock*, %struct.sock** %113, align 8
  %115 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), %struct.svc_sock* %111, %struct.sock* %114)
  %116 = load %struct.svc_sock*, %struct.svc_sock** %10, align 8
  store %struct.svc_sock* %116, %struct.svc_sock** %5, align 8
  br label %117

117:                                              ; preds = %110, %57, %24
  %118 = load %struct.svc_sock*, %struct.svc_sock** %5, align 8
  ret %struct.svc_sock* %118
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local %struct.svc_sock* @kzalloc(i32, i32) #1

declare dso_local i32 @svc_register(%struct.svc_serv*, i32, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.TYPE_2__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @kfree(%struct.svc_sock*) #1

declare dso_local i32 @svc_udp_init(%struct.svc_sock*, %struct.svc_serv*) #1

declare dso_local i32 @svc_sock_setbufsize(%struct.socket*, i32, i32) #1

declare dso_local i32 @svc_tcp_init(%struct.svc_sock*, %struct.svc_serv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
