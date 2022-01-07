; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_put_open_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_put_open_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state = type { i32, i32, i32, %struct.nfs4_state_owner*, %struct.inode* }
%struct.nfs4_state_owner = type { i32 }
%struct.inode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs4_put_open_state(%struct.nfs4_state* %0) #0 {
  %2 = alloca %struct.nfs4_state*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nfs4_state_owner*, align 8
  store %struct.nfs4_state* %0, %struct.nfs4_state** %2, align 8
  %5 = load %struct.nfs4_state*, %struct.nfs4_state** %2, align 8
  %6 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %5, i32 0, i32 4
  %7 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %7, %struct.inode** %3, align 8
  %8 = load %struct.nfs4_state*, %struct.nfs4_state** %2, align 8
  %9 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %8, i32 0, i32 3
  %10 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %9, align 8
  store %struct.nfs4_state_owner* %10, %struct.nfs4_state_owner** %4, align 8
  %11 = load %struct.nfs4_state*, %struct.nfs4_state** %2, align 8
  %12 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %11, i32 0, i32 2
  %13 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %4, align 8
  %14 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %13, i32 0, i32 0
  %15 = call i32 @atomic_dec_and_lock(i32* %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %40

18:                                               ; preds = %1
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.nfs4_state*, %struct.nfs4_state** %2, align 8
  %23 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %22, i32 0, i32 1
  %24 = call i32 @list_del(i32* %23)
  %25 = load %struct.nfs4_state*, %struct.nfs4_state** %2, align 8
  %26 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %25, i32 0, i32 0
  %27 = call i32 @list_del(i32* %26)
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %4, align 8
  %32 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load %struct.inode*, %struct.inode** %3, align 8
  %35 = call i32 @iput(%struct.inode* %34)
  %36 = load %struct.nfs4_state*, %struct.nfs4_state** %2, align 8
  %37 = call i32 @nfs4_free_open_state(%struct.nfs4_state* %36)
  %38 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %4, align 8
  %39 = call i32 @nfs4_put_state_owner(%struct.nfs4_state_owner* %38)
  br label %40

40:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @atomic_dec_and_lock(i32*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @nfs4_free_open_state(%struct.nfs4_state*) #1

declare dso_local i32 @nfs4_put_state_owner(%struct.nfs4_state_owner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
