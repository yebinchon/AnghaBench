; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_can_open_delegated.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_can_open_delegated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_delegation = type { i32, i32 }

@NFS_DELEGATION_NEED_RECLAIM = common dso_local global i32 0, align 4
@NFS_DELEGATION_RETURNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_delegation*, i32)* @can_open_delegated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_open_delegated(%struct.nfs_delegation* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_delegation*, align 8
  %5 = alloca i32, align 4
  store %struct.nfs_delegation* %0, %struct.nfs_delegation** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.nfs_delegation*, %struct.nfs_delegation** %4, align 8
  %7 = icmp eq %struct.nfs_delegation* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

9:                                                ; preds = %2
  %10 = load %struct.nfs_delegation*, %struct.nfs_delegation** %4, align 8
  %11 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %35

18:                                               ; preds = %9
  %19 = load i32, i32* @NFS_DELEGATION_NEED_RECLAIM, align 4
  %20 = load %struct.nfs_delegation*, %struct.nfs_delegation** %4, align 8
  %21 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %20, i32 0, i32 1
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %35

25:                                               ; preds = %18
  %26 = load i32, i32* @NFS_DELEGATION_RETURNING, align 4
  %27 = load %struct.nfs_delegation*, %struct.nfs_delegation** %4, align 8
  %28 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %27, i32 0, i32 1
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %35

32:                                               ; preds = %25
  %33 = load %struct.nfs_delegation*, %struct.nfs_delegation** %4, align 8
  %34 = call i32 @nfs_mark_delegation_referenced(%struct.nfs_delegation* %33)
  store i32 1, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %31, %24, %17, %8
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nfs_mark_delegation_referenced(%struct.nfs_delegation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
