; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c___wait_on_freeing_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c___wait_on_freeing_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32 }

@wait = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@__I_LOCK = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@inode_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @__wait_on_freeing_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__wait_on_freeing_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i32*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = getelementptr inbounds %struct.inode, %struct.inode* %4, i32 0, i32 0
  %6 = load i32, i32* @__I_LOCK, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @wait, i32 0, i32 0), align 4
  %8 = call i32 @DEFINE_WAIT_BIT(i32 %7, i32* %5, i32 %6)
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i32, i32* @__I_LOCK, align 4
  %12 = call i32* @bit_waitqueue(i32* %10, i32 %11)
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %15 = call i32 @prepare_to_wait(i32* %13, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @wait, i32 0, i32 0), i32 %14)
  %16 = call i32 @spin_unlock(i32* @inode_lock)
  %17 = call i32 (...) @schedule()
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @finish_wait(i32* %18, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @wait, i32 0, i32 0))
  %20 = call i32 @spin_lock(i32* @inode_lock)
  ret void
}

declare dso_local i32 @DEFINE_WAIT_BIT(i32, i32*, i32) #1

declare dso_local i32* @bit_waitqueue(i32*, i32) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
