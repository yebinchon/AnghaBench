; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_opendata_to_nfs4_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_opendata_to_nfs4_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state = type { i32 }
%struct.nfs4_opendata = type { %struct.TYPE_10__, %struct.TYPE_11__, %struct.TYPE_13__*, %struct.TYPE_12__, %struct.TYPE_9__*, i32 }
%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.inode = type { i32 }
%struct.nfs_delegation = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFS4_OPEN_CLAIM_DELEGATE_CUR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [84 x i8] c"NFS: Broken NFSv4 server %s is returning a delegation for OPEN(CLAIM_DELEGATE_CUR)\0A\00", align 1
@NFS_DELEGATION_NEED_RECLAIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_state* (%struct.nfs4_opendata*)* @nfs4_opendata_to_nfs4_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_state* @nfs4_opendata_to_nfs4_state(%struct.nfs4_opendata* %0) #0 {
  %2 = alloca %struct.nfs4_state*, align 8
  %3 = alloca %struct.nfs4_opendata*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nfs4_state*, align 8
  %6 = alloca %struct.nfs_delegation*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nfs4_opendata* %0, %struct.nfs4_opendata** %3, align 8
  store %struct.nfs4_state* null, %struct.nfs4_state** %5, align 8
  %9 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %10 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %15 = call %struct.nfs4_state* @nfs4_try_open_cached(%struct.nfs4_opendata* %14)
  store %struct.nfs4_state* %15, %struct.nfs4_state** %5, align 8
  br label %135

16:                                               ; preds = %1
  %17 = load i32, i32* @EAGAIN, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %20 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @NFS_ATTR_FATTR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  br label %145

27:                                               ; preds = %16
  %28 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %29 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %28, i32 0, i32 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %34 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %37 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %36, i32 0, i32 3
  %38 = call %struct.inode* @nfs_fhget(i32 %32, i32* %35, %struct.TYPE_12__* %37)
  store %struct.inode* %38, %struct.inode** %4, align 8
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = call i32 @PTR_ERR(%struct.inode* %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = call i64 @IS_ERR(%struct.inode* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %27
  br label %145

45:                                               ; preds = %27
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %50 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %49, i32 0, i32 2
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = call %struct.nfs4_state* @nfs4_get_open_state(%struct.inode* %48, %struct.TYPE_13__* %51)
  store %struct.nfs4_state* %52, %struct.nfs4_state** %5, align 8
  %53 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %54 = icmp eq %struct.nfs4_state* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %142

56:                                               ; preds = %45
  %57 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %58 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %123

62:                                               ; preds = %56
  store i32 0, i32* %8, align 4
  %63 = call i32 (...) @rcu_read_lock()
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  %65 = call %struct.TYPE_14__* @NFS_I(%struct.inode* %64)
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.nfs_delegation* @rcu_dereference(i32 %67)
  store %struct.nfs_delegation* %68, %struct.nfs_delegation** %6, align 8
  %69 = load %struct.nfs_delegation*, %struct.nfs_delegation** %6, align 8
  %70 = icmp ne %struct.nfs_delegation* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %62
  %72 = load %struct.nfs_delegation*, %struct.nfs_delegation** %6, align 8
  %73 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %71, %62
  %76 = call i32 (...) @rcu_read_unlock()
  %77 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %78 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @NFS4_OPEN_CLAIM_DELEGATE_CUR, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %75
  %84 = load %struct.inode*, %struct.inode** %4, align 8
  %85 = call %struct.TYPE_15__* @NFS_CLIENT(%struct.inode* %84)
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %87)
  br label %122

89:                                               ; preds = %75
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = load i32, i32* @NFS_DELEGATION_NEED_RECLAIM, align 4
  %93 = zext i32 %92 to i64
  %94 = shl i64 1, %93
  %95 = and i64 %91, %94
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %89
  %98 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %99 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %102 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %101, i32 0, i32 2
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %107 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %106, i32 0, i32 1
  %108 = call i32 @nfs_inode_set_delegation(i32 %100, i32 %105, %struct.TYPE_11__* %107)
  br label %121

109:                                              ; preds = %89
  %110 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %111 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %114 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %113, i32 0, i32 2
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %119 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %118, i32 0, i32 1
  %120 = call i32 @nfs_inode_reclaim_delegation(i32 %112, i32 %117, %struct.TYPE_11__* %119)
  br label %121

121:                                              ; preds = %109, %97
  br label %122

122:                                              ; preds = %121, %83
  br label %123

123:                                              ; preds = %122, %56
  %124 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %125 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %126 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  %128 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %129 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @update_open_stateid(%struct.nfs4_state* %124, i32* %127, i32* null, i32 %131)
  %133 = load %struct.inode*, %struct.inode** %4, align 8
  %134 = call i32 @iput(%struct.inode* %133)
  br label %135

135:                                              ; preds = %123, %13
  %136 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %137 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @nfs_release_seqid(i32 %139)
  %141 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  store %struct.nfs4_state* %141, %struct.nfs4_state** %2, align 8
  br label %148

142:                                              ; preds = %55
  %143 = load %struct.inode*, %struct.inode** %4, align 8
  %144 = call i32 @iput(%struct.inode* %143)
  br label %145

145:                                              ; preds = %142, %44, %26
  %146 = load i32, i32* %7, align 4
  %147 = call %struct.nfs4_state* @ERR_PTR(i32 %146)
  store %struct.nfs4_state* %147, %struct.nfs4_state** %2, align 8
  br label %148

148:                                              ; preds = %145, %135
  %149 = load %struct.nfs4_state*, %struct.nfs4_state** %2, align 8
  ret %struct.nfs4_state* %149
}

declare dso_local %struct.nfs4_state* @nfs4_try_open_cached(%struct.nfs4_opendata*) #1

declare dso_local %struct.inode* @nfs_fhget(i32, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.nfs4_state* @nfs4_get_open_state(%struct.inode*, %struct.TYPE_13__*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nfs_delegation* @rcu_dereference(i32) #1

declare dso_local %struct.TYPE_14__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @pr_err_ratelimited(i8*, i32) #1

declare dso_local %struct.TYPE_15__* @NFS_CLIENT(%struct.inode*) #1

declare dso_local i32 @nfs_inode_set_delegation(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @nfs_inode_reclaim_delegation(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @update_open_stateid(%struct.nfs4_state*, i32*, i32*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @nfs_release_seqid(i32) #1

declare dso_local %struct.nfs4_state* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
