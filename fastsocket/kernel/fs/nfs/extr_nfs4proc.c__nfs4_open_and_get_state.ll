; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_open_and_get_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_open_and_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_opendata = type { %struct.nfs4_state_owner* }
%struct.nfs4_state_owner = type { i32, i32, %struct.nfs_server* }
%struct.nfs_server = type { i32 }
%struct.nfs4_state = type { i32 }

@NFS_CAP_POSIX_LOCK = common dso_local global i32 0, align 4
@NFS_STATE_POSIX_LOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_opendata*, i32, i32, %struct.nfs4_state**)* @_nfs4_open_and_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_open_and_get_state(%struct.nfs4_opendata* %0, i32 %1, i32 %2, %struct.nfs4_state** %3) #0 {
  %5 = alloca %struct.nfs4_opendata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs4_state**, align 8
  %9 = alloca %struct.nfs4_state_owner*, align 8
  %10 = alloca %struct.nfs_server*, align 8
  %11 = alloca %struct.nfs4_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nfs4_opendata* %0, %struct.nfs4_opendata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.nfs4_state** %3, %struct.nfs4_state*** %8, align 8
  %14 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %15 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %14, i32 0, i32 0
  %16 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %15, align 8
  store %struct.nfs4_state_owner* %16, %struct.nfs4_state_owner** %9, align 8
  %17 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %9, align 8
  %18 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %17, i32 0, i32 2
  %19 = load %struct.nfs_server*, %struct.nfs_server** %18, align 8
  store %struct.nfs_server* %19, %struct.nfs_server** %10, align 8
  %20 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %9, align 8
  %21 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %20, i32 0, i32 0
  %22 = call i32 @raw_seqcount_begin(i32* %21)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %24 = call i32 @_nfs4_proc_open(%struct.nfs4_opendata* %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %74

28:                                               ; preds = %4
  %29 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %30 = call %struct.nfs4_state* @nfs4_opendata_to_nfs4_state(%struct.nfs4_opendata* %29)
  store %struct.nfs4_state* %30, %struct.nfs4_state** %11, align 8
  %31 = load %struct.nfs4_state*, %struct.nfs4_state** %11, align 8
  %32 = call i32 @PTR_ERR(%struct.nfs4_state* %31)
  store i32 %32, i32* %13, align 4
  %33 = load %struct.nfs4_state*, %struct.nfs4_state** %11, align 8
  %34 = call i64 @IS_ERR(%struct.nfs4_state* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %74

37:                                               ; preds = %28
  %38 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %39 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @NFS_CAP_POSIX_LOCK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load i32, i32* @NFS_STATE_POSIX_LOCKS, align 4
  %46 = load %struct.nfs4_state*, %struct.nfs4_state** %11, align 8
  %47 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %46, i32 0, i32 0
  %48 = call i32 @set_bit(i32 %45, i32* %47)
  br label %49

49:                                               ; preds = %44, %37
  %50 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %9, align 8
  %51 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %54 = load %struct.nfs4_state*, %struct.nfs4_state** %11, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @nfs4_opendata_access(i32 %52, %struct.nfs4_opendata* %53, %struct.nfs4_state* %54, i32 %55, i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %74

61:                                               ; preds = %49
  %62 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %9, align 8
  %63 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %62, i32 0, i32 0
  %64 = load i32, i32* %12, align 4
  %65 = call i64 @read_seqcount_retry(i32* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %69 = load %struct.nfs4_state*, %struct.nfs4_state** %11, align 8
  %70 = call i32 @nfs4_schedule_stateid_recovery(%struct.nfs_server* %68, %struct.nfs4_state* %69)
  br label %71

71:                                               ; preds = %67, %61
  %72 = load %struct.nfs4_state*, %struct.nfs4_state** %11, align 8
  %73 = load %struct.nfs4_state**, %struct.nfs4_state*** %8, align 8
  store %struct.nfs4_state* %72, %struct.nfs4_state** %73, align 8
  br label %74

74:                                               ; preds = %71, %60, %36, %27
  %75 = load i32, i32* %13, align 4
  ret i32 %75
}

declare dso_local i32 @raw_seqcount_begin(i32*) #1

declare dso_local i32 @_nfs4_proc_open(%struct.nfs4_opendata*) #1

declare dso_local %struct.nfs4_state* @nfs4_opendata_to_nfs4_state(%struct.nfs4_opendata*) #1

declare dso_local i32 @PTR_ERR(%struct.nfs4_state*) #1

declare dso_local i64 @IS_ERR(%struct.nfs4_state*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nfs4_opendata_access(i32, %struct.nfs4_opendata*, %struct.nfs4_state*, i32, i32) #1

declare dso_local i64 @read_seqcount_retry(i32*, i32) #1

declare dso_local i32 @nfs4_schedule_stateid_recovery(%struct.nfs_server*, %struct.nfs4_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
