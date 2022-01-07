; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_plist.c_plist_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_plist.c_plist_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plist_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.plist_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @plist_del(%struct.plist_node* %0, %struct.plist_head* %1) #0 {
  %3 = alloca %struct.plist_node*, align 8
  %4 = alloca %struct.plist_head*, align 8
  %5 = alloca %struct.plist_node*, align 8
  store %struct.plist_node* %0, %struct.plist_node** %3, align 8
  store %struct.plist_head* %1, %struct.plist_head** %4, align 8
  %6 = load %struct.plist_head*, %struct.plist_head** %4, align 8
  %7 = call i32 @plist_check_head(%struct.plist_head* %6)
  %8 = load %struct.plist_node*, %struct.plist_node** %3, align 8
  %9 = getelementptr inbounds %struct.plist_node, %struct.plist_node* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = call i32 @list_empty(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %2
  %14 = load %struct.plist_node*, %struct.plist_node** %3, align 8
  %15 = getelementptr inbounds %struct.plist_node, %struct.plist_node* %14, i32 0, i32 0
  %16 = call %struct.plist_node* @plist_first(%struct.TYPE_2__* %15)
  store %struct.plist_node* %16, %struct.plist_node** %5, align 8
  %17 = load %struct.plist_node*, %struct.plist_node** %5, align 8
  %18 = getelementptr inbounds %struct.plist_node, %struct.plist_node* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.plist_node*, %struct.plist_node** %3, align 8
  %21 = getelementptr inbounds %struct.plist_node, %struct.plist_node* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = call i32 @list_move_tail(i32* %19, i32* %22)
  %24 = load %struct.plist_node*, %struct.plist_node** %3, align 8
  %25 = getelementptr inbounds %struct.plist_node, %struct.plist_node* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = call i32 @list_del_init(i32* %26)
  br label %28

28:                                               ; preds = %13, %2
  %29 = load %struct.plist_node*, %struct.plist_node** %3, align 8
  %30 = getelementptr inbounds %struct.plist_node, %struct.plist_node* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @list_del_init(i32* %31)
  %33 = load %struct.plist_head*, %struct.plist_head** %4, align 8
  %34 = call i32 @plist_check_head(%struct.plist_head* %33)
  ret void
}

declare dso_local i32 @plist_check_head(%struct.plist_head*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.plist_node* @plist_first(%struct.TYPE_2__*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
