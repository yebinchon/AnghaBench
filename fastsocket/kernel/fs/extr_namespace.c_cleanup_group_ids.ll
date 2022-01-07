; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_cleanup_group_ids.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_cleanup_group_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfsmount*, %struct.vfsmount*)* @cleanup_group_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_group_ids(%struct.vfsmount* %0, %struct.vfsmount* %1) #0 {
  %3 = alloca %struct.vfsmount*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.vfsmount*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %3, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %4, align 8
  %6 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  store %struct.vfsmount* %6, %struct.vfsmount** %5, align 8
  br label %7

7:                                                ; preds = %24, %2
  %8 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %9 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %10 = icmp ne %struct.vfsmount* %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %13 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %18 = call i32 @IS_MNT_SHARED(%struct.vfsmount* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %22 = call i32 @mnt_release_group_id(%struct.vfsmount* %21)
  br label %23

23:                                               ; preds = %20, %16, %11
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %26 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  %27 = call %struct.vfsmount* @next_mnt(%struct.vfsmount* %25, %struct.vfsmount* %26)
  store %struct.vfsmount* %27, %struct.vfsmount** %5, align 8
  br label %7

28:                                               ; preds = %7
  ret void
}

declare dso_local i32 @IS_MNT_SHARED(%struct.vfsmount*) #1

declare dso_local i32 @mnt_release_group_id(%struct.vfsmount*) #1

declare dso_local %struct.vfsmount* @next_mnt(%struct.vfsmount*, %struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
