; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_inode.c_afs_iget5_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_inode.c_afs_iget5_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.afs_iget_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.afs_vnode = type { i32, %struct.TYPE_2__ }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*)* @afs_iget5_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_iget5_set(%struct.inode* %0, i8* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.afs_iget_data*, align 8
  %6 = alloca %struct.afs_vnode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.afs_iget_data*
  store %struct.afs_iget_data* %8, %struct.afs_iget_data** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call %struct.afs_vnode* @AFS_FS_I(%struct.inode* %9)
  store %struct.afs_vnode* %10, %struct.afs_vnode** %6, align 8
  %11 = load %struct.afs_iget_data*, %struct.afs_iget_data** %5, align 8
  %12 = getelementptr inbounds %struct.afs_iget_data, %struct.afs_iget_data* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.afs_iget_data*, %struct.afs_iget_data** %5, align 8
  %18 = getelementptr inbounds %struct.afs_iget_data, %struct.afs_iget_data* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %24 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %23, i32 0, i32 1
  %25 = load %struct.afs_iget_data*, %struct.afs_iget_data** %5, align 8
  %26 = getelementptr inbounds %struct.afs_iget_data, %struct.afs_iget_data* %25, i32 0, i32 1
  %27 = bitcast %struct.TYPE_2__* %24 to i8*
  %28 = bitcast %struct.TYPE_2__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 8, i1 false)
  %29 = load %struct.afs_iget_data*, %struct.afs_iget_data** %5, align 8
  %30 = getelementptr inbounds %struct.afs_iget_data, %struct.afs_iget_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %33 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  ret i32 0
}

declare dso_local %struct.afs_vnode* @AFS_FS_I(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
