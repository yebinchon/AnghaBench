; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_dcache.c_d_instantiate_unique.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_dcache.c_d_instantiate_unique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }

@dcache_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @d_instantiate_unique(%struct.dentry* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %7 = load %struct.dentry*, %struct.dentry** %4, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 0
  %9 = call i32 @list_empty(i32* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = call i32 @spin_lock(i32* @dcache_lock)
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call %struct.dentry* @__d_instantiate_unique(%struct.dentry* %15, %struct.inode* %16)
  store %struct.dentry* %17, %struct.dentry** %6, align 8
  %18 = call i32 @spin_unlock(i32* @dcache_lock)
  %19 = load %struct.dentry*, %struct.dentry** %6, align 8
  %20 = icmp ne %struct.dentry* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load %struct.dentry*, %struct.dentry** %4, align 8
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = call i32 @security_d_instantiate(%struct.dentry* %22, %struct.inode* %23)
  store %struct.dentry* null, %struct.dentry** %3, align 8
  br label %35

25:                                               ; preds = %2
  %26 = load %struct.dentry*, %struct.dentry** %6, align 8
  %27 = call i32 @d_unhashed(%struct.dentry* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = call i32 @iput(%struct.inode* %32)
  %34 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %34, %struct.dentry** %3, align 8
  br label %35

35:                                               ; preds = %25, %21
  %36 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %36
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dentry* @__d_instantiate_unique(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @security_d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @d_unhashed(%struct.dentry*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
