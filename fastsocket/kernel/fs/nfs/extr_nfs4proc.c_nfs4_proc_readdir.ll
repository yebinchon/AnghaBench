; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.rpc_cred = type { i32 }
%struct.page = type { i32 }
%struct.nfs4_exception = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.rpc_cred*, i32, %struct.page**, i32, i32)* @nfs4_proc_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_proc_readdir(%struct.dentry* %0, %struct.rpc_cred* %1, i32 %2, %struct.page** %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.rpc_cred*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.page**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nfs4_exception, align 8
  %14 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %7, align 8
  store %struct.rpc_cred* %1, %struct.rpc_cred** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.page** %3, %struct.page*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = bitcast %struct.nfs4_exception* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 8, i1 false)
  br label %16

16:                                               ; preds = %29, %6
  %17 = load %struct.dentry*, %struct.dentry** %7, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @NFS_SERVER(i32 %19)
  %21 = load %struct.dentry*, %struct.dentry** %7, align 8
  %22 = load %struct.rpc_cred*, %struct.rpc_cred** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.page**, %struct.page*** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @_nfs4_proc_readdir(%struct.dentry* %21, %struct.rpc_cred* %22, i32 %23, %struct.page** %24, i32 %25, i32 %26)
  %28 = call i32 @nfs4_handle_exception(i32 %20, i32 %27, %struct.nfs4_exception* %13)
  store i32 %28, i32* %14, align 4
  br label %29

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %13, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %16, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %14, align 4
  ret i32 %34
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @nfs4_handle_exception(i32, i32, %struct.nfs4_exception*) #2

declare dso_local i32 @NFS_SERVER(i32) #2

declare dso_local i32 @_nfs4_proc_readdir(%struct.dentry*, %struct.rpc_cred*, i32, %struct.page**, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
