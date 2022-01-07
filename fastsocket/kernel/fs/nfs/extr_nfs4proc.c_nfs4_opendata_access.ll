; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_opendata_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_opendata_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_cred = type { i32 }
%struct.nfs4_opendata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.nfs4_state = type { i32 }
%struct.nfs_access_entry = type { i32, i32, %struct.rpc_cred* }

@__FMODE_EXEC = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@MAY_READ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@NFS4ERR_ACCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_cred*, %struct.nfs4_opendata*, %struct.nfs4_state*, i32, i32)* @nfs4_opendata_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_opendata_access(%struct.rpc_cred* %0, %struct.nfs4_opendata* %1, %struct.nfs4_state* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpc_cred*, align 8
  %8 = alloca %struct.nfs4_opendata*, align 8
  %9 = alloca %struct.nfs4_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nfs_access_entry, align 8
  %13 = alloca i32, align 4
  store %struct.rpc_cred* %0, %struct.rpc_cred** %7, align 8
  store %struct.nfs4_opendata* %1, %struct.nfs4_opendata** %8, align 8
  store %struct.nfs4_state* %2, %struct.nfs4_state** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %8, align 8
  %15 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %68

20:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @__FMODE_EXEC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @MAY_EXEC, align 4
  store i32 %26, i32* %13, align 4
  br label %35

27:                                               ; preds = %20
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @FMODE_READ, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @MAY_READ, align 4
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %32, %27
  br label %35

35:                                               ; preds = %34, %25
  %36 = load %struct.rpc_cred*, %struct.rpc_cred** %7, align 8
  %37 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %12, i32 0, i32 2
  store %struct.rpc_cred* %36, %struct.rpc_cred** %37, align 8
  %38 = load i32, i32* @jiffies, align 4
  %39 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %12, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %8, align 8
  %41 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @nfs_access_set_mask(%struct.nfs_access_entry* %12, i32 %43)
  %45 = load %struct.nfs4_state*, %struct.nfs4_state** %9, align 8
  %46 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @nfs_access_add_cache(i32 %47, %struct.nfs_access_entry* %12)
  %49 = load i32, i32* %13, align 4
  %50 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %12, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = xor i32 %51, -1
  %53 = and i32 %49, %52
  %54 = load i32, i32* @MAY_READ, align 4
  %55 = load i32, i32* @MAY_WRITE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @MAY_EXEC, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %53, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %68

62:                                               ; preds = %35
  %63 = load %struct.nfs4_state*, %struct.nfs4_state** %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @nfs4_close_state(%struct.nfs4_state* %63, i32 %64)
  %66 = load i32, i32* @NFS4ERR_ACCESS, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %62, %61, %19
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @nfs_access_set_mask(%struct.nfs_access_entry*, i32) #1

declare dso_local i32 @nfs_access_add_cache(i32, %struct.nfs_access_entry*) #1

declare dso_local i32 @nfs4_close_state(%struct.nfs4_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
