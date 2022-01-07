; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_dcache.c___d_instantiate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_dcache.c___d_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode*, i32, i32 }
%struct.inode = type { i32 }

@DCACHE_NEED_AUTOMOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*, %struct.inode*)* @__d_instantiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__d_instantiate(%struct.dentry* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %5 = load %struct.inode*, %struct.inode** %4, align 8
  %6 = icmp ne %struct.inode* %5, null
  br i1 %6, label %7, label %24

7:                                                ; preds = %2
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call i32 @IS_AUTOMOUNT(%struct.inode* %8)
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load i32, i32* @DCACHE_NEED_AUTOMOUNT, align 4
  %14 = load %struct.dentry*, %struct.dentry** %3, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  br label %18

18:                                               ; preds = %12, %7
  %19 = load %struct.dentry*, %struct.dentry** %3, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 1
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = call i32 @list_add(i32* %20, i32* %22)
  br label %24

24:                                               ; preds = %18, %2
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = load %struct.dentry*, %struct.dentry** %3, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 0
  store %struct.inode* %25, %struct.inode** %27, align 8
  %28 = load %struct.dentry*, %struct.dentry** %3, align 8
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = call i32 @fsnotify_d_instantiate(%struct.dentry* %28, %struct.inode* %29)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IS_AUTOMOUNT(%struct.inode*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @fsnotify_d_instantiate(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
