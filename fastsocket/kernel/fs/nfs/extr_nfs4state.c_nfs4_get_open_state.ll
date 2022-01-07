; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_get_open_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_get_open_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state = type { i32, i32, i32, %struct.nfs4_state_owner* }
%struct.inode = type { i32 }
%struct.nfs4_state_owner = type { i32, i32, i32 }
%struct.nfs_inode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs4_state* @nfs4_get_open_state(%struct.inode* %0, %struct.nfs4_state_owner* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nfs4_state_owner*, align 8
  %5 = alloca %struct.nfs4_state*, align 8
  %6 = alloca %struct.nfs4_state*, align 8
  %7 = alloca %struct.nfs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.nfs4_state_owner* %1, %struct.nfs4_state_owner** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.nfs_inode* @NFS_I(%struct.inode* %8)
  store %struct.nfs_inode* %9, %struct.nfs_inode** %7, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %4, align 8
  %15 = call %struct.nfs4_state* @__nfs4_find_state_byowner(%struct.inode* %13, %struct.nfs4_state_owner* %14)
  store %struct.nfs4_state* %15, %struct.nfs4_state** %5, align 8
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = call i32 @spin_unlock(i32* %17)
  %19 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %20 = icmp ne %struct.nfs4_state* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %80

22:                                               ; preds = %2
  %23 = call %struct.nfs4_state* (...) @nfs4_alloc_open_state()
  store %struct.nfs4_state* %23, %struct.nfs4_state** %6, align 8
  %24 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %4, align 8
  %25 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %24, i32 0, i32 0
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.inode*, %struct.inode** %3, align 8
  %31 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %4, align 8
  %32 = call %struct.nfs4_state* @__nfs4_find_state_byowner(%struct.inode* %30, %struct.nfs4_state_owner* %31)
  store %struct.nfs4_state* %32, %struct.nfs4_state** %5, align 8
  %33 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %34 = icmp eq %struct.nfs4_state* %33, null
  br i1 %34, label %35, label %66

35:                                               ; preds = %22
  %36 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %37 = icmp ne %struct.nfs4_state* %36, null
  br i1 %37, label %38, label %66

38:                                               ; preds = %35
  %39 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  store %struct.nfs4_state* %39, %struct.nfs4_state** %5, align 8
  %40 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %4, align 8
  %41 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %42 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %41, i32 0, i32 3
  store %struct.nfs4_state_owner* %40, %struct.nfs4_state_owner** %42, align 8
  %43 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %4, align 8
  %44 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %43, i32 0, i32 2
  %45 = call i32 @atomic_inc(i32* %44)
  %46 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %47 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %46, i32 0, i32 2
  %48 = load %struct.nfs_inode*, %struct.nfs_inode** %7, align 8
  %49 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %48, i32 0, i32 0
  %50 = call i32 @list_add(i32* %47, i32* %49)
  %51 = load %struct.inode*, %struct.inode** %3, align 8
  %52 = call i32 @igrab(%struct.inode* %51)
  %53 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %54 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.inode*, %struct.inode** %3, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock(i32* %56)
  %58 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %59 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %58, i32 0, i32 0
  %60 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %4, align 8
  %61 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %60, i32 0, i32 1
  %62 = call i32 @list_add_tail(i32* %59, i32* %61)
  %63 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %4, align 8
  %64 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %63, i32 0, i32 0
  %65 = call i32 @spin_unlock(i32* %64)
  br label %79

66:                                               ; preds = %35, %22
  %67 = load %struct.inode*, %struct.inode** %3, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  %69 = call i32 @spin_unlock(i32* %68)
  %70 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %4, align 8
  %71 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %74 = icmp ne %struct.nfs4_state* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %77 = call i32 @nfs4_free_open_state(%struct.nfs4_state* %76)
  br label %78

78:                                               ; preds = %75, %66
  br label %79

79:                                               ; preds = %78, %38
  br label %80

80:                                               ; preds = %79, %21
  %81 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  ret %struct.nfs4_state* %81
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfs4_state* @__nfs4_find_state_byowner(%struct.inode*, %struct.nfs4_state_owner*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.nfs4_state* @nfs4_alloc_open_state(...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @nfs4_free_open_state(%struct.nfs4_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
