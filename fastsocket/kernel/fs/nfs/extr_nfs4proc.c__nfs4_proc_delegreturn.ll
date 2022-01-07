; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_proc_delegreturn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_proc_delegreturn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.rpc_cred = type { i32 }
%struct.nfs4_delegreturndata = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32*, %struct.nfs_server*, i32 }
%struct.nfs_server = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32*, i32*, i32 }
%struct.rpc_task = type { i32 }
%struct.rpc_message = type { %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.rpc_cred*, i32* }
%struct.rpc_task_setup = type { %struct.nfs4_delegreturndata*, i32, i32*, %struct.rpc_message*, i32 }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_DELEGRETURN = common dso_local global i64 0, align 8
@RPC_TASK_ASYNC = common dso_local global i32 0, align 4
@nfs4_delegreturn_ops = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.rpc_cred*, i32*, i32)* @_nfs4_proc_delegreturn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_proc_delegreturn(%struct.inode* %0, %struct.rpc_cred* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.rpc_cred*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfs4_delegreturndata*, align 8
  %11 = alloca %struct.nfs_server*, align 8
  %12 = alloca %struct.rpc_task*, align 8
  %13 = alloca %struct.rpc_message, align 8
  %14 = alloca %struct.rpc_task_setup, align 8
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.rpc_cred* %1, %struct.rpc_cred** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %16)
  store %struct.nfs_server* %17, %struct.nfs_server** %11, align 8
  %18 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %18, align 8
  %19 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %19, align 8
  %20 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 2
  %21 = load %struct.rpc_cred*, %struct.rpc_cred** %7, align 8
  store %struct.rpc_cred* %21, %struct.rpc_cred** %20, align 8
  %22 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 3
  %23 = load i32*, i32** @nfs4_procedures, align 8
  %24 = load i64, i64* @NFSPROC4_CLNT_DELEGRETURN, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32* %25, i32** %22, align 8
  %26 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %14, i32 0, i32 0
  store %struct.nfs4_delegreturndata* null, %struct.nfs4_delegreturndata** %26, align 8
  %27 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %14, i32 0, i32 1
  %28 = load i32, i32* @RPC_TASK_ASYNC, align 4
  store i32 %28, i32* %27, align 8
  %29 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %14, i32 0, i32 2
  store i32* @nfs4_delegreturn_ops, i32** %29, align 8
  %30 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %14, i32 0, i32 3
  store %struct.rpc_message* %13, %struct.rpc_message** %30, align 8
  %31 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %14, i32 0, i32 4
  %32 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  %33 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %31, align 8
  store i32 0, i32* %15, align 4
  %35 = load i32, i32* @GFP_NOFS, align 4
  %36 = call %struct.nfs4_delegreturndata* @kzalloc(i32 80, i32 %35)
  store %struct.nfs4_delegreturndata* %36, %struct.nfs4_delegreturndata** %10, align 8
  %37 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %38 = icmp eq %struct.nfs4_delegreturndata* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %4
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %140

42:                                               ; preds = %4
  %43 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %44 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %47 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = call i32 @nfs41_init_sequence(i32* %45, i32* %48, i32 1)
  %50 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %51 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %50, i32 0, i32 6
  %52 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %53 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  store i32* %51, i32** %54, align 8
  %55 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %56 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %55, i32 0, i32 5
  %57 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %58 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store i32* %56, i32** %59, align 8
  %60 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  %61 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %64 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %67 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %66, i32 0, i32 6
  %68 = load %struct.inode*, %struct.inode** %6, align 8
  %69 = call i32 @NFS_FH(%struct.inode* %68)
  %70 = call i32 @nfs_copy_fh(i32* %67, i32 %69)
  %71 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %72 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %71, i32 0, i32 5
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @nfs4_stateid_copy(i32* %72, i32* %73)
  %75 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %76 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %75, i32 0, i32 1
  %77 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %78 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i32* %76, i32** %79, align 8
  %80 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  %81 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %82 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store %struct.nfs_server* %80, %struct.nfs_server** %83, align 8
  %84 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %85 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @nfs_fattr_init(i32* %87)
  %89 = load i32, i32* @jiffies, align 4
  %90 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %91 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 8
  %92 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %93 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %92, i32 0, i32 0
  store i32 0, i32* %93, align 8
  %94 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %95 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %14, i32 0, i32 0
  store %struct.nfs4_delegreturndata* %94, %struct.nfs4_delegreturndata** %95, align 8
  %96 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %97 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 1
  store %struct.TYPE_3__* %97, %struct.TYPE_3__** %98, align 8
  %99 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %100 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 0
  store %struct.TYPE_4__* %100, %struct.TYPE_4__** %101, align 8
  %102 = call %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup* %14)
  store %struct.rpc_task* %102, %struct.rpc_task** %12, align 8
  %103 = load %struct.rpc_task*, %struct.rpc_task** %12, align 8
  %104 = call i64 @IS_ERR(%struct.rpc_task* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %42
  %107 = load %struct.rpc_task*, %struct.rpc_task** %12, align 8
  %108 = call i32 @PTR_ERR(%struct.rpc_task* %107)
  store i32 %108, i32* %5, align 4
  br label %140

109:                                              ; preds = %42
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  br label %136

113:                                              ; preds = %109
  %114 = load %struct.rpc_task*, %struct.rpc_task** %12, align 8
  %115 = call i32 @nfs4_wait_for_completion_rpc_task(%struct.rpc_task* %114)
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %15, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %136

119:                                              ; preds = %113
  %120 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %121 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %15, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = load %struct.inode*, %struct.inode** %6, align 8
  %127 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %128 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %127, i32 0, i32 1
  %129 = call i32 @nfs_post_op_update_inode_force_wcc(%struct.inode* %126, i32* %128)
  br label %135

130:                                              ; preds = %119
  %131 = load %struct.inode*, %struct.inode** %6, align 8
  %132 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %133 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %132, i32 0, i32 1
  %134 = call i32 @nfs_refresh_inode(%struct.inode* %131, i32* %133)
  br label %135

135:                                              ; preds = %130, %125
  br label %136

136:                                              ; preds = %135, %118, %112
  %137 = load %struct.rpc_task*, %struct.rpc_task** %12, align 8
  %138 = call i32 @rpc_put_task(%struct.rpc_task* %137)
  %139 = load i32, i32* %15, align 4
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %136, %106, %39
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local %struct.nfs4_delegreturndata* @kzalloc(i32, i32) #1

declare dso_local i32 @nfs41_init_sequence(i32*, i32*, i32) #1

declare dso_local i32 @nfs_copy_fh(i32*, i32) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @nfs4_stateid_copy(i32*, i32*) #1

declare dso_local i32 @nfs_fattr_init(i32*) #1

declare dso_local %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup*) #1

declare dso_local i64 @IS_ERR(%struct.rpc_task*) #1

declare dso_local i32 @PTR_ERR(%struct.rpc_task*) #1

declare dso_local i32 @nfs4_wait_for_completion_rpc_task(%struct.rpc_task*) #1

declare dso_local i32 @nfs_post_op_update_inode_force_wcc(%struct.inode*, i32*) #1

declare dso_local i32 @nfs_refresh_inode(%struct.inode*, i32*) #1

declare dso_local i32 @rpc_put_task(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
