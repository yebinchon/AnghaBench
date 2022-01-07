; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_map_atomic_open_claim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_map_atomic_open_claim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }

@NFS_CAP_ATOMIC_OPEN_V1 = common dso_local global i32 0, align 4
@NFS4_OPEN_CLAIM_NULL = common dso_local global i32 0, align 4
@NFS4_OPEN_CLAIM_DELEGATE_CUR = common dso_local global i32 0, align 4
@NFS4_OPEN_CLAIM_DELEGATE_PREV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, i32)* @nfs4_map_atomic_open_claim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_map_atomic_open_claim(%struct.nfs_server* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_server*, align 8
  %5 = alloca i32, align 4
  store %struct.nfs_server* %0, %struct.nfs_server** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %7 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @NFS_CAP_ATOMIC_OPEN_V1, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %3, align 4
  br label %24

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %16 [
    i32 128, label %18
    i32 130, label %20
    i32 129, label %22
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %3, align 4
  br label %24

18:                                               ; preds = %14
  %19 = load i32, i32* @NFS4_OPEN_CLAIM_NULL, align 4
  store i32 %19, i32* %3, align 4
  br label %24

20:                                               ; preds = %14
  %21 = load i32, i32* @NFS4_OPEN_CLAIM_DELEGATE_CUR, align 4
  store i32 %21, i32* %3, align 4
  br label %24

22:                                               ; preds = %14
  %23 = load i32, i32* @NFS4_OPEN_CLAIM_DELEGATE_PREV, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %22, %20, %18, %16, %12
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
