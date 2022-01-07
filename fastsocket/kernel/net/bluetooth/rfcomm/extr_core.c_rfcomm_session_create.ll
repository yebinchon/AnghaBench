; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_session_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_session_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { i32 }
%struct.sockaddr_l2 = type { i64, i64, i8*, i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@AF_BLUETOOTH = common dso_local global i8* null, align 8
@l2cap_mtu = common dso_local global i32 0, align 4
@BT_BOUND = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RFCOMM_PSM = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rfcomm_session* (i32*, i32*, i32*)* @rfcomm_session_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rfcomm_session* @rfcomm_session_create(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.rfcomm_session*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.rfcomm_session*, align 8
  %9 = alloca %struct.sockaddr_l2, align 8
  %10 = alloca %struct.socket*, align 8
  %11 = alloca %struct.sock*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.rfcomm_session* null, %struct.rfcomm_session** %8, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @batostr(i32* %12)
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @batostr(i32* %14)
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %15)
  %17 = call i32 @rfcomm_l2sock_create(%struct.socket** %10)
  %18 = load i32*, i32** %7, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store %struct.rfcomm_session* null, %struct.rfcomm_session** %4, align 8
  br label %94

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %9, i32 0, i32 3
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @bacpy(i32* %24, i32* %25)
  %27 = load i8*, i8** @AF_BLUETOOTH, align 8
  %28 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %9, i32 0, i32 2
  store i8* %27, i8** %28, align 8
  %29 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %9, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %9, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.socket*, %struct.socket** %10, align 8
  %32 = bitcast %struct.sockaddr_l2* %9 to %struct.sockaddr*
  %33 = call i32 @kernel_bind(%struct.socket* %31, %struct.sockaddr* %32, i32 32)
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %23
  br label %91

39:                                               ; preds = %23
  %40 = load %struct.socket*, %struct.socket** %10, align 8
  %41 = getelementptr inbounds %struct.socket, %struct.socket* %40, i32 0, i32 0
  %42 = load %struct.sock*, %struct.sock** %41, align 8
  store %struct.sock* %42, %struct.sock** %11, align 8
  %43 = load %struct.sock*, %struct.sock** %11, align 8
  %44 = call i32 @lock_sock(%struct.sock* %43)
  %45 = load i32, i32* @l2cap_mtu, align 4
  %46 = load %struct.sock*, %struct.sock** %11, align 8
  %47 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load %struct.sock*, %struct.sock** %11, align 8
  %50 = call i32 @release_sock(%struct.sock* %49)
  %51 = load %struct.socket*, %struct.socket** %10, align 8
  %52 = load i32, i32* @BT_BOUND, align 4
  %53 = call %struct.rfcomm_session* @rfcomm_session_add(%struct.socket* %51, i32 %52)
  store %struct.rfcomm_session* %53, %struct.rfcomm_session** %8, align 8
  %54 = load %struct.rfcomm_session*, %struct.rfcomm_session** %8, align 8
  %55 = icmp ne %struct.rfcomm_session* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %39
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  br label %91

60:                                               ; preds = %39
  %61 = load %struct.rfcomm_session*, %struct.rfcomm_session** %8, align 8
  %62 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %61, i32 0, i32 0
  store i32 1, i32* %62, align 4
  %63 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %9, i32 0, i32 3
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @bacpy(i32* %63, i32* %64)
  %66 = load i8*, i8** @AF_BLUETOOTH, align 8
  %67 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %9, i32 0, i32 2
  store i8* %66, i8** %67, align 8
  %68 = load i32, i32* @RFCOMM_PSM, align 4
  %69 = call i64 @cpu_to_le16(i32 %68)
  %70 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %9, i32 0, i32 1
  store i64 %69, i64* %70, align 8
  %71 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %9, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load %struct.socket*, %struct.socket** %10, align 8
  %73 = bitcast %struct.sockaddr_l2* %9 to %struct.sockaddr*
  %74 = load i32, i32* @O_NONBLOCK, align 4
  %75 = call i32 @kernel_connect(%struct.socket* %72, %struct.sockaddr* %73, i32 32, i32 %74)
  %76 = load i32*, i32** %7, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %60
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @EINPROGRESS, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %80, %60
  %87 = load %struct.rfcomm_session*, %struct.rfcomm_session** %8, align 8
  store %struct.rfcomm_session* %87, %struct.rfcomm_session** %4, align 8
  br label %94

88:                                               ; preds = %80
  %89 = load %struct.rfcomm_session*, %struct.rfcomm_session** %8, align 8
  %90 = call i32 @rfcomm_session_del(%struct.rfcomm_session* %89)
  store %struct.rfcomm_session* null, %struct.rfcomm_session** %4, align 8
  br label %94

91:                                               ; preds = %56, %38
  %92 = load %struct.socket*, %struct.socket** %10, align 8
  %93 = call i32 @sock_release(%struct.socket* %92)
  store %struct.rfcomm_session* null, %struct.rfcomm_session** %4, align 8
  br label %94

94:                                               ; preds = %91, %88, %86, %22
  %95 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  ret %struct.rfcomm_session* %95
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @batostr(i32*) #1

declare dso_local i32 @rfcomm_l2sock_create(%struct.socket**) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @kernel_bind(%struct.socket*, %struct.sockaddr*, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local %struct.rfcomm_session* @rfcomm_session_add(%struct.socket*, i32) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @kernel_connect(%struct.socket*, %struct.sockaddr*, i32, i32) #1

declare dso_local i32 @rfcomm_session_del(%struct.rfcomm_session*) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
