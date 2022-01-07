; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3proc.c_do_proc_fsinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3proc.c_do_proc_fsinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fsinfo = type { i32 }
%struct.rpc_message = type { %struct.nfs_fsinfo*, %struct.nfs_fh*, i32* }

@nfs3_procedures = common dso_local global i32* null, align 8
@NFS3PROC_FSINFO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"NFS call  fsinfo\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"NFS reply fsinfo: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_clnt*, %struct.nfs_fh*, %struct.nfs_fsinfo*)* @do_proc_fsinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_proc_fsinfo(%struct.rpc_clnt* %0, %struct.nfs_fh* %1, %struct.nfs_fsinfo* %2) #0 {
  %4 = alloca %struct.rpc_clnt*, align 8
  %5 = alloca %struct.nfs_fh*, align 8
  %6 = alloca %struct.nfs_fsinfo*, align 8
  %7 = alloca %struct.rpc_message, align 8
  %8 = alloca i32, align 4
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %4, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %5, align 8
  store %struct.nfs_fsinfo* %2, %struct.nfs_fsinfo** %6, align 8
  %9 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %7, i32 0, i32 0
  %10 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  store %struct.nfs_fsinfo* %10, %struct.nfs_fsinfo** %9, align 8
  %11 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %7, i32 0, i32 1
  %12 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  store %struct.nfs_fh* %12, %struct.nfs_fh** %11, align 8
  %13 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %7, i32 0, i32 2
  %14 = load i32*, i32** @nfs3_procedures, align 8
  %15 = load i64, i64* @NFS3PROC_FSINFO, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32* %16, i32** %13, align 8
  %17 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %19 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @nfs_fattr_init(i32 %20)
  %22 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %23 = call i32 @rpc_call_sync(%struct.rpc_clnt* %22, %struct.rpc_message* %7, i32 0)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %8, align 4
  ret i32 %26
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @nfs_fattr_init(i32) #1

declare dso_local i32 @rpc_call_sync(%struct.rpc_clnt*, %struct.rpc_message*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
