; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_open_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_open_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.nfs4_opendata = type { %struct.TYPE_14__, %struct.TYPE_13__, i32, %struct.TYPE_15__*, %struct.nfs4_state_owner* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.nfs4_state_owner = type { %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.nfs_client* }
%struct.nfs_client = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.nfs_delegation = type { i32 }
%struct.TYPE_16__ = type { i32 }

@NFS4_OPEN_CLAIM_DELEGATE_CUR = common dso_local global i64 0, align 8
@NFS4_OPEN_CLAIM_PREVIOUS = common dso_local global i64 0, align 8
@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_OPEN_NOATTR = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@NFS4_CREATE_UNCHECKED = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@NFS4_CREATE_EXCLUSIVE = common dso_local global i32 0, align 4
@NFS4_CREATE_GUARDED = common dso_local global i32 0, align 4
@NFS4_CREATE_EXCLUSIVE4_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, i8*)* @nfs4_open_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_open_prepare(%struct.rpc_task* %0, i8* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nfs4_opendata*, align 8
  %6 = alloca %struct.nfs4_state_owner*, align 8
  %7 = alloca %struct.nfs_client*, align 8
  %8 = alloca %struct.nfs_delegation*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.nfs4_opendata*
  store %struct.nfs4_opendata* %10, %struct.nfs4_opendata** %5, align 8
  %11 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %12 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %11, i32 0, i32 4
  %13 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %12, align 8
  store %struct.nfs4_state_owner* %13, %struct.nfs4_state_owner** %6, align 8
  %14 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %6, align 8
  %15 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %14, i32 0, i32 1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.nfs_client*, %struct.nfs_client** %17, align 8
  store %struct.nfs_client* %18, %struct.nfs_client** %7, align 8
  %19 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %20 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %24 = call i64 @nfs_wait_on_sequence(i32 %22, %struct.rpc_task* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %181

27:                                               ; preds = %2
  %28 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %29 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %28, i32 0, i32 3
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = icmp ne %struct.TYPE_15__* %30, null
  br i1 %31, label %32, label %75

32:                                               ; preds = %27
  %33 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %34 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %33, i32 0, i32 3
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  %36 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %37 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %41 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @can_open_cached(%struct.TYPE_15__* %35, i32 %39, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  br label %178

47:                                               ; preds = %32
  %48 = call i32 (...) @rcu_read_lock()
  %49 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %50 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %49, i32 0, i32 3
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.TYPE_16__* @NFS_I(i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.nfs_delegation* @rcu_dereference(i32 %56)
  store %struct.nfs_delegation* %57, %struct.nfs_delegation** %8, align 8
  %58 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %59 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @NFS4_OPEN_CLAIM_DELEGATE_CUR, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %47
  %65 = load %struct.nfs_delegation*, %struct.nfs_delegation** %8, align 8
  %66 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %67 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 9
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @can_open_delegated(%struct.nfs_delegation* %65, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %176

73:                                               ; preds = %64, %47
  %74 = call i32 (...) @rcu_read_unlock()
  br label %75

75:                                               ; preds = %73, %27
  %76 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %6, align 8
  %77 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %81 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 8
  store i32 %79, i32* %82, align 8
  %83 = load %struct.nfs_client*, %struct.nfs_client** %7, align 8
  %84 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %87 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 7
  store i32 %85, i32* %88, align 4
  %89 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %90 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @NFS4_OPEN_CLAIM_PREVIOUS, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %110

95:                                               ; preds = %75
  %96 = load i32*, i32** @nfs4_procedures, align 8
  %97 = load i64, i64* @NFSPROC4_CLNT_OPEN_NOATTR, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %100 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  store i32* %98, i32** %101, align 8
  %102 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %103 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %106 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @nfs_copy_fh(i32* %104, i32 %108)
  br label %110

110:                                              ; preds = %95, %75
  %111 = load i32, i32* @jiffies, align 4
  %112 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %113 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %115 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %119 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 4
  %121 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %122 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %125 = call i64 @nfs4_setup_sequence(i32 %117, i32* %120, i32* %123, %struct.rpc_task* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %110
  %128 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %129 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @nfs_release_seqid(i32 %131)
  br label %136

133:                                              ; preds = %110
  %134 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %135 = call i32 @rpc_call_start(%struct.rpc_task* %134)
  br label %136

136:                                              ; preds = %133, %127
  %137 = load i32, i32* @NFS4_CREATE_UNCHECKED, align 4
  %138 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %139 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 2
  store i32 %137, i32* %140, align 8
  %141 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %142 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @O_EXCL, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %175

148:                                              ; preds = %136
  %149 = load i32, i32* @NFS4_CREATE_EXCLUSIVE, align 4
  %150 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %151 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 2
  store i32 %149, i32* %152, align 8
  %153 = load %struct.nfs_client*, %struct.nfs_client** %7, align 8
  %154 = call i64 @nfs4_has_persistent_session(%struct.nfs_client* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %148
  %157 = load i32, i32* @NFS4_CREATE_GUARDED, align 4
  %158 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %159 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 2
  store i32 %157, i32* %160, align 8
  br label %174

161:                                              ; preds = %148
  %162 = load %struct.nfs_client*, %struct.nfs_client** %7, align 8
  %163 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %162, i32 0, i32 0
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp sgt i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %161
  %169 = load i32, i32* @NFS4_CREATE_EXCLUSIVE4_1, align 4
  %170 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %171 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 2
  store i32 %169, i32* %172, align 8
  br label %173

173:                                              ; preds = %168, %161
  br label %174

174:                                              ; preds = %173, %156
  br label %175

175:                                              ; preds = %174, %136
  br label %187

176:                                              ; preds = %72
  %177 = call i32 (...) @rcu_read_unlock()
  br label %178

178:                                              ; preds = %176, %46
  %179 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %180 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %179, i32 0, i32 0
  store i32* null, i32** %180, align 8
  br label %181

181:                                              ; preds = %178, %26
  %182 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %183 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %184 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 0
  %186 = call i32 @nfs4_sequence_done(%struct.rpc_task* %182, i32* %185)
  br label %187

187:                                              ; preds = %181, %175
  ret void
}

declare dso_local i64 @nfs_wait_on_sequence(i32, %struct.rpc_task*) #1

declare dso_local i64 @can_open_cached(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nfs_delegation* @rcu_dereference(i32) #1

declare dso_local %struct.TYPE_16__* @NFS_I(i32) #1

declare dso_local i64 @can_open_delegated(%struct.nfs_delegation*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @nfs_copy_fh(i32*, i32) #1

declare dso_local i64 @nfs4_setup_sequence(i32, i32*, i32*, %struct.rpc_task*) #1

declare dso_local i32 @nfs_release_seqid(i32) #1

declare dso_local i32 @rpc_call_start(%struct.rpc_task*) #1

declare dso_local i64 @nfs4_has_persistent_session(%struct.nfs_client*) #1

declare dso_local i32 @nfs4_sequence_done(%struct.rpc_task*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
