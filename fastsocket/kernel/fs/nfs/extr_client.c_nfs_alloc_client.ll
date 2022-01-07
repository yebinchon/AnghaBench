; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_client.c_nfs_alloc_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_client.c_nfs_alloc_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i32, i64, %struct.rpc_cred*, i32, i32, i32, i32, i32, i32, %struct.nfs_client*, i32, i32, i32, i32, i32, i32, i32 }
%struct.rpc_cred = type { i32 }
%struct.nfs_client_initdata = type { i64, i32, i64, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NFS_CS_INITING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@NFS4CLNT_LEASE_EXPIRED = common dso_local global i32 0, align 4
@nfs4_renew_state = common dso_local global i32 0, align 4
@nfs_v4_minor_ops = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs_client* (%struct.nfs_client_initdata*)* @nfs_alloc_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs_client* @nfs_alloc_client(%struct.nfs_client_initdata* %0) #0 {
  %2 = alloca %struct.nfs_client*, align 8
  %3 = alloca %struct.nfs_client_initdata*, align 8
  %4 = alloca %struct.nfs_client*, align 8
  %5 = alloca %struct.rpc_cred*, align 8
  %6 = alloca i32, align 4
  store %struct.nfs_client_initdata* %0, %struct.nfs_client_initdata** %3, align 8
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.nfs_client* @kzalloc(i32 88, i32 %9)
  store %struct.nfs_client* %10, %struct.nfs_client** %4, align 8
  %11 = icmp eq %struct.nfs_client* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %88

13:                                               ; preds = %1
  %14 = load %struct.nfs_client_initdata*, %struct.nfs_client_initdata** %3, align 8
  %15 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %18 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %17, i32 0, i32 16
  store i32 %16, i32* %18, align 8
  %19 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %20 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %19, i32 0, i32 15
  %21 = call i32 @atomic_set(i32* %20, i32 1)
  %22 = load i32, i32* @NFS_CS_INITING, align 4
  %23 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %24 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %23, i32 0, i32 14
  store i32 %22, i32* %24, align 8
  %25 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %26 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %25, i32 0, i32 13
  %27 = load %struct.nfs_client_initdata*, %struct.nfs_client_initdata** %3, align 8
  %28 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nfs_client_initdata*, %struct.nfs_client_initdata** %3, align 8
  %31 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @memcpy(i32* %26, i32 %29, i32 %32)
  %34 = load %struct.nfs_client_initdata*, %struct.nfs_client_initdata** %3, align 8
  %35 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %38 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %37, i32 0, i32 12
  store i32 %36, i32* %38, align 8
  %39 = load %struct.nfs_client_initdata*, %struct.nfs_client_initdata** %3, align 8
  %40 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %13
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  %46 = load %struct.nfs_client_initdata*, %struct.nfs_client_initdata** %3, align 8
  %47 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i32 @kstrdup(i64 %48, i32 %49)
  %51 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %52 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %51, i32 0, i32 11
  store i32 %50, i32* %52, align 4
  %53 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %54 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %53, i32 0, i32 11
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %43
  br label %85

58:                                               ; preds = %43
  br label %59

59:                                               ; preds = %58, %13
  %60 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %61 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %60, i32 0, i32 10
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  %65 = call %struct.nfs_client* @ERR_PTR(i32 %64)
  %66 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %67 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %66, i32 0, i32 9
  store %struct.nfs_client* %65, %struct.nfs_client** %67, align 8
  %68 = load %struct.nfs_client_initdata*, %struct.nfs_client_initdata** %3, align 8
  %69 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %72 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %71, i32 0, i32 8
  store i32 %70, i32* %72, align 4
  %73 = call %struct.rpc_cred* (...) @rpc_lookup_machine_cred()
  store %struct.rpc_cred* %73, %struct.rpc_cred** %5, align 8
  %74 = load %struct.rpc_cred*, %struct.rpc_cred** %5, align 8
  %75 = call i32 @IS_ERR(%struct.rpc_cred* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %59
  %78 = load %struct.rpc_cred*, %struct.rpc_cred** %5, align 8
  %79 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %80 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %79, i32 0, i32 2
  store %struct.rpc_cred* %78, %struct.rpc_cred** %80, align 8
  br label %81

81:                                               ; preds = %77, %59
  %82 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %83 = call i32 @nfs_fscache_get_client_cookie(%struct.nfs_client* %82)
  %84 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  store %struct.nfs_client* %84, %struct.nfs_client** %2, align 8
  br label %91

85:                                               ; preds = %57
  %86 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %87 = call i32 @kfree(%struct.nfs_client* %86)
  br label %88

88:                                               ; preds = %85, %12
  %89 = load i32, i32* %6, align 4
  %90 = call %struct.nfs_client* @ERR_PTR(i32 %89)
  store %struct.nfs_client* %90, %struct.nfs_client** %2, align 8
  br label %91

91:                                               ; preds = %88, %81
  %92 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  ret %struct.nfs_client* %92
}

declare dso_local %struct.nfs_client* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @kstrdup(i64, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.nfs_client* @ERR_PTR(i32) #1

declare dso_local %struct.rpc_cred* @rpc_lookup_machine_cred(...) #1

declare dso_local i32 @IS_ERR(%struct.rpc_cred*) #1

declare dso_local i32 @nfs_fscache_get_client_cookie(%struct.nfs_client*) #1

declare dso_local i32 @kfree(%struct.nfs_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
