; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_netlink_getsockbyfilp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_netlink_getsockbyfilp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.file = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.TYPE_6__ = type { %struct.sock* }

@ENOTSOCK = common dso_local global i32 0, align 4
@AF_NETLINK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @netlink_getsockbyfilp(%struct.file* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.sock*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %4, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @S_ISSOCK(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOTSOCK, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.sock* @ERR_PTR(i32 %19)
  store %struct.sock* %20, %struct.sock** %2, align 8
  br label %39

21:                                               ; preds = %1
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = call %struct.TYPE_6__* @SOCKET_I(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.sock*, %struct.sock** %24, align 8
  store %struct.sock* %25, %struct.sock** %5, align 8
  %26 = load %struct.sock*, %struct.sock** %5, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AF_NETLINK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.sock* @ERR_PTR(i32 %33)
  store %struct.sock* %34, %struct.sock** %2, align 8
  br label %39

35:                                               ; preds = %21
  %36 = load %struct.sock*, %struct.sock** %5, align 8
  %37 = call i32 @sock_hold(%struct.sock* %36)
  %38 = load %struct.sock*, %struct.sock** %5, align 8
  store %struct.sock* %38, %struct.sock** %2, align 8
  br label %39

39:                                               ; preds = %35, %31, %17
  %40 = load %struct.sock*, %struct.sock** %2, align 8
  ret %struct.sock* %40
}

declare dso_local i32 @S_ISSOCK(i32) #1

declare dso_local %struct.sock* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_6__* @SOCKET_I(%struct.inode*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
