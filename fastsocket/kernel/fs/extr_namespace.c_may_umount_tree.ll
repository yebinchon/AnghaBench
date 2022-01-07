; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_may_umount_tree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_may_umount_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }

@vfsmount_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @may_umount_tree(%struct.vfsmount* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vfsmount*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vfsmount*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = call i32 @spin_lock(i32* @vfsmount_lock)
  %8 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  store %struct.vfsmount* %8, %struct.vfsmount** %6, align 8
  br label %9

9:                                                ; preds = %22, %1
  %10 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %11 = icmp ne %struct.vfsmount* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %14 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %13, i32 0, i32 0
  %15 = call i64 @atomic_read(i32* %14)
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %15
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 2
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %12
  %23 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %24 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  %25 = call %struct.vfsmount* @next_mnt(%struct.vfsmount* %23, %struct.vfsmount* %24)
  store %struct.vfsmount* %25, %struct.vfsmount** %6, align 8
  br label %9

26:                                               ; preds = %9
  %27 = call i32 @spin_unlock(i32* @vfsmount_lock)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %33

32:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.vfsmount* @next_mnt(%struct.vfsmount*, %struct.vfsmount*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
