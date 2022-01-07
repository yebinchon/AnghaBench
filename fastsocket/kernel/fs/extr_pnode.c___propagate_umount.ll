; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pnode.c___propagate_umount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pnode.c___propagate_umount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32, i32, i32, %struct.vfsmount* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfsmount*)* @__propagate_umount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__propagate_umount(%struct.vfsmount* %0) #0 {
  %2 = alloca %struct.vfsmount*, align 8
  %3 = alloca %struct.vfsmount*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.vfsmount*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %2, align 8
  %6 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %7 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %6, i32 0, i32 3
  %8 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  store %struct.vfsmount* %8, %struct.vfsmount** %3, align 8
  %9 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  %10 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %11 = icmp eq %struct.vfsmount* %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  %15 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  %16 = call %struct.vfsmount* @propagation_next(%struct.vfsmount* %14, %struct.vfsmount* %15)
  store %struct.vfsmount* %16, %struct.vfsmount** %4, align 8
  br label %17

17:                                               ; preds = %40, %1
  %18 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %19 = icmp ne %struct.vfsmount* %18, null
  br i1 %19, label %20, label %44

20:                                               ; preds = %17
  %21 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %22 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %23 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.vfsmount* @__lookup_mnt(%struct.vfsmount* %21, i32 %24, i32 0)
  store %struct.vfsmount* %25, %struct.vfsmount** %5, align 8
  %26 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %27 = icmp ne %struct.vfsmount* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %20
  %29 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %30 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %29, i32 0, i32 1
  %31 = call i64 @list_empty(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %35 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %34, i32 0, i32 0
  %36 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %37 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %36, i32 0, i32 0
  %38 = call i32 @list_move_tail(i32* %35, i32* %37)
  br label %39

39:                                               ; preds = %33, %28, %20
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %42 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  %43 = call %struct.vfsmount* @propagation_next(%struct.vfsmount* %41, %struct.vfsmount* %42)
  store %struct.vfsmount* %43, %struct.vfsmount** %4, align 8
  br label %17

44:                                               ; preds = %17
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.vfsmount* @propagation_next(%struct.vfsmount*, %struct.vfsmount*) #1

declare dso_local %struct.vfsmount* @__lookup_mnt(%struct.vfsmount*, i32, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
