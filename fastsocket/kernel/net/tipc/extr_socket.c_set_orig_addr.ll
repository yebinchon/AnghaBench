; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_set_orig_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_set_orig_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32, i64 }
%struct.tipc_msg = type { i32 }
%struct.sockaddr_tipc = type { i64, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }

@AF_TIPC = common dso_local global i32 0, align 4
@TIPC_ADDR_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msghdr*, %struct.tipc_msg*)* @set_orig_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_orig_addr(%struct.msghdr* %0, %struct.tipc_msg* %1) #0 {
  %3 = alloca %struct.msghdr*, align 8
  %4 = alloca %struct.tipc_msg*, align 8
  %5 = alloca %struct.sockaddr_tipc*, align 8
  store %struct.msghdr* %0, %struct.msghdr** %3, align 8
  store %struct.tipc_msg* %1, %struct.tipc_msg** %4, align 8
  %6 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %7 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.sockaddr_tipc*
  store %struct.sockaddr_tipc* %9, %struct.sockaddr_tipc** %5, align 8
  %10 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %5, align 8
  %11 = icmp ne %struct.sockaddr_tipc* %10, null
  br i1 %11, label %12, label %39

12:                                               ; preds = %2
  %13 = load i32, i32* @AF_TIPC, align 4
  %14 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %5, align 8
  %15 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @TIPC_ADDR_ID, align 4
  %17 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %5, align 8
  %18 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.tipc_msg*, %struct.tipc_msg** %4, align 8
  %20 = call i32 @msg_origport(%struct.tipc_msg* %19)
  %21 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %5, align 8
  %22 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 %20, i32* %24, align 4
  %25 = load %struct.tipc_msg*, %struct.tipc_msg** %4, align 8
  %26 = call i32 @msg_orignode(%struct.tipc_msg* %25)
  %27 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %5, align 8
  %28 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 8
  %31 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %5, align 8
  %32 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %5, align 8
  %36 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %38 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %37, i32 0, i32 0
  store i32 32, i32* %38, align 8
  br label %39

39:                                               ; preds = %12, %2
  ret void
}

declare dso_local i32 @msg_origport(%struct.tipc_msg*) #1

declare dso_local i32 @msg_orignode(%struct.tipc_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
