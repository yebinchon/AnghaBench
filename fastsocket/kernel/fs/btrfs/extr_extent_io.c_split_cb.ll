; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent_io.c_split_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent_io.c_split_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_io_tree = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32, %struct.extent_state*, i32)* }
%struct.extent_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.extent_io_tree*, %struct.extent_state*, i32)* @split_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @split_cb(%struct.extent_io_tree* %0, %struct.extent_state* %1, i32 %2) #0 {
  %4 = alloca %struct.extent_io_tree*, align 8
  %5 = alloca %struct.extent_state*, align 8
  %6 = alloca i32, align 4
  store %struct.extent_io_tree* %0, %struct.extent_io_tree** %4, align 8
  store %struct.extent_state* %1, %struct.extent_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.extent_io_tree*, %struct.extent_io_tree** %4, align 8
  %8 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %32

11:                                               ; preds = %3
  %12 = load %struct.extent_io_tree*, %struct.extent_io_tree** %4, align 8
  %13 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (i32, %struct.extent_state*, i32)*, i32 (i32, %struct.extent_state*, i32)** %15, align 8
  %17 = icmp ne i32 (i32, %struct.extent_state*, i32)* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %11
  %19 = load %struct.extent_io_tree*, %struct.extent_io_tree** %4, align 8
  %20 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (i32, %struct.extent_state*, i32)*, i32 (i32, %struct.extent_state*, i32)** %22, align 8
  %24 = load %struct.extent_io_tree*, %struct.extent_io_tree** %4, align 8
  %25 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.extent_state*, %struct.extent_state** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 %23(i32 %28, %struct.extent_state* %29, i32 %30)
  br label %32

32:                                               ; preds = %18, %11, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
