; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_journal.c_jbd2_journal_release_jbd_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_journal.c_jbd2_journal_release_jbd_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32* }
%struct.jbd2_inode = type { i32*, i32, i32 }

@__JI_COMMIT_RUNNING = common dso_local global i32 0, align 4
@wait = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jbd2_journal_release_jbd_inode(%struct.TYPE_5__* %0, %struct.jbd2_inode* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.jbd2_inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.jbd2_inode* %1, %struct.jbd2_inode** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %64

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %20, %10
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load i32, i32* @__JI_COMMIT_RUNNING, align 4
  %16 = load %struct.jbd2_inode*, %struct.jbd2_inode** %4, align 8
  %17 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %16, i32 0, i32 2
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %11
  %21 = load %struct.jbd2_inode*, %struct.jbd2_inode** %4, align 8
  %22 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %21, i32 0, i32 2
  %23 = load i32, i32* @__JI_COMMIT_RUNNING, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @wait, i32 0, i32 0), align 4
  %25 = call i32 @DEFINE_WAIT_BIT(i32 %24, i32* %22, i32 %23)
  %26 = call i32 (...) @smp_mb()
  %27 = load %struct.jbd2_inode*, %struct.jbd2_inode** %4, align 8
  %28 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %27, i32 0, i32 2
  %29 = load i32, i32* @__JI_COMMIT_RUNNING, align 4
  %30 = call i32* @bit_waitqueue(i32* %28, i32 %29)
  store i32* %30, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %33 = call i32 @prepare_to_wait(i32* %31, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @wait, i32 0, i32 0), i32 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock(i32* %35)
  %37 = call i32 (...) @schedule()
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @finish_wait(i32* %38, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @wait, i32 0, i32 0))
  br label %11

40:                                               ; preds = %11
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.jbd2_inode*, %struct.jbd2_inode** %4, align 8
  %45 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 1, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %40
  %50 = load %struct.jbd2_inode*, %struct.jbd2_inode** %4, align 8
  %51 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.jbd2_inode*, %struct.jbd2_inode** %4, align 8
  %56 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %55, i32 0, i32 1
  %57 = call i32 @list_del(i32* %56)
  %58 = load %struct.jbd2_inode*, %struct.jbd2_inode** %4, align 8
  %59 = getelementptr inbounds %struct.jbd2_inode, %struct.jbd2_inode* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %54, %49
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock(i32* %62)
  br label %64

64:                                               ; preds = %60, %9
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @DEFINE_WAIT_BIT(i32, i32*, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32* @bit_waitqueue(i32*, i32) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
