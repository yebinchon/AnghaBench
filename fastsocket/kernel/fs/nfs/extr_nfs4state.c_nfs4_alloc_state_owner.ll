; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_alloc_state_owner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_alloc_state_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state_owner = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }

@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Seqid_waitqueue\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_state_owner* ()* @nfs4_alloc_state_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_state_owner* @nfs4_alloc_state_owner() #0 {
  %1 = alloca %struct.nfs4_state_owner*, align 8
  %2 = alloca %struct.nfs4_state_owner*, align 8
  %3 = load i32, i32* @GFP_NOFS, align 4
  %4 = call %struct.nfs4_state_owner* @kzalloc(i32 48, i32 %3)
  store %struct.nfs4_state_owner* %4, %struct.nfs4_state_owner** %2, align 8
  %5 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %2, align 8
  %6 = icmp ne %struct.nfs4_state_owner* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.nfs4_state_owner* null, %struct.nfs4_state_owner** %1, align 8
  br label %45

8:                                                ; preds = %0
  %9 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %2, align 8
  %10 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %9, i32 0, i32 7
  %11 = call i32 @spin_lock_init(i32* %10)
  %12 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %2, align 8
  %13 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %12, i32 0, i32 6
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %2, align 8
  %16 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = call i32 @rpc_init_wait_queue(i32* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %2, align 8
  %20 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %19, i32 0, i32 4
  %21 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %2, align 8
  %22 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %23, align 8
  %24 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %2, align 8
  %25 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %2, align 8
  %29 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %2, align 8
  %33 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %32, i32 0, i32 3
  %34 = call i32 @atomic_set(i32* %33, i32 1)
  %35 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %2, align 8
  %36 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %35, i32 0, i32 2
  %37 = call i32 @seqcount_init(i32* %36)
  %38 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %2, align 8
  %39 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %38, i32 0, i32 1
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %2, align 8
  %42 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %41, i32 0, i32 0
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %2, align 8
  store %struct.nfs4_state_owner* %44, %struct.nfs4_state_owner** %1, align 8
  br label %45

45:                                               ; preds = %8, %7
  %46 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %1, align 8
  ret %struct.nfs4_state_owner* %46
}

declare dso_local %struct.nfs4_state_owner* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @rpc_init_wait_queue(i32*, i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @seqcount_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
