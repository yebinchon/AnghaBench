; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pnode.c_get_dominating_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pnode.c_get_dominating_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32, i32, %struct.vfsmount* }
%struct.path = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_dominating_id(%struct.vfsmount* %0, %struct.path* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.vfsmount*, align 8
  %7 = alloca %struct.vfsmount*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %4, align 8
  store %struct.path* %1, %struct.path** %5, align 8
  %8 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %9 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %8, i32 0, i32 2
  %10 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  store %struct.vfsmount* %10, %struct.vfsmount** %6, align 8
  br label %11

11:                                               ; preds = %28, %2
  %12 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %13 = icmp ne %struct.vfsmount* %12, null
  br i1 %13, label %14, label %32

14:                                               ; preds = %11
  %15 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %16 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %17 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.path*, %struct.path** %5, align 8
  %20 = call %struct.vfsmount* @get_peer_under_root(%struct.vfsmount* %15, i32 %18, %struct.path* %19)
  store %struct.vfsmount* %20, %struct.vfsmount** %7, align 8
  %21 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %22 = icmp ne %struct.vfsmount* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %25 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %3, align 4
  br label %33

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %30 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %29, i32 0, i32 2
  %31 = load %struct.vfsmount*, %struct.vfsmount** %30, align 8
  store %struct.vfsmount* %31, %struct.vfsmount** %6, align 8
  br label %11

32:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %23
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.vfsmount* @get_peer_under_root(%struct.vfsmount*, i32, %struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
