; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_mnt_unpin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_mnt_unpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i64, i32 }

@vfsmount_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mnt_unpin(%struct.vfsmount* %0) #0 {
  %2 = alloca %struct.vfsmount*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %2, align 8
  %3 = call i32 @spin_lock(i32* @vfsmount_lock)
  %4 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %5 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %10 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %9, i32 0, i32 1
  %11 = call i32 @atomic_inc(i32* %10)
  %12 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %13 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %13, align 8
  br label %16

16:                                               ; preds = %8, %1
  %17 = call i32 @spin_unlock(i32* @vfsmount_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
