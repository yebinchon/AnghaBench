; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_client.c_nfs_start_lockd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_client.c_nfs_start_lockd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32, i32, %struct.nlm_host*, %struct.nfs_client* }
%struct.nlm_host = type { i32 }
%struct.nfs_client = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nlmclnt_initdata = type { i32, i32, i32, i32, %struct.sockaddr*, i32 }
%struct.sockaddr = type { i32 }

@NFS_MOUNT_NORESVPORT = common dso_local global i32 0, align 4
@NFS_MOUNT_LOCAL_FLOCK = common dso_local global i32 0, align 4
@NFS_MOUNT_LOCAL_FCNTL = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@nfs_destroy_server = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*)* @nfs_start_lockd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_start_lockd(%struct.nfs_server* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs_server*, align 8
  %4 = alloca %struct.nlm_host*, align 8
  %5 = alloca %struct.nfs_client*, align 8
  %6 = alloca %struct.nlmclnt_initdata, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %3, align 8
  %7 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %8 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %7, i32 0, i32 3
  %9 = load %struct.nfs_client*, %struct.nfs_client** %8, align 8
  store %struct.nfs_client* %9, %struct.nfs_client** %5, align 8
  %10 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %6, i32 0, i32 0
  %11 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %12 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 8
  %16 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %6, i32 0, i32 1
  %17 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %18 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @NFS_MOUNT_NORESVPORT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  store i32 %24, i32* %16, align 4
  %25 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %6, i32 0, i32 2
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %6, i32 0, i32 3
  %27 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %28 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %26, align 4
  %30 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %6, i32 0, i32 4
  %31 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %32 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %31, i32 0, i32 3
  %33 = bitcast i32* %32 to %struct.sockaddr*
  store %struct.sockaddr* %33, %struct.sockaddr** %30, align 8
  %34 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %6, i32 0, i32 5
  %35 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %36 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %34, align 8
  %38 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 3
  br i1 %40, label %41, label %42

41:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %82

42:                                               ; preds = %1
  %43 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %44 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @NFS_MOUNT_LOCAL_FLOCK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %51 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @NFS_MOUNT_LOCAL_FCNTL, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %82

57:                                               ; preds = %49, %42
  %58 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %59 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %61 [
    i32 128, label %64
  ]

61:                                               ; preds = %57
  %62 = load i32, i32* @IPPROTO_TCP, align 4
  %63 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %6, i32 0, i32 2
  store i32 %62, i32* %63, align 8
  br label %67

64:                                               ; preds = %57
  %65 = load i32, i32* @IPPROTO_UDP, align 4
  %66 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %6, i32 0, i32 2
  store i32 %65, i32* %66, align 8
  br label %67

67:                                               ; preds = %64, %61
  %68 = call %struct.nlm_host* @nlmclnt_init(%struct.nlmclnt_initdata* %6)
  store %struct.nlm_host* %68, %struct.nlm_host** %4, align 8
  %69 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %70 = call i64 @IS_ERR(%struct.nlm_host* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %74 = call i32 @PTR_ERR(%struct.nlm_host* %73)
  store i32 %74, i32* %2, align 4
  br label %82

75:                                               ; preds = %67
  %76 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %77 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %78 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %77, i32 0, i32 2
  store %struct.nlm_host* %76, %struct.nlm_host** %78, align 8
  %79 = load i32, i32* @nfs_destroy_server, align 4
  %80 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %81 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %75, %72, %56, %41
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.nlm_host* @nlmclnt_init(%struct.nlmclnt_initdata*) #1

declare dso_local i64 @IS_ERR(%struct.nlm_host*) #1

declare dso_local i32 @PTR_ERR(%struct.nlm_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
