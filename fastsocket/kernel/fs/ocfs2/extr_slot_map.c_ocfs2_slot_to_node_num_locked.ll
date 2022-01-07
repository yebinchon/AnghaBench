; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_slot_map.c_ocfs2_slot_to_node_num_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_slot_map.c_ocfs2_slot_to_node_num_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, i32, %struct.ocfs2_slot_info* }
%struct.ocfs2_slot_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_slot_to_node_num_locked(%struct.ocfs2_super* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ocfs2_slot_info*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %10 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %9, i32 0, i32 2
  %11 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %10, align 8
  store %struct.ocfs2_slot_info* %11, %struct.ocfs2_slot_info** %8, align 8
  %12 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %13 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %12, i32 0, i32 1
  %14 = call i32 @assert_spin_locked(i32* %13)
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %21 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %19, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %8, align 8
  %27 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %3
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %48

38:                                               ; preds = %3
  %39 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %8, align 8
  %40 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %38, %35
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
