; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_update_open_stateid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_update_open_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state = type { i32 }
%struct.nfs_inode = type { %struct.nfs_delegation* }
%struct.nfs_delegation = type { i32, i32, i32, i32 }

@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@NFS_DELEGATION_RETURNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_state*, i32*, i32*, i32)* @update_open_stateid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_open_stateid(%struct.nfs4_state* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.nfs4_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfs_inode*, align 8
  %10 = alloca %struct.nfs_delegation*, align 8
  %11 = alloca i32, align 4
  store %struct.nfs4_state* %0, %struct.nfs4_state** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %13 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.nfs_inode* @NFS_I(i32 %14)
  store %struct.nfs_inode* %15, %struct.nfs_inode** %9, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* @FMODE_READ, align 4
  %17 = load i32, i32* @FMODE_WRITE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %8, align 4
  %21 = call i32 (...) @rcu_read_lock()
  %22 = load %struct.nfs_inode*, %struct.nfs_inode** %9, align 8
  %23 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %22, i32 0, i32 0
  %24 = load %struct.nfs_delegation*, %struct.nfs_delegation** %23, align 8
  %25 = call %struct.nfs_delegation* @rcu_dereference(%struct.nfs_delegation* %24)
  store %struct.nfs_delegation* %25, %struct.nfs_delegation** %10, align 8
  %26 = load %struct.nfs_delegation*, %struct.nfs_delegation** %10, align 8
  %27 = icmp eq %struct.nfs_delegation* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  br label %80

29:                                               ; preds = %4
  %30 = load %struct.nfs_delegation*, %struct.nfs_delegation** %10, align 8
  %31 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %30, i32 0, i32 1
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load %struct.nfs_inode*, %struct.nfs_inode** %9, align 8
  %34 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %33, i32 0, i32 0
  %35 = load %struct.nfs_delegation*, %struct.nfs_delegation** %34, align 8
  %36 = load %struct.nfs_delegation*, %struct.nfs_delegation** %10, align 8
  %37 = icmp ne %struct.nfs_delegation* %35, %36
  br i1 %37, label %52, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* @NFS_DELEGATION_RETURNING, align 4
  %40 = load %struct.nfs_delegation*, %struct.nfs_delegation** %10, align 8
  %41 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %40, i32 0, i32 3
  %42 = call i64 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %38
  %45 = load %struct.nfs_delegation*, %struct.nfs_delegation** %10, align 8
  %46 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44, %38, %29
  br label %76

53:                                               ; preds = %44
  %54 = load i32*, i32** %7, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.nfs_delegation*, %struct.nfs_delegation** %10, align 8
  %58 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %57, i32 0, i32 2
  store i32* %58, i32** %7, align 8
  br label %67

59:                                               ; preds = %53
  %60 = load %struct.nfs_delegation*, %struct.nfs_delegation** %10, align 8
  %61 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %60, i32 0, i32 2
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @nfs4_stateid_match(i32* %61, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  br label %76

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %56
  %68 = load %struct.nfs_delegation*, %struct.nfs_delegation** %10, align 8
  %69 = call i32 @nfs_mark_delegation_referenced(%struct.nfs_delegation* %68)
  %70 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load %struct.nfs_delegation*, %struct.nfs_delegation** %10, align 8
  %73 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %72, i32 0, i32 2
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @__update_open_stateid(%struct.nfs4_state* %70, i32* %71, i32* %73, i32 %74)
  store i32 1, i32* %11, align 4
  br label %76

76:                                               ; preds = %67, %65, %52
  %77 = load %struct.nfs_delegation*, %struct.nfs_delegation** %10, align 8
  %78 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %77, i32 0, i32 1
  %79 = call i32 @spin_unlock(i32* %78)
  br label %80

80:                                               ; preds = %76, %28
  %81 = call i32 (...) @rcu_read_unlock()
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %80
  %85 = load i32*, i32** %6, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @__update_open_stateid(%struct.nfs4_state* %88, i32* %89, i32* null, i32 %90)
  store i32 1, i32* %11, align 4
  br label %92

92:                                               ; preds = %87, %84, %80
  %93 = load i32, i32* %11, align 4
  ret i32 %93
}

declare dso_local %struct.nfs_inode* @NFS_I(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nfs_delegation* @rcu_dereference(%struct.nfs_delegation*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nfs4_stateid_match(i32*, i32*) #1

declare dso_local i32 @nfs_mark_delegation_referenced(%struct.nfs_delegation*) #1

declare dso_local i32 @__update_open_stateid(%struct.nfs4_state*, i32*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
