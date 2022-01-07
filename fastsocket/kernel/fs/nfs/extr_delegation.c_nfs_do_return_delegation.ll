; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_delegation.c_nfs_do_return_delegation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_delegation.c_nfs_do_return_delegation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_delegation = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.nfs_delegation*, i32)* @nfs_do_return_delegation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_do_return_delegation(%struct.inode* %0, %struct.nfs_delegation* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nfs_delegation*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.nfs_delegation* %1, %struct.nfs_delegation** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = load %struct.nfs_delegation*, %struct.nfs_delegation** %5, align 8
  %10 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.nfs_delegation*, %struct.nfs_delegation** %5, align 8
  %13 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %12, i32 0, i32 0
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @nfs4_proc_delegreturn(%struct.inode* %8, i32 %11, i32* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.nfs_delegation*, %struct.nfs_delegation** %5, align 8
  %17 = call i32 @nfs_free_delegation(%struct.nfs_delegation* %16)
  %18 = load i32, i32* %7, align 4
  ret i32 %18
}

declare dso_local i32 @nfs4_proc_delegreturn(%struct.inode*, i32, i32*, i32) #1

declare dso_local i32 @nfs_free_delegation(%struct.nfs_delegation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
