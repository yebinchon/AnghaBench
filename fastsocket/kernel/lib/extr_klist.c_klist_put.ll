; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_klist.c_klist_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_klist.c_klist_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.klist_node = type { i32 }
%struct.klist = type { void (%struct.klist_node*)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.klist_node*, i32)* @klist_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @klist_put(%struct.klist_node* %0, i32 %1) #0 {
  %3 = alloca %struct.klist_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.klist*, align 8
  %6 = alloca void (%struct.klist_node*)*, align 8
  store %struct.klist_node* %0, %struct.klist_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.klist_node*, %struct.klist_node** %3, align 8
  %8 = call %struct.klist* @knode_klist(%struct.klist_node* %7)
  store %struct.klist* %8, %struct.klist** %5, align 8
  %9 = load %struct.klist*, %struct.klist** %5, align 8
  %10 = getelementptr inbounds %struct.klist, %struct.klist* %9, i32 0, i32 0
  %11 = load void (%struct.klist_node*)*, void (%struct.klist_node*)** %10, align 8
  store void (%struct.klist_node*)* %11, void (%struct.klist_node*)** %6, align 8
  %12 = load %struct.klist*, %struct.klist** %5, align 8
  %13 = getelementptr inbounds %struct.klist, %struct.klist* %12, i32 0, i32 1
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.klist_node*, %struct.klist_node** %3, align 8
  %19 = call i32 @knode_kill(%struct.klist_node* %18)
  br label %20

20:                                               ; preds = %17, %2
  %21 = load %struct.klist_node*, %struct.klist_node** %3, align 8
  %22 = call i32 @klist_dec_and_del(%struct.klist_node* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store void (%struct.klist_node*)* null, void (%struct.klist_node*)** %6, align 8
  br label %25

25:                                               ; preds = %24, %20
  %26 = load %struct.klist*, %struct.klist** %5, align 8
  %27 = getelementptr inbounds %struct.klist, %struct.klist* %26, i32 0, i32 1
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load void (%struct.klist_node*)*, void (%struct.klist_node*)** %6, align 8
  %30 = icmp ne void (%struct.klist_node*)* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load void (%struct.klist_node*)*, void (%struct.klist_node*)** %6, align 8
  %33 = load %struct.klist_node*, %struct.klist_node** %3, align 8
  call void %32(%struct.klist_node* %33)
  br label %34

34:                                               ; preds = %31, %25
  ret void
}

declare dso_local %struct.klist* @knode_klist(%struct.klist_node*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @knode_kill(%struct.klist_node*) #1

declare dso_local i32 @klist_dec_and_del(%struct.klist_node*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
