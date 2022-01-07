; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_lbalance.c_leaf_move_items.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_lbalance.c_leaf_move_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32 }
%struct.buffer_head = type { i32 }
%struct.buffer_info = type { i32 }

@FIRST_TO_LAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @leaf_move_items(i32 %0, %struct.tree_balance* %1, i32 %2, i32 %3, %struct.buffer_head* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tree_balance*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.buffer_info, align 4
  %13 = alloca %struct.buffer_info, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.tree_balance* %1, %struct.tree_balance** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.buffer_head* %4, %struct.buffer_head** %10, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.tree_balance*, %struct.tree_balance** %7, align 8
  %17 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %18 = call i32 @leaf_define_dest_src_infos(i32 %15, %struct.tree_balance* %16, %struct.buffer_info* %12, %struct.buffer_info* %13, i32* %14, %struct.buffer_head* %17)
  %19 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %13, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @leaf_copy_items(%struct.buffer_info* %12, i32 %20, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* @FIRST_TO_LAST, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  br label %36

30:                                               ; preds = %5
  %31 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %13, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @B_NR_ITEMS(i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %33, %34
  br label %36

36:                                               ; preds = %30, %29
  %37 = phi i32 [ 0, %29 ], [ %35, %30 ]
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @leaf_delete_items(%struct.buffer_info* %13, i32 %25, i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %11, align 4
  ret i32 %41
}

declare dso_local i32 @leaf_define_dest_src_infos(i32, %struct.tree_balance*, %struct.buffer_info*, %struct.buffer_info*, i32*, %struct.buffer_head*) #1

declare dso_local i32 @leaf_copy_items(%struct.buffer_info*, i32, i32, i32, i32) #1

declare dso_local i32 @leaf_delete_items(%struct.buffer_info*, i32, i32, i32, i32) #1

declare dso_local i32 @B_NR_ITEMS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
