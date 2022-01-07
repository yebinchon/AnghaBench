; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_do_add_mount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_do_add_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.path = type { i32 }
%struct.list_head = type { i32 }

@namespace_sem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_add_mount(%struct.vfsmount* %0, %struct.path* %1, i32 %2, %struct.list_head* %3) #0 {
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca %struct.path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i32, align 4
  store %struct.vfsmount* %0, %struct.vfsmount** %5, align 8
  store %struct.path* %1, %struct.path** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.list_head* %3, %struct.list_head** %8, align 8
  %10 = call i32 @down_write(i32* @namespace_sem)
  %11 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %12 = load %struct.path*, %struct.path** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @do_add_mount_unlocked(%struct.vfsmount* %11, %struct.path* %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %4
  %18 = load %struct.list_head*, %struct.list_head** %8, align 8
  %19 = icmp ne %struct.list_head* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %22 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %21, i32 0, i32 0
  %23 = load %struct.list_head*, %struct.list_head** %8, align 8
  %24 = call i32 @list_add_tail(i32* %22, %struct.list_head* %23)
  br label %25

25:                                               ; preds = %20, %17
  br label %26

26:                                               ; preds = %25, %4
  %27 = call i32 @up_write(i32* @namespace_sem)
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %32 = call i32 @mntput(%struct.vfsmount* %31)
  br label %33

33:                                               ; preds = %30, %26
  %34 = load i32, i32* %9, align 4
  ret i32 %34
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @do_add_mount_unlocked(%struct.vfsmount*, %struct.path*, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @mntput(%struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
