; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_callback.c_afs_give_up_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_callback.c_afs_give_up_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { i64, i32, %struct.afs_server* }
%struct.afs_server = type { i32, i32 }

@myself = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"GIVE UP INODE %p\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c" [not promised]\00", align 1
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @afs_give_up_callback(%struct.afs_vnode* %0) #0 {
  %2 = alloca %struct.afs_vnode*, align 8
  %3 = alloca %struct.afs_server*, align 8
  store %struct.afs_vnode* %0, %struct.afs_vnode** %2, align 8
  %4 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %5 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %4, i32 0, i32 2
  %6 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  store %struct.afs_server* %6, %struct.afs_server** %3, align 8
  %7 = load i32, i32* @myself, align 4
  %8 = load i32, i32* @current, align 4
  %9 = call i32 @DECLARE_WAITQUEUE(i32 %7, i32 %8)
  %10 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %11 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @_enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %15 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %14, i32 0, i32 1
  %16 = call i32 @_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %15)
  %17 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %18 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = call i32 @_leave(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %83

23:                                               ; preds = %1
  %24 = load %struct.afs_server*, %struct.afs_server** %3, align 8
  %25 = icmp ne %struct.afs_server* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load %struct.afs_server*, %struct.afs_server** %3, align 8
  %29 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %32 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %69

35:                                               ; preds = %23
  %36 = load %struct.afs_server*, %struct.afs_server** %3, align 8
  %37 = call i64 @afs_breakring_space(%struct.afs_server* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %69

39:                                               ; preds = %35
  %40 = load %struct.afs_server*, %struct.afs_server** %3, align 8
  %41 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %40, i32 0, i32 1
  %42 = call i32 @add_wait_queue(i32* %41, i32* @myself)
  br label %43

43:                                               ; preds = %55, %39
  %44 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %45 = call i32 @set_current_state(i32 %44)
  %46 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %47 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load %struct.afs_server*, %struct.afs_server** %3, align 8
  %52 = call i64 @afs_breakring_space(%struct.afs_server* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %43
  br label %63

55:                                               ; preds = %50
  %56 = load %struct.afs_server*, %struct.afs_server** %3, align 8
  %57 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock(i32* %57)
  %59 = call i32 (...) @schedule()
  %60 = load %struct.afs_server*, %struct.afs_server** %3, align 8
  %61 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %60, i32 0, i32 0
  %62 = call i32 @spin_lock(i32* %61)
  br label %43

63:                                               ; preds = %54
  %64 = load %struct.afs_server*, %struct.afs_server** %3, align 8
  %65 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %64, i32 0, i32 1
  %66 = call i32 @remove_wait_queue(i32* %65, i32* @myself)
  %67 = load i32, i32* @TASK_RUNNING, align 4
  %68 = call i32 @__set_current_state(i32 %67)
  br label %69

69:                                               ; preds = %63, %35, %23
  %70 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %71 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.afs_server*, %struct.afs_server** %3, align 8
  %76 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %77 = call i32 @afs_do_give_up_callback(%struct.afs_server* %75, %struct.afs_vnode* %76)
  br label %78

78:                                               ; preds = %74, %69
  %79 = load %struct.afs_server*, %struct.afs_server** %3, align 8
  %80 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %79, i32 0, i32 0
  %81 = call i32 @spin_unlock(i32* %80)
  %82 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  br label %83

83:                                               ; preds = %78, %21
  ret void
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @_enter(i8*, i64) #1

declare dso_local i32 @_debug(i8*, i32*) #1

declare dso_local i32 @_leave(i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @afs_breakring_space(%struct.afs_server*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @afs_do_give_up_callback(%struct.afs_server*, %struct.afs_vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
