; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_bcm.c_bcm_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_bcm.c_bcm_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_can = type { i64 }
%struct.bcm_sock = type { i32, i32, i32, i64 }
%struct.net_device = type { i64, i64 }

@EISCONN = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ARPHRD_CAN = common dso_local global i64 0, align 8
@proc_dir = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@bcm_proc_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* @bcm_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_connect(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_can*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.bcm_sock*, align 8
  %13 = alloca %struct.net_device*, align 8
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %15 = bitcast %struct.sockaddr* %14 to %struct.sockaddr_can*
  store %struct.sockaddr_can* %15, %struct.sockaddr_can** %10, align 8
  %16 = load %struct.socket*, %struct.socket** %6, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %11, align 8
  %19 = load %struct.sock*, %struct.sock** %11, align 8
  %20 = call %struct.bcm_sock* @bcm_sk(%struct.sock* %19)
  store %struct.bcm_sock* %20, %struct.bcm_sock** %12, align 8
  %21 = load %struct.bcm_sock*, %struct.bcm_sock** %12, align 8
  %22 = getelementptr inbounds %struct.bcm_sock, %struct.bcm_sock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EISCONN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %86

28:                                               ; preds = %4
  %29 = load %struct.sockaddr_can*, %struct.sockaddr_can** %10, align 8
  %30 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %62

33:                                               ; preds = %28
  %34 = load %struct.sockaddr_can*, %struct.sockaddr_can** %10, align 8
  %35 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call %struct.net_device* @dev_get_by_index(i32* @init_net, i64 %36)
  store %struct.net_device* %37, %struct.net_device** %13, align 8
  %38 = load %struct.net_device*, %struct.net_device** %13, align 8
  %39 = icmp ne %struct.net_device* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %86

43:                                               ; preds = %33
  %44 = load %struct.net_device*, %struct.net_device** %13, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ARPHRD_CAN, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.net_device*, %struct.net_device** %13, align 8
  %51 = call i32 @dev_put(%struct.net_device* %50)
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %86

54:                                               ; preds = %43
  %55 = load %struct.net_device*, %struct.net_device** %13, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.bcm_sock*, %struct.bcm_sock** %12, align 8
  %59 = getelementptr inbounds %struct.bcm_sock, %struct.bcm_sock* %58, i32 0, i32 3
  store i64 %57, i64* %59, align 8
  %60 = load %struct.net_device*, %struct.net_device** %13, align 8
  %61 = call i32 @dev_put(%struct.net_device* %60)
  br label %65

62:                                               ; preds = %28
  %63 = load %struct.bcm_sock*, %struct.bcm_sock** %12, align 8
  %64 = getelementptr inbounds %struct.bcm_sock, %struct.bcm_sock* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %62, %54
  %66 = load %struct.bcm_sock*, %struct.bcm_sock** %12, align 8
  %67 = getelementptr inbounds %struct.bcm_sock, %struct.bcm_sock* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load i64, i64* @proc_dir, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %65
  %71 = load %struct.bcm_sock*, %struct.bcm_sock** %12, align 8
  %72 = getelementptr inbounds %struct.bcm_sock, %struct.bcm_sock* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.sock*, %struct.sock** %11, align 8
  %75 = call i32 @sock_i_ino(%struct.sock* %74)
  %76 = call i32 @sprintf(i32 %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load %struct.bcm_sock*, %struct.bcm_sock** %12, align 8
  %78 = getelementptr inbounds %struct.bcm_sock, %struct.bcm_sock* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* @proc_dir, align 8
  %81 = load %struct.sock*, %struct.sock** %11, align 8
  %82 = call i32 @proc_create_data(i32 %79, i32 420, i64 %80, i32* @bcm_proc_fops, %struct.sock* %81)
  %83 = load %struct.bcm_sock*, %struct.bcm_sock** %12, align 8
  %84 = getelementptr inbounds %struct.bcm_sock, %struct.bcm_sock* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %70, %65
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %49, %40, %25
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local %struct.bcm_sock* @bcm_sk(%struct.sock*) #1

declare dso_local %struct.net_device* @dev_get_by_index(i32*, i64) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @sock_i_ino(%struct.sock*) #1

declare dso_local i32 @proc_create_data(i32, i32, i64, i32*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
