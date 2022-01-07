; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_follow_mount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_follow_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32, %struct.vfsmount* }
%struct.vfsmount = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.path*)* @follow_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @follow_mount(%struct.path* %0) #0 {
  %2 = alloca %struct.path*, align 8
  %3 = alloca %struct.vfsmount*, align 8
  store %struct.path* %0, %struct.path** %2, align 8
  br label %4

4:                                                ; preds = %16, %1
  %5 = load %struct.path*, %struct.path** %2, align 8
  %6 = getelementptr inbounds %struct.path, %struct.path* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @d_mountpoint(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %4
  %11 = load %struct.path*, %struct.path** %2, align 8
  %12 = call %struct.vfsmount* @lookup_mnt(%struct.path* %11)
  store %struct.vfsmount* %12, %struct.vfsmount** %3, align 8
  %13 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  %14 = icmp ne %struct.vfsmount* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %34

16:                                               ; preds = %10
  %17 = load %struct.path*, %struct.path** %2, align 8
  %18 = getelementptr inbounds %struct.path, %struct.path* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dput(i32 %19)
  %21 = load %struct.path*, %struct.path** %2, align 8
  %22 = getelementptr inbounds %struct.path, %struct.path* %21, i32 0, i32 1
  %23 = load %struct.vfsmount*, %struct.vfsmount** %22, align 8
  %24 = call i32 @mntput(%struct.vfsmount* %23)
  %25 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  %26 = load %struct.path*, %struct.path** %2, align 8
  %27 = getelementptr inbounds %struct.path, %struct.path* %26, i32 0, i32 1
  store %struct.vfsmount* %25, %struct.vfsmount** %27, align 8
  %28 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  %29 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dget(i32 %30)
  %32 = load %struct.path*, %struct.path** %2, align 8
  %33 = getelementptr inbounds %struct.path, %struct.path* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %4

34:                                               ; preds = %15, %4
  ret void
}

declare dso_local i64 @d_mountpoint(i32) #1

declare dso_local %struct.vfsmount* @lookup_mnt(%struct.path*) #1

declare dso_local i32 @dput(i32) #1

declare dso_local i32 @mntput(%struct.vfsmount*) #1

declare dso_local i32 @dget(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
