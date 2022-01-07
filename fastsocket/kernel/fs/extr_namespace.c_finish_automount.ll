; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_finish_automount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_finish_automount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i64, i64, i32, i32 }
%struct.path = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@ELOOP = common dso_local global i32 0, align 4
@MNT_SHRINKABLE = common dso_local global i32 0, align 4
@namespace_sem = common dso_local global i32 0, align 4
@vfsmount_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @finish_automount(%struct.vfsmount* %0, %struct.path* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.path*, align 8
  %6 = alloca i32, align 4
  store %struct.vfsmount* %0, %struct.vfsmount** %4, align 8
  store %struct.path* %1, %struct.path** %5, align 8
  %7 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %8 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %7, i32 0, i32 3
  %9 = call i32 @atomic_read(i32* %8)
  %10 = icmp slt i32 %9, 2
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %14 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.path*, %struct.path** %5, align 8
  %17 = getelementptr inbounds %struct.path, %struct.path* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %15, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %2
  %23 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %24 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.path*, %struct.path** %5, align 8
  %27 = getelementptr inbounds %struct.path, %struct.path* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @ELOOP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %48

33:                                               ; preds = %22, %2
  %34 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %35 = load %struct.path*, %struct.path** %5, align 8
  %36 = load %struct.path*, %struct.path** %5, align 8
  %37 = getelementptr inbounds %struct.path, %struct.path* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MNT_SHRINKABLE, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @__do_add_mount(%struct.vfsmount* %34, %struct.path* %35, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %67

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47, %30
  %49 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %50 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %49, i32 0, i32 2
  %51 = call i32 @list_empty(i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %48
  %54 = call i32 @down_write(i32* @namespace_sem)
  %55 = call i32 @spin_lock(i32* @vfsmount_lock)
  %56 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %57 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %56, i32 0, i32 2
  %58 = call i32 @list_del_init(i32* %57)
  %59 = call i32 @spin_unlock(i32* @vfsmount_lock)
  %60 = call i32 @up_write(i32* @namespace_sem)
  br label %61

61:                                               ; preds = %53, %48
  %62 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %63 = call i32 @mntput(%struct.vfsmount* %62)
  %64 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %65 = call i32 @mntput(%struct.vfsmount* %64)
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %61, %46
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @__do_add_mount(%struct.vfsmount*, %struct.path*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @mntput(%struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
