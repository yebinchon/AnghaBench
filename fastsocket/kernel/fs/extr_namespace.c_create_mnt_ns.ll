; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_create_mnt_ns.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_create_mnt_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mnt_namespace = type { %struct.vfsmount*, i32 }
%struct.vfsmount = type { i32, %struct.mnt_namespace* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mnt_namespace* @create_mnt_ns(%struct.vfsmount* %0) #0 {
  %2 = alloca %struct.vfsmount*, align 8
  %3 = alloca %struct.mnt_namespace*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %2, align 8
  %4 = call %struct.mnt_namespace* (...) @alloc_mnt_ns()
  store %struct.mnt_namespace* %4, %struct.mnt_namespace** %3, align 8
  %5 = load %struct.mnt_namespace*, %struct.mnt_namespace** %3, align 8
  %6 = call i32 @IS_ERR(%struct.mnt_namespace* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %1
  %9 = load %struct.mnt_namespace*, %struct.mnt_namespace** %3, align 8
  %10 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %11 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %10, i32 0, i32 1
  store %struct.mnt_namespace* %9, %struct.mnt_namespace** %11, align 8
  %12 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %13 = load %struct.mnt_namespace*, %struct.mnt_namespace** %3, align 8
  %14 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %13, i32 0, i32 0
  store %struct.vfsmount* %12, %struct.vfsmount** %14, align 8
  %15 = load %struct.mnt_namespace*, %struct.mnt_namespace** %3, align 8
  %16 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %15, i32 0, i32 1
  %17 = load %struct.mnt_namespace*, %struct.mnt_namespace** %3, align 8
  %18 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %17, i32 0, i32 0
  %19 = load %struct.vfsmount*, %struct.vfsmount** %18, align 8
  %20 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %19, i32 0, i32 0
  %21 = call i32 @list_add(i32* %16, i32* %20)
  br label %22

22:                                               ; preds = %8, %1
  %23 = load %struct.mnt_namespace*, %struct.mnt_namespace** %3, align 8
  ret %struct.mnt_namespace* %23
}

declare dso_local %struct.mnt_namespace* @alloc_mnt_ns(...) #1

declare dso_local i32 @IS_ERR(%struct.mnt_namespace*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
