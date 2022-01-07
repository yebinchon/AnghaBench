; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_fs_locations.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_fs_locations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.nfs4_fs_locations = type { i32 }
%struct.page = type { i32 }
%struct.nfs4_exception = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_proc_fs_locations(%struct.rpc_clnt* %0, %struct.inode* %1, %struct.qstr* %2, %struct.nfs4_fs_locations* %3, %struct.page* %4) #0 {
  %6 = alloca %struct.rpc_clnt*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.qstr*, align 8
  %9 = alloca %struct.nfs4_fs_locations*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca %struct.nfs4_exception, align 8
  %12 = alloca i32, align 4
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.qstr* %2, %struct.qstr** %8, align 8
  store %struct.nfs4_fs_locations* %3, %struct.nfs4_fs_locations** %9, align 8
  store %struct.page* %4, %struct.page** %10, align 8
  %13 = bitcast %struct.nfs4_exception* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 8, i1 false)
  br label %14

14:                                               ; preds = %24, %5
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = call i32 @NFS_SERVER(%struct.inode* %15)
  %17 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = load %struct.qstr*, %struct.qstr** %8, align 8
  %20 = load %struct.nfs4_fs_locations*, %struct.nfs4_fs_locations** %9, align 8
  %21 = load %struct.page*, %struct.page** %10, align 8
  %22 = call i32 @_nfs4_proc_fs_locations(%struct.rpc_clnt* %17, %struct.inode* %18, %struct.qstr* %19, %struct.nfs4_fs_locations* %20, %struct.page* %21)
  %23 = call i32 @nfs4_handle_exception(i32 %16, i32 %22, %struct.nfs4_exception* %11)
  store i32 %23, i32* %12, align 4
  br label %24

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %11, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %14, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %12, align 4
  ret i32 %29
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @nfs4_handle_exception(i32, i32, %struct.nfs4_exception*) #2

declare dso_local i32 @NFS_SERVER(%struct.inode*) #2

declare dso_local i32 @_nfs4_proc_fs_locations(%struct.rpc_clnt*, %struct.inode*, %struct.qstr*, %struct.nfs4_fs_locations*, %struct.page*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
