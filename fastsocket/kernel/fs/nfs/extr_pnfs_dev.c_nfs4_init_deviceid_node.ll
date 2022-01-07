; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs_dev.c_nfs4_init_deviceid_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs_dev.c_nfs4_init_deviceid_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_deviceid_node = type { i32, %struct.nfs4_deviceid, i64, %struct.nfs_client*, %struct.pnfs_layoutdriver_type*, i32, i32 }
%struct.nfs4_deviceid = type { i32 }
%struct.pnfs_layoutdriver_type = type { i32 }
%struct.nfs_client = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs4_init_deviceid_node(%struct.nfs4_deviceid_node* %0, %struct.pnfs_layoutdriver_type* %1, %struct.nfs_client* %2, %struct.nfs4_deviceid* %3) #0 {
  %5 = alloca %struct.nfs4_deviceid_node*, align 8
  %6 = alloca %struct.pnfs_layoutdriver_type*, align 8
  %7 = alloca %struct.nfs_client*, align 8
  %8 = alloca %struct.nfs4_deviceid*, align 8
  store %struct.nfs4_deviceid_node* %0, %struct.nfs4_deviceid_node** %5, align 8
  store %struct.pnfs_layoutdriver_type* %1, %struct.pnfs_layoutdriver_type** %6, align 8
  store %struct.nfs_client* %2, %struct.nfs_client** %7, align 8
  store %struct.nfs4_deviceid* %3, %struct.nfs4_deviceid** %8, align 8
  %9 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %5, align 8
  %10 = getelementptr inbounds %struct.nfs4_deviceid_node, %struct.nfs4_deviceid_node* %9, i32 0, i32 6
  %11 = call i32 @INIT_HLIST_NODE(i32* %10)
  %12 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %5, align 8
  %13 = getelementptr inbounds %struct.nfs4_deviceid_node, %struct.nfs4_deviceid_node* %12, i32 0, i32 5
  %14 = call i32 @INIT_HLIST_NODE(i32* %13)
  %15 = load %struct.pnfs_layoutdriver_type*, %struct.pnfs_layoutdriver_type** %6, align 8
  %16 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %5, align 8
  %17 = getelementptr inbounds %struct.nfs4_deviceid_node, %struct.nfs4_deviceid_node* %16, i32 0, i32 4
  store %struct.pnfs_layoutdriver_type* %15, %struct.pnfs_layoutdriver_type** %17, align 8
  %18 = load %struct.nfs_client*, %struct.nfs_client** %7, align 8
  %19 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %5, align 8
  %20 = getelementptr inbounds %struct.nfs4_deviceid_node, %struct.nfs4_deviceid_node* %19, i32 0, i32 3
  store %struct.nfs_client* %18, %struct.nfs_client** %20, align 8
  %21 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %5, align 8
  %22 = getelementptr inbounds %struct.nfs4_deviceid_node, %struct.nfs4_deviceid_node* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %5, align 8
  %24 = getelementptr inbounds %struct.nfs4_deviceid_node, %struct.nfs4_deviceid_node* %23, i32 0, i32 1
  %25 = load %struct.nfs4_deviceid*, %struct.nfs4_deviceid** %8, align 8
  %26 = bitcast %struct.nfs4_deviceid* %24 to i8*
  %27 = bitcast %struct.nfs4_deviceid* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  %28 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %5, align 8
  %29 = getelementptr inbounds %struct.nfs4_deviceid_node, %struct.nfs4_deviceid_node* %28, i32 0, i32 0
  %30 = call i32 @atomic_set(i32* %29, i32 1)
  ret void
}

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
