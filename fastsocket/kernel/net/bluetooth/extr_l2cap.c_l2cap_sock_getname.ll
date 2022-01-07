; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_sock_getname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_sock_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_l2 = type { i8*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"sock %p, sk %p\00", align 1
@AF_BLUETOOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32*, i32)* @l2cap_sock_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_sock_getname(%struct.socket* %0, %struct.sockaddr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_l2*, align 8
  %10 = alloca %struct.sock*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %12 = bitcast %struct.sockaddr* %11 to %struct.sockaddr_l2*
  store %struct.sockaddr_l2* %12, %struct.sockaddr_l2** %9, align 8
  %13 = load %struct.socket*, %struct.socket** %5, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 0
  %15 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %15, %struct.sock** %10, align 8
  %16 = load %struct.socket*, %struct.socket** %5, align 8
  %17 = load %struct.sock*, %struct.sock** %10, align 8
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.socket* %16, %struct.sock* %17)
  %19 = load %struct.sockaddr_l2*, %struct.sockaddr_l2** %9, align 8
  %20 = call i32 @memset(%struct.sockaddr_l2* %19, i32 0, i32 16)
  %21 = load i32, i32* @AF_BLUETOOTH, align 4
  %22 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %23 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32*, i32** %7, align 8
  store i32 16, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %4
  %28 = load %struct.sock*, %struct.sock** %10, align 8
  %29 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %28)
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sockaddr_l2*, %struct.sockaddr_l2** %9, align 8
  %33 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.sockaddr_l2*, %struct.sockaddr_l2** %9, align 8
  %35 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %34, i32 0, i32 1
  %36 = load %struct.sock*, %struct.sock** %10, align 8
  %37 = call %struct.TYPE_4__* @bt_sk(%struct.sock* %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = call i32 @bacpy(i32* %35, i32* %38)
  %40 = load %struct.sock*, %struct.sock** %10, align 8
  %41 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %40)
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @cpu_to_le16(i32 %43)
  %45 = load %struct.sockaddr_l2*, %struct.sockaddr_l2** %9, align 8
  %46 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  br label %67

47:                                               ; preds = %4
  %48 = load %struct.sock*, %struct.sock** %10, align 8
  %49 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %48)
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sockaddr_l2*, %struct.sockaddr_l2** %9, align 8
  %53 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.sockaddr_l2*, %struct.sockaddr_l2** %9, align 8
  %55 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %54, i32 0, i32 1
  %56 = load %struct.sock*, %struct.sock** %10, align 8
  %57 = call %struct.TYPE_4__* @bt_sk(%struct.sock* %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = call i32 @bacpy(i32* %55, i32* %58)
  %60 = load %struct.sock*, %struct.sock** %10, align 8
  %61 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %60)
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @cpu_to_le16(i32 %63)
  %65 = load %struct.sockaddr_l2*, %struct.sockaddr_l2** %9, align 8
  %66 = getelementptr inbounds %struct.sockaddr_l2, %struct.sockaddr_l2* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %47, %27
  ret i32 0
}

declare dso_local i32 @BT_DBG(i8*, %struct.socket*, %struct.sock*) #1

declare dso_local i32 @memset(%struct.sockaddr_l2*, i32, i32) #1

declare dso_local %struct.TYPE_3__* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @bt_sk(%struct.sock*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
