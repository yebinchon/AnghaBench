; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_dentry_unhash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_dentry_unhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32 }

@dcache_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dentry_unhash(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %3 = load %struct.dentry*, %struct.dentry** %2, align 8
  %4 = call i32 @dget(%struct.dentry* %3)
  %5 = load %struct.dentry*, %struct.dentry** %2, align 8
  %6 = call i32 @shrink_dcache_parent(%struct.dentry* %5)
  %7 = call i32 @spin_lock(i32* @dcache_lock)
  %8 = load %struct.dentry*, %struct.dentry** %2, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.dentry*, %struct.dentry** %2, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 1
  %13 = call i32 @atomic_read(i32* %12)
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.dentry*, %struct.dentry** %2, align 8
  %17 = call i32 @__d_drop(%struct.dentry* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.dentry*, %struct.dentry** %2, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = call i32 @spin_unlock(i32* @dcache_lock)
  ret void
}

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @shrink_dcache_parent(%struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @__d_drop(%struct.dentry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
