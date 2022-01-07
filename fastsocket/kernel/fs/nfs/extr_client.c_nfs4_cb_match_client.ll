; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_client.c_nfs4_cb_match_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_client.c_nfs4_cb_match_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.nfs_client = type { i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@NFS_CS_READY = common dso_local global i64 0, align 8
@NFS_CS_SESSION_INITING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_cb_match_client(%struct.sockaddr* %0, %struct.nfs_client* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.nfs_client*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sockaddr*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %5, align 8
  store %struct.nfs_client* %1, %struct.nfs_client** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %10 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %9, i32 0, i32 3
  %11 = bitcast i32* %10 to %struct.sockaddr*
  store %struct.sockaddr* %11, %struct.sockaddr** %8, align 8
  %12 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %13 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NFS_CS_READY, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %3
  %18 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %19 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NFS_CS_SESSION_INITING, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %45

24:                                               ; preds = %17, %3
  %25 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %26 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 4
  br i1 %30, label %37, label %31

31:                                               ; preds = %24
  %32 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %33 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %24
  store i32 0, i32* %4, align 4
  br label %45

38:                                               ; preds = %31
  %39 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %40 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %41 = call i32 @nfs_sockaddr_match_ipaddr(%struct.sockaddr* %39, %struct.sockaddr* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %45

44:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %43, %37, %23
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @nfs_sockaddr_match_ipaddr(%struct.sockaddr*, %struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
