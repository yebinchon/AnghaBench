; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_vnode.c_afs_vnode_deleted_remotely.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_vnode.c_afs_vnode_deleted_remotely.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { i32, %struct.afs_server*, i32, i32, i32 }
%struct.afs_server = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"{%p}\00", align 1
@AFS_VNODE_DELETED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.afs_vnode*)* @afs_vnode_deleted_remotely to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @afs_vnode_deleted_remotely(%struct.afs_vnode* %0) #0 {
  %2 = alloca %struct.afs_vnode*, align 8
  %3 = alloca %struct.afs_server*, align 8
  store %struct.afs_vnode* %0, %struct.afs_vnode** %2, align 8
  %4 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %5 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %4, i32 0, i32 1
  %6 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  %7 = call i32 @_enter(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.afs_server* %6)
  %8 = load i32, i32* @AFS_VNODE_DELETED, align 4
  %9 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %10 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %9, i32 0, i32 4
  %11 = call i32 @set_bit(i32 %8, i32* %10)
  %12 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %13 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %12, i32 0, i32 1
  %14 = load %struct.afs_server*, %struct.afs_server** %13, align 8
  store %struct.afs_server* %14, %struct.afs_server** %3, align 8
  %15 = load %struct.afs_server*, %struct.afs_server** %3, align 8
  %16 = icmp ne %struct.afs_server* %15, null
  br i1 %16, label %17, label %58

17:                                               ; preds = %1
  %18 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %19 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %17
  %23 = load %struct.afs_server*, %struct.afs_server** %3, align 8
  %24 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %23, i32 0, i32 2
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %27 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %32 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %31, i32 0, i32 3
  %33 = load %struct.afs_server*, %struct.afs_server** %3, align 8
  %34 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %33, i32 0, i32 3
  %35 = call i32 @rb_erase(i32* %32, i32* %34)
  %36 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %37 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  br label %38

38:                                               ; preds = %30, %22
  %39 = load %struct.afs_server*, %struct.afs_server** %3, align 8
  %40 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %39, i32 0, i32 2
  %41 = call i32 @spin_unlock(i32* %40)
  br label %42

42:                                               ; preds = %38, %17
  %43 = load %struct.afs_server*, %struct.afs_server** %3, align 8
  %44 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %43, i32 0, i32 0
  %45 = call i32 @spin_lock(i32* %44)
  %46 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %47 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %46, i32 0, i32 2
  %48 = load %struct.afs_server*, %struct.afs_server** %3, align 8
  %49 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %48, i32 0, i32 1
  %50 = call i32 @rb_erase(i32* %47, i32* %49)
  %51 = load %struct.afs_server*, %struct.afs_server** %3, align 8
  %52 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock(i32* %52)
  %54 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %55 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %54, i32 0, i32 1
  store %struct.afs_server* null, %struct.afs_server** %55, align 8
  %56 = load %struct.afs_server*, %struct.afs_server** %3, align 8
  %57 = call i32 @afs_put_server(%struct.afs_server* %56)
  br label %66

58:                                               ; preds = %1
  %59 = load %struct.afs_vnode*, %struct.afs_vnode** %2, align 8
  %60 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @ASSERT(i32 %64)
  br label %66

66:                                               ; preds = %58, %42
  %67 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @_enter(i8*, %struct.afs_server*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @afs_put_server(%struct.afs_server*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
