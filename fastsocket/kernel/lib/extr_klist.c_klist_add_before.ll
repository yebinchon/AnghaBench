; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_klist.c_klist_add_before.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_klist.c_klist_add_before.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.klist_node = type { i32 }
%struct.klist = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @klist_add_before(%struct.klist_node* %0, %struct.klist_node* %1) #0 {
  %3 = alloca %struct.klist_node*, align 8
  %4 = alloca %struct.klist_node*, align 8
  %5 = alloca %struct.klist*, align 8
  store %struct.klist_node* %0, %struct.klist_node** %3, align 8
  store %struct.klist_node* %1, %struct.klist_node** %4, align 8
  %6 = load %struct.klist_node*, %struct.klist_node** %4, align 8
  %7 = call %struct.klist* @knode_klist(%struct.klist_node* %6)
  store %struct.klist* %7, %struct.klist** %5, align 8
  %8 = load %struct.klist*, %struct.klist** %5, align 8
  %9 = load %struct.klist_node*, %struct.klist_node** %3, align 8
  %10 = call i32 @klist_node_init(%struct.klist* %8, %struct.klist_node* %9)
  %11 = load %struct.klist*, %struct.klist** %5, align 8
  %12 = getelementptr inbounds %struct.klist, %struct.klist* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.klist_node*, %struct.klist_node** %3, align 8
  %15 = getelementptr inbounds %struct.klist_node, %struct.klist_node* %14, i32 0, i32 0
  %16 = load %struct.klist_node*, %struct.klist_node** %4, align 8
  %17 = getelementptr inbounds %struct.klist_node, %struct.klist_node* %16, i32 0, i32 0
  %18 = call i32 @list_add_tail(i32* %15, i32* %17)
  %19 = load %struct.klist*, %struct.klist** %5, align 8
  %20 = getelementptr inbounds %struct.klist, %struct.klist* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock(i32* %20)
  ret void
}

declare dso_local %struct.klist* @knode_klist(%struct.klist_node*) #1

declare dso_local i32 @klist_node_init(%struct.klist*, %struct.klist_node*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
