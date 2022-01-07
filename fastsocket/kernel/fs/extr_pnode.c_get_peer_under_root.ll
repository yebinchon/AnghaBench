; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pnode.c_get_peer_under_root.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pnode.c_get_peer_under_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32, %struct.mnt_namespace* }
%struct.mnt_namespace = type { i32 }
%struct.path = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vfsmount* (%struct.vfsmount*, %struct.mnt_namespace*, %struct.path*)* @get_peer_under_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vfsmount* @get_peer_under_root(%struct.vfsmount* %0, %struct.mnt_namespace* %1, %struct.path* %2) #0 {
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca %struct.mnt_namespace*, align 8
  %7 = alloca %struct.path*, align 8
  %8 = alloca %struct.vfsmount*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %5, align 8
  store %struct.mnt_namespace* %1, %struct.mnt_namespace** %6, align 8
  store %struct.path* %2, %struct.path** %7, align 8
  %9 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  store %struct.vfsmount* %9, %struct.vfsmount** %8, align 8
  br label %10

10:                                               ; preds = %29, %3
  %11 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %12 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %11, i32 0, i32 1
  %13 = load %struct.mnt_namespace*, %struct.mnt_namespace** %12, align 8
  %14 = load %struct.mnt_namespace*, %struct.mnt_namespace** %6, align 8
  %15 = icmp eq %struct.mnt_namespace* %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %10
  %17 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %18 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %19 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.path*, %struct.path** %7, align 8
  %22 = call i64 @is_path_reachable(%struct.vfsmount* %17, i32 %20, %struct.path* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  store %struct.vfsmount* %25, %struct.vfsmount** %4, align 8
  br label %34

26:                                               ; preds = %16, %10
  %27 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %28 = call %struct.vfsmount* @next_peer(%struct.vfsmount* %27)
  store %struct.vfsmount* %28, %struct.vfsmount** %8, align 8
  br label %29

29:                                               ; preds = %26
  %30 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %31 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %32 = icmp ne %struct.vfsmount* %30, %31
  br i1 %32, label %10, label %33

33:                                               ; preds = %29
  store %struct.vfsmount* null, %struct.vfsmount** %4, align 8
  br label %34

34:                                               ; preds = %33, %24
  %35 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  ret %struct.vfsmount* %35
}

declare dso_local i64 @is_path_reachable(%struct.vfsmount*, i32, %struct.path*) #1

declare dso_local %struct.vfsmount* @next_peer(%struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
