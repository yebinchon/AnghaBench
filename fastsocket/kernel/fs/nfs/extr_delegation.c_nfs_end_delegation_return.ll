; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_delegation.c_nfs_end_delegation_return.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_delegation.c_nfs_end_delegation_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_delegation = type { i32 }
%struct.nfs_client = type { i32 }
%struct.nfs_inode = type { i32 }
%struct.TYPE_3__ = type { %struct.nfs_client* }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.nfs_delegation*, i32)* @nfs_end_delegation_return to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_end_delegation_return(%struct.inode* %0, %struct.nfs_delegation* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.nfs_delegation*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs_client*, align 8
  %9 = alloca %struct.nfs_inode*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.nfs_delegation* %1, %struct.nfs_delegation** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = call %struct.TYPE_3__* @NFS_SERVER(%struct.inode* %11)
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.nfs_client*, %struct.nfs_client** %13, align 8
  store %struct.nfs_client* %14, %struct.nfs_client** %8, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = call %struct.nfs_inode* @NFS_I(%struct.inode* %15)
  store %struct.nfs_inode* %16, %struct.nfs_inode** %9, align 8
  %17 = load %struct.nfs_delegation*, %struct.nfs_delegation** %6, align 8
  %18 = icmp eq %struct.nfs_delegation* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %62

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %37, %20
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = load %struct.nfs_delegation*, %struct.nfs_delegation** %6, align 8
  %24 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %23, i32 0, i32 0
  %25 = call i32 @nfs_delegation_claim_opens(%struct.inode* %22, i32* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @EAGAIN, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %21
  br label %40

34:                                               ; preds = %28
  %35 = load %struct.nfs_client*, %struct.nfs_client** %8, align 8
  %36 = call i32 @nfs4_wait_clnt_recover(%struct.nfs_client* %35)
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %21, label %40

40:                                               ; preds = %37, %33
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.nfs_delegation*, %struct.nfs_delegation** %6, align 8
  %45 = load %struct.nfs_client*, %struct.nfs_client** %8, align 8
  %46 = call i32 @nfs_abort_delegation_return(%struct.nfs_delegation* %44, %struct.nfs_client* %45)
  br label %60

47:                                               ; preds = %40
  %48 = load %struct.nfs_inode*, %struct.nfs_inode** %9, align 8
  %49 = load %struct.nfs_delegation*, %struct.nfs_delegation** %6, align 8
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = call %struct.TYPE_3__* @NFS_SERVER(%struct.inode* %50)
  %52 = call i32 @nfs_detach_delegation(%struct.nfs_inode* %48, %struct.nfs_delegation* %49, %struct.TYPE_3__* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  br label %60

55:                                               ; preds = %47
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = load %struct.nfs_delegation*, %struct.nfs_delegation** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @nfs_do_return_delegation(%struct.inode* %56, %struct.nfs_delegation* %57, i32 %58)
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %55, %54, %43
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %19
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.TYPE_3__* @NFS_SERVER(%struct.inode*) #1

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i32 @nfs_delegation_claim_opens(%struct.inode*, i32*) #1

declare dso_local i32 @nfs4_wait_clnt_recover(%struct.nfs_client*) #1

declare dso_local i32 @nfs_abort_delegation_return(%struct.nfs_delegation*, %struct.nfs_client*) #1

declare dso_local i32 @nfs_detach_delegation(%struct.nfs_inode*, %struct.nfs_delegation*, %struct.TYPE_3__*) #1

declare dso_local i32 @nfs_do_return_delegation(%struct.inode*, %struct.nfs_delegation*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
