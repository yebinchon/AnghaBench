; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_try_open_cached.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_try_open_cached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nfs4_opendata = type { i32, %struct.TYPE_3__, %struct.nfs4_state* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.nfs_inode = type { i32 }
%struct.nfs_delegation = type { i32 }

@O_EXCL = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_state* (%struct.nfs4_opendata*)* @nfs4_try_open_cached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_state* @nfs4_try_open_cached(%struct.nfs4_opendata* %0) #0 {
  %2 = alloca %struct.nfs4_state*, align 8
  %3 = alloca %struct.nfs4_opendata*, align 8
  %4 = alloca %struct.nfs4_state*, align 8
  %5 = alloca %struct.nfs_inode*, align 8
  %6 = alloca %struct.nfs_delegation*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nfs4_opendata* %0, %struct.nfs4_opendata** %3, align 8
  %11 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %12 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %11, i32 0, i32 2
  %13 = load %struct.nfs4_state*, %struct.nfs4_state** %12, align 8
  store %struct.nfs4_state* %13, %struct.nfs4_state** %4, align 8
  %14 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %15 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.nfs_inode* @NFS_I(i32 %16)
  store %struct.nfs_inode* %17, %struct.nfs_inode** %5, align 8
  %18 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %19 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @O_EXCL, align 4
  %23 = load i32, i32* @O_TRUNC, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %27 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @EAGAIN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %113, %1
  %33 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @can_open_cached(%struct.nfs4_state* %33, i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %32
  %39 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %40 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = call i32 @spin_lock(i32* %42)
  %44 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i64 @can_open_cached(%struct.nfs4_state* %44, i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %38
  %50 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @update_open_stateflags(%struct.nfs4_state* %50, i32 %51)
  %53 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %54 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = call i32 @spin_unlock(i32* %56)
  br label %118

58:                                               ; preds = %38
  %59 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %60 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = call i32 @spin_unlock(i32* %62)
  br label %64

64:                                               ; preds = %58, %32
  %65 = call i32 (...) @rcu_read_lock()
  %66 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %67 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.nfs_delegation* @rcu_dereference(i32 %68)
  store %struct.nfs_delegation* %69, %struct.nfs_delegation** %6, align 8
  %70 = load %struct.nfs_delegation*, %struct.nfs_delegation** %6, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @can_open_delegated(%struct.nfs_delegation* %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %64
  %75 = call i32 (...) @rcu_read_unlock()
  br label %114

76:                                               ; preds = %64
  %77 = load %struct.nfs_delegation*, %struct.nfs_delegation** %6, align 8
  %78 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %77, i32 0, i32 0
  %79 = call i32 @nfs4_stateid_copy(i32* %9, i32* %78)
  %80 = call i32 (...) @rcu_read_unlock()
  %81 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %82 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @nfs_release_seqid(i32 %84)
  %86 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %87 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %105, label %90

90:                                               ; preds = %76
  %91 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %92 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %95 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @nfs_may_open(i32 %93, i32 %98, i32 %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %90
  br label %115

104:                                              ; preds = %90
  br label %105

105:                                              ; preds = %104, %76
  %106 = load i32, i32* @EAGAIN, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %10, align 4
  %108 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i64 @update_open_stateid(%struct.nfs4_state* %108, i32* null, i32* %9, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %118

113:                                              ; preds = %105
  br label %32

114:                                              ; preds = %74
  br label %115

115:                                              ; preds = %114, %103
  %116 = load i32, i32* %10, align 4
  %117 = call %struct.nfs4_state* @ERR_PTR(i32 %116)
  store %struct.nfs4_state* %117, %struct.nfs4_state** %2, align 8
  br label %123

118:                                              ; preds = %112, %49
  %119 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %120 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %119, i32 0, i32 0
  %121 = call i32 @atomic_inc(i32* %120)
  %122 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  store %struct.nfs4_state* %122, %struct.nfs4_state** %2, align 8
  br label %123

123:                                              ; preds = %118, %115
  %124 = load %struct.nfs4_state*, %struct.nfs4_state** %2, align 8
  ret %struct.nfs4_state* %124
}

declare dso_local %struct.nfs_inode* @NFS_I(i32) #1

declare dso_local i64 @can_open_cached(%struct.nfs4_state*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @update_open_stateflags(%struct.nfs4_state*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nfs_delegation* @rcu_dereference(i32) #1

declare dso_local i32 @can_open_delegated(%struct.nfs_delegation*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @nfs4_stateid_copy(i32*, i32*) #1

declare dso_local i32 @nfs_release_seqid(i32) #1

declare dso_local i32 @nfs_may_open(i32, i32, i32) #1

declare dso_local i64 @update_open_stateid(%struct.nfs4_state*, i32*, i32*, i32) #1

declare dso_local %struct.nfs4_state* @ERR_PTR(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
