; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_callback.c_afs_discard_callback_on_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_callback.c_afs_discard_callback_on_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { i32, i32, %struct.afs_server* }
%struct.afs_server = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c" [not promised]\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @afs_discard_callback_on_delete(%struct.afs_vnode* %0) #0 {
  %2 = alloca %struct.afs_vnode*, align 8
  %3 = alloca %struct.afs_server*, align 8
  store %struct.afs_vnode* %0, %struct.afs_vnode** %2, align 8
  %4 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %5 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %4, i32 0, i32 2
  %6 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  store %struct.afs_server* %6, %struct.afs_server** %3, align 8
  %7 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %8 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @_enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %12 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = call i32 @_leave(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %49

17:                                               ; preds = %1
  %18 = load %struct.afs_server*, %struct.afs_server** %3, align 8
  %19 = icmp ne %struct.afs_server* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.afs_server*, %struct.afs_server** %3, align 8
  %23 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %26 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %17
  %30 = load %struct.afs_server*, %struct.afs_server** %3, align 8
  %31 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  %37 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %38 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %37, i32 0, i32 1
  %39 = load %struct.afs_server*, %struct.afs_server** %3, align 8
  %40 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %39, i32 0, i32 1
  %41 = call i32 @rb_erase(i32* %38, %struct.TYPE_2__* %40)
  %42 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %43 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  br label %44

44:                                               ; preds = %29, %17
  %45 = load %struct.afs_server*, %struct.afs_server** %3, align 8
  %46 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %44, %15
  ret void
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i32 @_leave(i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rb_erase(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
