; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_sock.c_rfcomm_sock_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_sock.c_rfcomm_sock_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i64 }
%struct.sockaddr = type { i64 }
%struct.sockaddr_rc = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"sk %p %s\00", align 1
@AF_BLUETOOTH = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@BT_OPEN = common dso_local global i64 0, align 8
@EBADFD = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@rfcomm_sk_list = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@BT_BOUND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @rfcomm_sock_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_sock_bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_rc*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %12 = bitcast %struct.sockaddr* %11 to %struct.sockaddr_rc*
  store %struct.sockaddr_rc* %12, %struct.sockaddr_rc** %8, align 8
  %13 = load %struct.socket*, %struct.socket** %5, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 0
  %15 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %15, %struct.sock** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.sock*, %struct.sock** %9, align 8
  %17 = load %struct.sockaddr_rc*, %struct.sockaddr_rc** %8, align 8
  %18 = getelementptr inbounds %struct.sockaddr_rc, %struct.sockaddr_rc* %17, i32 0, i32 1
  %19 = call i32 @batostr(i32* %18)
  %20 = call i32 @BT_DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.sock* %16, i32 %19)
  %21 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %22 = icmp ne %struct.sockaddr* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %25 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AF_BLUETOOTH, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %91

32:                                               ; preds = %23
  %33 = load %struct.sock*, %struct.sock** %9, align 8
  %34 = call i32 @lock_sock(%struct.sock* %33)
  %35 = load %struct.sock*, %struct.sock** %9, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BT_OPEN, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @EBADFD, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %10, align 4
  br label %87

43:                                               ; preds = %32
  %44 = load %struct.sock*, %struct.sock** %9, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SOCK_STREAM, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %10, align 4
  br label %87

52:                                               ; preds = %43
  %53 = call i32 @write_lock_bh(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rfcomm_sk_list, i32 0, i32 0))
  %54 = load %struct.sockaddr_rc*, %struct.sockaddr_rc** %8, align 8
  %55 = getelementptr inbounds %struct.sockaddr_rc, %struct.sockaddr_rc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = load %struct.sockaddr_rc*, %struct.sockaddr_rc** %8, align 8
  %60 = getelementptr inbounds %struct.sockaddr_rc, %struct.sockaddr_rc* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.sockaddr_rc*, %struct.sockaddr_rc** %8, align 8
  %63 = getelementptr inbounds %struct.sockaddr_rc, %struct.sockaddr_rc* %62, i32 0, i32 1
  %64 = call i64 @__rfcomm_get_sock_by_addr(i64 %61, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i32, i32* @EADDRINUSE, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %10, align 4
  br label %85

69:                                               ; preds = %58, %52
  %70 = load %struct.sock*, %struct.sock** %9, align 8
  %71 = call %struct.TYPE_6__* @bt_sk(%struct.sock* %70)
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.sockaddr_rc*, %struct.sockaddr_rc** %8, align 8
  %74 = getelementptr inbounds %struct.sockaddr_rc, %struct.sockaddr_rc* %73, i32 0, i32 1
  %75 = call i32 @bacpy(i32* %72, i32* %74)
  %76 = load %struct.sockaddr_rc*, %struct.sockaddr_rc** %8, align 8
  %77 = getelementptr inbounds %struct.sockaddr_rc, %struct.sockaddr_rc* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.sock*, %struct.sock** %9, align 8
  %80 = call %struct.TYPE_5__* @rfcomm_pi(%struct.sock* %79)
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i64 %78, i64* %81, align 8
  %82 = load i64, i64* @BT_BOUND, align 8
  %83 = load %struct.sock*, %struct.sock** %9, align 8
  %84 = getelementptr inbounds %struct.sock, %struct.sock* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %69, %66
  %86 = call i32 @write_unlock_bh(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rfcomm_sk_list, i32 0, i32 0))
  br label %87

87:                                               ; preds = %85, %49, %40
  %88 = load %struct.sock*, %struct.sock** %9, align 8
  %89 = call i32 @release_sock(%struct.sock* %88)
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %87, %29
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @BT_DBG(i8*, %struct.sock*, i32) #1

declare dso_local i32 @batostr(i32*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i64 @__rfcomm_get_sock_by_addr(i64, i32*) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local %struct.TYPE_6__* @bt_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_5__* @rfcomm_pi(%struct.sock*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
