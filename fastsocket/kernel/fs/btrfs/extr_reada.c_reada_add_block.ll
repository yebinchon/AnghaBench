; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_reada.c_reada_add_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_reada.c_reada_add_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reada_control = type { i32, %struct.btrfs_root* }
%struct.btrfs_root = type { i32 }
%struct.btrfs_key = type { i32 }
%struct.reada_extent = type { i32, i32 }
%struct.reada_extctl = type { i32, i32, %struct.reada_control* }

@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reada_control*, i32, %struct.btrfs_key*, i32, i32)* @reada_add_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reada_add_block(%struct.reada_control* %0, i32 %1, %struct.btrfs_key* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.reada_control*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_key*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_root*, align 8
  %13 = alloca %struct.reada_extent*, align 8
  %14 = alloca %struct.reada_extctl*, align 8
  store %struct.reada_control* %0, %struct.reada_control** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.btrfs_key* %2, %struct.btrfs_key** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.reada_control*, %struct.reada_control** %7, align 8
  %16 = getelementptr inbounds %struct.reada_control, %struct.reada_control* %15, i32 0, i32 1
  %17 = load %struct.btrfs_root*, %struct.btrfs_root** %16, align 8
  store %struct.btrfs_root* %17, %struct.btrfs_root** %12, align 8
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.btrfs_key*, %struct.btrfs_key** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call %struct.reada_extent* @reada_find_extent(%struct.btrfs_root* %18, i32 %19, %struct.btrfs_key* %20, i32 %21)
  store %struct.reada_extent* %22, %struct.reada_extent** %13, align 8
  %23 = load %struct.reada_extent*, %struct.reada_extent** %13, align 8
  %24 = icmp ne %struct.reada_extent* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %58

26:                                               ; preds = %5
  %27 = load i32, i32* @GFP_NOFS, align 4
  %28 = call %struct.reada_extctl* @kzalloc(i32 16, i32 %27)
  store %struct.reada_extctl* %28, %struct.reada_extctl** %14, align 8
  %29 = load %struct.reada_extctl*, %struct.reada_extctl** %14, align 8
  %30 = icmp ne %struct.reada_extctl* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %33 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.reada_extent*, %struct.reada_extent** %13, align 8
  %36 = call i32 @reada_extent_put(i32 %34, %struct.reada_extent* %35)
  store i32 -1, i32* %6, align 4
  br label %58

37:                                               ; preds = %26
  %38 = load %struct.reada_control*, %struct.reada_control** %7, align 8
  %39 = load %struct.reada_extctl*, %struct.reada_extctl** %14, align 8
  %40 = getelementptr inbounds %struct.reada_extctl, %struct.reada_extctl* %39, i32 0, i32 2
  store %struct.reada_control* %38, %struct.reada_control** %40, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.reada_extctl*, %struct.reada_extctl** %14, align 8
  %43 = getelementptr inbounds %struct.reada_extctl, %struct.reada_extctl* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.reada_control*, %struct.reada_control** %7, align 8
  %45 = getelementptr inbounds %struct.reada_control, %struct.reada_control* %44, i32 0, i32 0
  %46 = call i32 @atomic_inc(i32* %45)
  %47 = load %struct.reada_extent*, %struct.reada_extent** %13, align 8
  %48 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %47, i32 0, i32 0
  %49 = call i32 @spin_lock(i32* %48)
  %50 = load %struct.reada_extctl*, %struct.reada_extctl** %14, align 8
  %51 = getelementptr inbounds %struct.reada_extctl, %struct.reada_extctl* %50, i32 0, i32 0
  %52 = load %struct.reada_extent*, %struct.reada_extent** %13, align 8
  %53 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %52, i32 0, i32 1
  %54 = call i32 @list_add_tail(i32* %51, i32* %53)
  %55 = load %struct.reada_extent*, %struct.reada_extent** %13, align 8
  %56 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock(i32* %56)
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %37, %31, %25
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local %struct.reada_extent* @reada_find_extent(%struct.btrfs_root*, i32, %struct.btrfs_key*, i32) #1

declare dso_local %struct.reada_extctl* @kzalloc(i32, i32) #1

declare dso_local i32 @reada_extent_put(i32, %struct.reada_extent*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
