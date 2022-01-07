; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_dcache.c_d_splice_alias.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_dcache.c_d_splice_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }

@dcache_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @d_splice_alias(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  store %struct.dentry* null, %struct.dentry** %5, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = icmp ne %struct.inode* %6, null
  br i1 %7, label %8, label %46

8:                                                ; preds = %2
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @S_ISDIR(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %8
  %15 = call i32 @spin_lock(i32* @dcache_lock)
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = load %struct.dentry*, %struct.dentry** %4, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.dentry* @__find_moveable_alias(%struct.inode* %16, i32 %19)
  store %struct.dentry* %20, %struct.dentry** %5, align 8
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = icmp ne %struct.dentry* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %14
  %24 = call i32 @spin_unlock(i32* @dcache_lock)
  %25 = load %struct.dentry*, %struct.dentry** %5, align 8
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = call i32 @security_d_instantiate(%struct.dentry* %25, %struct.inode* %26)
  %28 = load %struct.dentry*, %struct.dentry** %4, align 8
  %29 = call i32 @d_rehash(%struct.dentry* %28)
  %30 = load %struct.dentry*, %struct.dentry** %5, align 8
  %31 = load %struct.dentry*, %struct.dentry** %4, align 8
  %32 = call i32 @d_move(%struct.dentry* %30, %struct.dentry* %31)
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = call i32 @iput(%struct.inode* %33)
  br label %45

35:                                               ; preds = %14
  %36 = load %struct.dentry*, %struct.dentry** %4, align 8
  %37 = load %struct.inode*, %struct.inode** %3, align 8
  %38 = call i32 @__d_instantiate(%struct.dentry* %36, %struct.inode* %37)
  %39 = call i32 @spin_unlock(i32* @dcache_lock)
  %40 = load %struct.dentry*, %struct.dentry** %4, align 8
  %41 = load %struct.inode*, %struct.inode** %3, align 8
  %42 = call i32 @security_d_instantiate(%struct.dentry* %40, %struct.inode* %41)
  %43 = load %struct.dentry*, %struct.dentry** %4, align 8
  %44 = call i32 @d_rehash(%struct.dentry* %43)
  br label %45

45:                                               ; preds = %35, %23
  br label %50

46:                                               ; preds = %8, %2
  %47 = load %struct.dentry*, %struct.dentry** %4, align 8
  %48 = load %struct.inode*, %struct.inode** %3, align 8
  %49 = call i32 @d_add(%struct.dentry* %47, %struct.inode* %48)
  br label %50

50:                                               ; preds = %46, %45
  %51 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %51
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dentry* @__find_moveable_alias(%struct.inode*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @security_d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @d_rehash(%struct.dentry*) #1

declare dso_local i32 @d_move(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @__d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
