; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c_iput_final.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c_iput_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.super_operations* }
%struct.super_operations = type { void (%struct.inode.0*)* }
%struct.inode.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @iput_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iput_final(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_operations*, align 8
  %4 = alloca void (%struct.inode*)*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.super_operations*, %struct.super_operations** %8, align 8
  store %struct.super_operations* %9, %struct.super_operations** %3, align 8
  store void (%struct.inode*)* @generic_drop_inode, void (%struct.inode*)** %4, align 8
  %10 = load %struct.super_operations*, %struct.super_operations** %3, align 8
  %11 = icmp ne %struct.super_operations* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.super_operations*, %struct.super_operations** %3, align 8
  %14 = getelementptr inbounds %struct.super_operations, %struct.super_operations* %13, i32 0, i32 0
  %15 = load void (%struct.inode.0*)*, void (%struct.inode.0*)** %14, align 8
  %16 = icmp ne void (%struct.inode.0*)* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.super_operations*, %struct.super_operations** %3, align 8
  %19 = getelementptr inbounds %struct.super_operations, %struct.super_operations* %18, i32 0, i32 0
  %20 = load void (%struct.inode.0*)*, void (%struct.inode.0*)** %19, align 8
  %21 = bitcast void (%struct.inode.0*)* %20 to void (%struct.inode*)*
  store void (%struct.inode*)* %21, void (%struct.inode*)** %4, align 8
  br label %22

22:                                               ; preds = %17, %12, %1
  %23 = load void (%struct.inode*)*, void (%struct.inode*)** %4, align 8
  %24 = load %struct.inode*, %struct.inode** %2, align 8
  call void %23(%struct.inode* %24)
  ret void
}

declare dso_local void @generic_drop_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
