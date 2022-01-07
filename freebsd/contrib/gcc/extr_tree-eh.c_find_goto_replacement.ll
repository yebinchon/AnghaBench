; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-eh.c_find_goto_replacement.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-eh.c_find_goto_replacement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.leh_tf_state = type { i32, i32 }
%struct.goto_queue_node = type { i32*, i32* }

@goto_queue_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.leh_tf_state*, i32*)* @find_goto_replacement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_goto_replacement(%struct.leh_tf_state* %0, i32* %1) #0 {
  %3 = alloca %struct.leh_tf_state*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.goto_queue_node, align 8
  %6 = alloca %struct.goto_queue_node*, align 8
  store %struct.leh_tf_state* %0, %struct.leh_tf_state** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds %struct.goto_queue_node, %struct.goto_queue_node* %5, i32 0, i32 1
  store i32* %7, i32** %8, align 8
  %9 = load %struct.leh_tf_state*, %struct.leh_tf_state** %3, align 8
  %10 = getelementptr inbounds %struct.leh_tf_state, %struct.leh_tf_state* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.leh_tf_state*, %struct.leh_tf_state** %3, align 8
  %13 = getelementptr inbounds %struct.leh_tf_state, %struct.leh_tf_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @goto_queue_cmp, align 4
  %16 = call i64 @bsearch(%struct.goto_queue_node* %5, i32 %11, i32 %14, i32 16, i32 %15)
  %17 = inttoptr i64 %16 to %struct.goto_queue_node*
  store %struct.goto_queue_node* %17, %struct.goto_queue_node** %6, align 8
  %18 = load %struct.goto_queue_node*, %struct.goto_queue_node** %6, align 8
  %19 = icmp ne %struct.goto_queue_node* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.goto_queue_node*, %struct.goto_queue_node** %6, align 8
  %22 = getelementptr inbounds %struct.goto_queue_node, %struct.goto_queue_node* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i32* [ %23, %20 ], [ null, %24 ]
  ret i32* %26
}

declare dso_local i64 @bsearch(%struct.goto_queue_node*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
