; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_delegation.c_nfs_delegation_claim_locks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_delegation.c_nfs_delegation_claim_locks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_open_context = type { i32 }
%struct.nfs4_state = type { %struct.inode* }
%struct.inode = type { %struct.file_lock* }
%struct.file_lock = type { i32, i32, %struct.file_lock* }

@FL_POSIX = common dso_local global i32 0, align 4
@FL_FLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_open_context*, %struct.nfs4_state*, i32*)* @nfs_delegation_claim_locks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_delegation_claim_locks(%struct.nfs_open_context* %0, %struct.nfs4_state* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfs_open_context*, align 8
  %6 = alloca %struct.nfs4_state*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.file_lock*, align 8
  %10 = alloca i32, align 4
  store %struct.nfs_open_context* %0, %struct.nfs_open_context** %5, align 8
  store %struct.nfs4_state* %1, %struct.nfs4_state** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %12 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.inode*, %struct.inode** %8, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load %struct.file_lock*, %struct.file_lock** %15, align 8
  %17 = icmp eq %struct.file_lock* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %70

19:                                               ; preds = %3
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load %struct.file_lock*, %struct.file_lock** %21, align 8
  %23 = icmp eq %struct.file_lock* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %68

25:                                               ; preds = %19
  %26 = call i32 (...) @lock_kernel()
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load %struct.file_lock*, %struct.file_lock** %28, align 8
  store %struct.file_lock* %29, %struct.file_lock** %9, align 8
  br label %30

30:                                               ; preds = %62, %25
  %31 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %32 = icmp ne %struct.file_lock* %31, null
  br i1 %32, label %33, label %66

33:                                               ; preds = %30
  %34 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %35 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @FL_POSIX, align 4
  %38 = load i32, i32* @FL_FLOCK, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  br label %62

43:                                               ; preds = %33
  %44 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %45 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.nfs_open_context* @nfs_file_open_context(i32 %46)
  %48 = load %struct.nfs_open_context*, %struct.nfs_open_context** %5, align 8
  %49 = icmp ne %struct.nfs_open_context* %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %62

51:                                               ; preds = %43
  %52 = call i32 (...) @unlock_kernel()
  %53 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %54 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @nfs4_lock_delegation_recall(%struct.file_lock* %53, %struct.nfs4_state* %54, i32* %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %68

60:                                               ; preds = %51
  %61 = call i32 (...) @lock_kernel()
  br label %62

62:                                               ; preds = %60, %50, %42
  %63 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %64 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %63, i32 0, i32 2
  %65 = load %struct.file_lock*, %struct.file_lock** %64, align 8
  store %struct.file_lock* %65, %struct.file_lock** %9, align 8
  br label %30

66:                                               ; preds = %30
  %67 = call i32 (...) @unlock_kernel()
  br label %68

68:                                               ; preds = %66, %59, %24
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %18
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.nfs_open_context* @nfs_file_open_context(i32) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @nfs4_lock_delegation_recall(%struct.file_lock*, %struct.nfs4_state*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
