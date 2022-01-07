; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_klist.c_klist_node_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_klist.c_klist_node_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.klist = type { i32 (%struct.klist_node*)* }
%struct.klist_node = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.klist*, %struct.klist_node*)* @klist_node_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @klist_node_init(%struct.klist* %0, %struct.klist_node* %1) #0 {
  %3 = alloca %struct.klist*, align 8
  %4 = alloca %struct.klist_node*, align 8
  store %struct.klist* %0, %struct.klist** %3, align 8
  store %struct.klist_node* %1, %struct.klist_node** %4, align 8
  %5 = load %struct.klist_node*, %struct.klist_node** %4, align 8
  %6 = getelementptr inbounds %struct.klist_node, %struct.klist_node* %5, i32 0, i32 1
  %7 = call i32 @INIT_LIST_HEAD(i32* %6)
  %8 = load %struct.klist_node*, %struct.klist_node** %4, align 8
  %9 = getelementptr inbounds %struct.klist_node, %struct.klist_node* %8, i32 0, i32 0
  %10 = call i32 @kref_init(i32* %9)
  %11 = load %struct.klist_node*, %struct.klist_node** %4, align 8
  %12 = load %struct.klist*, %struct.klist** %3, align 8
  %13 = call i32 @knode_set_klist(%struct.klist_node* %11, %struct.klist* %12)
  %14 = load %struct.klist*, %struct.klist** %3, align 8
  %15 = getelementptr inbounds %struct.klist, %struct.klist* %14, i32 0, i32 0
  %16 = load i32 (%struct.klist_node*)*, i32 (%struct.klist_node*)** %15, align 8
  %17 = icmp ne i32 (%struct.klist_node*)* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.klist*, %struct.klist** %3, align 8
  %20 = getelementptr inbounds %struct.klist, %struct.klist* %19, i32 0, i32 0
  %21 = load i32 (%struct.klist_node*)*, i32 (%struct.klist_node*)** %20, align 8
  %22 = load %struct.klist_node*, %struct.klist_node** %4, align 8
  %23 = call i32 %21(%struct.klist_node* %22)
  br label %24

24:                                               ; preds = %18, %2
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @knode_set_klist(%struct.klist_node*, %struct.klist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
