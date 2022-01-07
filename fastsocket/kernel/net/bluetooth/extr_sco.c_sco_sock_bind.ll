; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_sco.c_sco_sock_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_sco.c_sco_sock_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }
%struct.sockaddr = type { i64 }
%struct.sockaddr_sco = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"sk %p %s\00", align 1
@AF_BLUETOOTH = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@BT_OPEN = common dso_local global i64 0, align 8
@EBADFD = common dso_local global i32 0, align 4
@sco_sk_list = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@BDADDR_ANY = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@BT_BOUND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @sco_sock_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sco_sock_bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_sco*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %13 = bitcast %struct.sockaddr* %12 to %struct.sockaddr_sco*
  store %struct.sockaddr_sco* %13, %struct.sockaddr_sco** %8, align 8
  %14 = load %struct.socket*, %struct.socket** %5, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %9, align 8
  %17 = load %struct.sockaddr_sco*, %struct.sockaddr_sco** %8, align 8
  %18 = getelementptr inbounds %struct.sockaddr_sco, %struct.sockaddr_sco* %17, i32 0, i32 0
  store i32* %18, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.sock*, %struct.sock** %9, align 8
  %20 = load %struct.sockaddr_sco*, %struct.sockaddr_sco** %8, align 8
  %21 = getelementptr inbounds %struct.sockaddr_sco, %struct.sockaddr_sco* %20, i32 0, i32 0
  %22 = call i32 @batostr(i32* %21)
  %23 = call i32 @BT_DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.sock* %19, i32 %22)
  %24 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %25 = icmp ne %struct.sockaddr* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %28 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AF_BLUETOOTH, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26, %3
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %75

35:                                               ; preds = %26
  %36 = load %struct.sock*, %struct.sock** %9, align 8
  %37 = call i32 @lock_sock(%struct.sock* %36)
  %38 = load %struct.sock*, %struct.sock** %9, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BT_OPEN, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* @EBADFD, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %11, align 4
  br label %71

46:                                               ; preds = %35
  %47 = call i32 @write_lock_bh(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sco_sk_list, i32 0, i32 0))
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* @BDADDR_ANY, align 4
  %50 = call i64 @bacmp(i32* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load i32*, i32** %10, align 8
  %54 = call i64 @__sco_get_sock_by_addr(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @EADDRINUSE, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %11, align 4
  br label %69

59:                                               ; preds = %52, %46
  %60 = load %struct.sock*, %struct.sock** %9, align 8
  %61 = call %struct.TYPE_4__* @bt_sk(%struct.sock* %60)
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.sockaddr_sco*, %struct.sockaddr_sco** %8, align 8
  %64 = getelementptr inbounds %struct.sockaddr_sco, %struct.sockaddr_sco* %63, i32 0, i32 0
  %65 = call i32 @bacpy(i32* %62, i32* %64)
  %66 = load i64, i64* @BT_BOUND, align 8
  %67 = load %struct.sock*, %struct.sock** %9, align 8
  %68 = getelementptr inbounds %struct.sock, %struct.sock* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %59, %56
  %70 = call i32 @write_unlock_bh(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sco_sk_list, i32 0, i32 0))
  br label %71

71:                                               ; preds = %69, %43
  %72 = load %struct.sock*, %struct.sock** %9, align 8
  %73 = call i32 @release_sock(%struct.sock* %72)
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %71, %32
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @BT_DBG(i8*, %struct.sock*, i32) #1

declare dso_local i32 @batostr(i32*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i64 @bacmp(i32*, i32) #1

declare dso_local i64 @__sco_get_sock_by_addr(i32*) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @bt_sk(%struct.sock*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
