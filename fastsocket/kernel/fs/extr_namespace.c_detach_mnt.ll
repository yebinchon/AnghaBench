; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_detach_mnt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_detach_mnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32, i32, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.vfsmount* }
%struct.TYPE_2__ = type { i32 }
%struct.path = type { %struct.TYPE_2__*, %struct.vfsmount* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfsmount*, %struct.path*)* @detach_mnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detach_mnt(%struct.vfsmount* %0, %struct.path* %1) #0 {
  %3 = alloca %struct.vfsmount*, align 8
  %4 = alloca %struct.path*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %3, align 8
  store %struct.path* %1, %struct.path** %4, align 8
  %5 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  %6 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %5, i32 0, i32 3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load %struct.path*, %struct.path** %4, align 8
  %9 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 0
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %9, align 8
  %10 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  %11 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %10, i32 0, i32 4
  %12 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  %13 = load %struct.path*, %struct.path** %4, align 8
  %14 = getelementptr inbounds %struct.path, %struct.path* %13, i32 0, i32 1
  store %struct.vfsmount* %12, %struct.vfsmount** %14, align 8
  %15 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  %16 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  %17 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %16, i32 0, i32 4
  store %struct.vfsmount* %15, %struct.vfsmount** %17, align 8
  %18 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  %19 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  %22 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %21, i32 0, i32 3
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %22, align 8
  %23 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  %24 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %23, i32 0, i32 1
  %25 = call i32 @list_del_init(i32* %24)
  %26 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  %27 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %26, i32 0, i32 0
  %28 = call i32 @list_del_init(i32* %27)
  %29 = load %struct.path*, %struct.path** %4, align 8
  %30 = getelementptr inbounds %struct.path, %struct.path* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 4
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
