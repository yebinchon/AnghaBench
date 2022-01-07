; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pagelist.c_nfs_set_pgio_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pagelist.c_nfs_set_pgio_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pgio_header = type { i64, i64, i32, i32, i32 }

@NFS_IOHDR_ERROR = common dso_local global i32 0, align 4
@NFS_IOHDR_EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_set_pgio_error(%struct.nfs_pgio_header* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.nfs_pgio_header*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.nfs_pgio_header* %0, %struct.nfs_pgio_header** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %8 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %7, i32 0, i32 3
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %12 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %15 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %13, %16
  %18 = icmp slt i64 %10, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %3
  %20 = load i32, i32* @NFS_IOHDR_ERROR, align 4
  %21 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %22 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %21, i32 0, i32 4
  %23 = call i32 @set_bit(i32 %20, i32* %22)
  %24 = load i32, i32* @NFS_IOHDR_EOF, align 4
  %25 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %26 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %25, i32 0, i32 4
  %27 = call i32 @clear_bit(i32 %24, i32* %26)
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %30 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  %33 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %34 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %37 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %19, %3
  %39 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %40 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %39, i32 0, i32 3
  %41 = call i32 @spin_unlock(i32* %40)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
