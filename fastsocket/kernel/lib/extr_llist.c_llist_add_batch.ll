; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_llist.c_llist_add_batch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_llist.c_llist_add_batch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llist_node = type { %struct.llist_node* }
%struct.llist_head = type { %struct.llist_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llist_add_batch(%struct.llist_node* %0, %struct.llist_node* %1, %struct.llist_head* %2) #0 {
  %4 = alloca %struct.llist_node*, align 8
  %5 = alloca %struct.llist_node*, align 8
  %6 = alloca %struct.llist_head*, align 8
  %7 = alloca %struct.llist_node*, align 8
  %8 = alloca %struct.llist_node*, align 8
  store %struct.llist_node* %0, %struct.llist_node** %4, align 8
  store %struct.llist_node* %1, %struct.llist_node** %5, align 8
  store %struct.llist_head* %2, %struct.llist_head** %6, align 8
  %9 = load %struct.llist_head*, %struct.llist_head** %6, align 8
  %10 = getelementptr inbounds %struct.llist_head, %struct.llist_head* %9, i32 0, i32 0
  %11 = load %struct.llist_node*, %struct.llist_node** %10, align 8
  store %struct.llist_node* %11, %struct.llist_node** %7, align 8
  br label %12

12:                                               ; preds = %26, %3
  %13 = load %struct.llist_node*, %struct.llist_node** %7, align 8
  store %struct.llist_node* %13, %struct.llist_node** %8, align 8
  %14 = load %struct.llist_node*, %struct.llist_node** %7, align 8
  %15 = load %struct.llist_node*, %struct.llist_node** %5, align 8
  %16 = getelementptr inbounds %struct.llist_node, %struct.llist_node* %15, i32 0, i32 0
  store %struct.llist_node* %14, %struct.llist_node** %16, align 8
  %17 = load %struct.llist_head*, %struct.llist_head** %6, align 8
  %18 = getelementptr inbounds %struct.llist_head, %struct.llist_head* %17, i32 0, i32 0
  %19 = load %struct.llist_node*, %struct.llist_node** %8, align 8
  %20 = load %struct.llist_node*, %struct.llist_node** %4, align 8
  %21 = call %struct.llist_node* @cmpxchg(%struct.llist_node** %18, %struct.llist_node* %19, %struct.llist_node* %20)
  store %struct.llist_node* %21, %struct.llist_node** %7, align 8
  %22 = load %struct.llist_node*, %struct.llist_node** %7, align 8
  %23 = load %struct.llist_node*, %struct.llist_node** %8, align 8
  %24 = icmp eq %struct.llist_node* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  br label %27

26:                                               ; preds = %12
  br label %12

27:                                               ; preds = %25
  %28 = load %struct.llist_node*, %struct.llist_node** %8, align 8
  %29 = icmp eq %struct.llist_node* %28, null
  %30 = zext i1 %29 to i32
  ret i32 %30
}

declare dso_local %struct.llist_node* @cmpxchg(%struct.llist_node**, %struct.llist_node*, %struct.llist_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
