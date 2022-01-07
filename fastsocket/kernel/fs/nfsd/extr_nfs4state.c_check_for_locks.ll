; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_check_for_locks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_check_for_locks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_file = type { %struct.inode* }
%struct.inode = type { %struct.file_lock* }
%struct.file_lock = type { i64, %struct.file_lock* }
%struct.nfs4_stateowner = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_file*, %struct.nfs4_stateowner*)* @check_for_locks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_for_locks(%struct.nfs4_file* %0, %struct.nfs4_stateowner* %1) #0 {
  %3 = alloca %struct.nfs4_file*, align 8
  %4 = alloca %struct.nfs4_stateowner*, align 8
  %5 = alloca %struct.file_lock**, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  store %struct.nfs4_file* %0, %struct.nfs4_file** %3, align 8
  store %struct.nfs4_stateowner* %1, %struct.nfs4_stateowner** %4, align 8
  %8 = load %struct.nfs4_file*, %struct.nfs4_file** %3, align 8
  %9 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %8, i32 0, i32 0
  %10 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %10, %struct.inode** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = call i32 (...) @lock_kernel()
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  store %struct.file_lock** %13, %struct.file_lock*** %5, align 8
  br label %14

14:                                               ; preds = %28, %2
  %15 = load %struct.file_lock**, %struct.file_lock*** %5, align 8
  %16 = load %struct.file_lock*, %struct.file_lock** %15, align 8
  %17 = icmp ne %struct.file_lock* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = load %struct.file_lock**, %struct.file_lock*** %5, align 8
  %20 = load %struct.file_lock*, %struct.file_lock** %19, align 8
  %21 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %4, align 8
  %24 = ptrtoint %struct.nfs4_stateowner* %23 to i64
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 1, i32* %7, align 4
  br label %33

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.file_lock**, %struct.file_lock*** %5, align 8
  %30 = load %struct.file_lock*, %struct.file_lock** %29, align 8
  %31 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %30, i32 0, i32 1
  store %struct.file_lock** %31, %struct.file_lock*** %5, align 8
  br label %14

32:                                               ; preds = %14
  br label %33

33:                                               ; preds = %32, %26
  %34 = call i32 (...) @unlock_kernel()
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
