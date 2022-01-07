; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_dest_name_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_dest_name_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_tipc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.msghdr = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.tipc_cfg_msg_hdr = type { i32 }

@TIPC_RESERVED_TYPES = common dso_local global i64 0, align 8
@TIPC_TOP_SRV = common dso_local global i64 0, align 8
@TIPC_CFG_SRV = common dso_local global i64 0, align 8
@EACCES = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_tipc*, %struct.msghdr*)* @dest_name_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dest_name_check(%struct.sockaddr_tipc* %0, %struct.msghdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_tipc*, align 8
  %5 = alloca %struct.msghdr*, align 8
  %6 = alloca %struct.tipc_cfg_msg_hdr, align 4
  store %struct.sockaddr_tipc* %0, %struct.sockaddr_tipc** %4, align 8
  store %struct.msghdr* %1, %struct.msghdr** %5, align 8
  %7 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %4, align 8
  %8 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TIPC_RESERVED_TYPES, align 8
  %14 = icmp sge i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %73

19:                                               ; preds = %2
  %20 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %4, align 8
  %21 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TIPC_TOP_SRV, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @likely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %73

32:                                               ; preds = %19
  %33 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %4, align 8
  %34 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TIPC_CFG_SRV, align 8
  %40 = icmp ne i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @likely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load i32, i32* @EACCES, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %73

47:                                               ; preds = %32
  %48 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %49 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @copy_from_user(%struct.tipc_cfg_msg_hdr* %6, i32 %53, i32 4)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32, i32* @EFAULT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %73

59:                                               ; preds = %47
  %60 = getelementptr inbounds %struct.tipc_cfg_msg_hdr, %struct.tipc_cfg_msg_hdr* %6, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ntohs(i32 %61)
  %63 = and i32 %62, 49152
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load i32, i32* @CAP_NET_ADMIN, align 4
  %67 = call i32 @capable(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @EACCES, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %73

72:                                               ; preds = %65, %59
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %69, %56, %44, %31, %18
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @copy_from_user(%struct.tipc_cfg_msg_hdr*, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
