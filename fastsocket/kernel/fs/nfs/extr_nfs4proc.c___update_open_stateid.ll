; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c___update_open_stateid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c___update_open_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@NFS_DELEGATED_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_state*, i32*, i32*, i32)* @__update_open_stateid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__update_open_stateid(%struct.nfs4_state* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.nfs4_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.nfs4_state* %0, %struct.nfs4_state** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %10 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %9, i32 0, i32 1
  %11 = call i32 @write_seqlock(i32* %10)
  %12 = load i32*, i32** %7, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %4
  %15 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %16 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %15, i32 0, i32 3
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @nfs4_stateid_copy(i32* %16, i32* %17)
  %19 = load i32, i32* @NFS_DELEGATED_STATE, align 4
  %20 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %21 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %20, i32 0, i32 2
  %22 = call i32 @set_bit(i32 %19, i32* %21)
  br label %23

23:                                               ; preds = %14, %4
  %24 = load i32*, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @nfs_set_open_stateid_locked(%struct.nfs4_state* %27, i32* %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %23
  %32 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %33 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %32, i32 0, i32 1
  %34 = call i32 @write_sequnlock(i32* %33)
  %35 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %36 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @update_open_stateflags(%struct.nfs4_state* %40, i32 %41)
  %43 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %44 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  ret void
}

declare dso_local i32 @write_seqlock(i32*) #1

declare dso_local i32 @nfs4_stateid_copy(i32*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nfs_set_open_stateid_locked(%struct.nfs4_state*, i32*, i32) #1

declare dso_local i32 @write_sequnlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @update_open_stateflags(%struct.nfs4_state*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
