; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_stree.c_comp_items.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_stree.c_comp_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item_head = type { i32 }
%struct.treepath = type { i32 }
%struct.buffer_head = type { i32 }

@IH_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comp_items(%struct.item_head* %0, %struct.treepath* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.item_head*, align 8
  %5 = alloca %struct.treepath*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.item_head*, align 8
  store %struct.item_head* %0, %struct.item_head** %4, align 8
  store %struct.treepath* %1, %struct.treepath** %5, align 8
  %8 = load %struct.treepath*, %struct.treepath** %5, align 8
  %9 = call %struct.buffer_head* @PATH_PLAST_BUFFER(%struct.treepath* %8)
  store %struct.buffer_head* %9, %struct.buffer_head** %6, align 8
  %10 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %11 = call i32 @B_IS_IN_TREE(%struct.buffer_head* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %28

14:                                               ; preds = %2
  %15 = load %struct.treepath*, %struct.treepath** %5, align 8
  %16 = call i64 @PATH_LAST_POSITION(%struct.treepath* %15)
  %17 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %18 = call i64 @B_NR_ITEMS(%struct.buffer_head* %17)
  %19 = icmp sge i64 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %28

21:                                               ; preds = %14
  %22 = load %struct.treepath*, %struct.treepath** %5, align 8
  %23 = call %struct.item_head* @get_ih(%struct.treepath* %22)
  store %struct.item_head* %23, %struct.item_head** %7, align 8
  %24 = load %struct.item_head*, %struct.item_head** %4, align 8
  %25 = load %struct.item_head*, %struct.item_head** %7, align 8
  %26 = load i32, i32* @IH_SIZE, align 4
  %27 = call i32 @memcmp(%struct.item_head* %24, %struct.item_head* %25, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %21, %20, %13
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.buffer_head* @PATH_PLAST_BUFFER(%struct.treepath*) #1

declare dso_local i32 @B_IS_IN_TREE(%struct.buffer_head*) #1

declare dso_local i64 @PATH_LAST_POSITION(%struct.treepath*) #1

declare dso_local i64 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local %struct.item_head* @get_ih(%struct.treepath*) #1

declare dso_local i32 @memcmp(%struct.item_head*, %struct.item_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
