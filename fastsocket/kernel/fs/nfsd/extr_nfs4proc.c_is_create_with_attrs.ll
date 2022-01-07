; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_is_create_with_attrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_is_create_with_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_open = type { i64, i64 }

@NFS4_OPEN_CREATE = common dso_local global i64 0, align 8
@NFS4_CREATE_UNCHECKED = common dso_local global i64 0, align 8
@NFS4_CREATE_GUARDED = common dso_local global i64 0, align 8
@NFS4_CREATE_EXCLUSIVE4_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_open*)* @is_create_with_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_create_with_attrs(%struct.nfsd4_open* %0) #0 {
  %2 = alloca %struct.nfsd4_open*, align 8
  store %struct.nfsd4_open* %0, %struct.nfsd4_open** %2, align 8
  %3 = load %struct.nfsd4_open*, %struct.nfsd4_open** %2, align 8
  %4 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @NFS4_OPEN_CREATE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load %struct.nfsd4_open*, %struct.nfsd4_open** %2, align 8
  %10 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NFS4_CREATE_UNCHECKED, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %26, label %14

14:                                               ; preds = %8
  %15 = load %struct.nfsd4_open*, %struct.nfsd4_open** %2, align 8
  %16 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NFS4_CREATE_GUARDED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.nfsd4_open*, %struct.nfsd4_open** %2, align 8
  %22 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NFS4_CREATE_EXCLUSIVE4_1, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %20, %14, %8
  %27 = phi i1 [ true, %14 ], [ true, %8 ], [ %25, %20 ]
  br label %28

28:                                               ; preds = %26, %1
  %29 = phi i1 [ false, %1 ], [ %27, %26 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
