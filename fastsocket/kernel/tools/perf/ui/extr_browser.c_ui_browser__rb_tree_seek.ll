; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_browser.c_ui_browser__rb_tree_seek.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_browser.c_ui_browser__rb_tree_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_browser = type { %struct.rb_node*, %struct.rb_root* }
%struct.rb_node = type { i32 }
%struct.rb_root = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_browser__rb_tree_seek(%struct.ui_browser* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ui_browser*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rb_root*, align 8
  %8 = alloca %struct.rb_node*, align 8
  store %struct.ui_browser* %0, %struct.ui_browser** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %10 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %9, i32 0, i32 1
  %11 = load %struct.rb_root*, %struct.rb_root** %10, align 8
  store %struct.rb_root* %11, %struct.rb_root** %7, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %23 [
    i32 128, label %13
    i32 130, label %16
    i32 129, label %20
  ]

13:                                               ; preds = %3
  %14 = load %struct.rb_root*, %struct.rb_root** %7, align 8
  %15 = call %struct.rb_node* @rb_first(%struct.rb_root* %14)
  store %struct.rb_node* %15, %struct.rb_node** %8, align 8
  br label %24

16:                                               ; preds = %3
  %17 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %18 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %17, i32 0, i32 0
  %19 = load %struct.rb_node*, %struct.rb_node** %18, align 8
  store %struct.rb_node* %19, %struct.rb_node** %8, align 8
  br label %24

20:                                               ; preds = %3
  %21 = load %struct.rb_root*, %struct.rb_root** %7, align 8
  %22 = call %struct.rb_node* @rb_last(%struct.rb_root* %21)
  store %struct.rb_node* %22, %struct.rb_node** %8, align 8
  br label %24

23:                                               ; preds = %3
  br label %49

24:                                               ; preds = %20, %16, %13
  %25 = load i64, i64* %5, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %32, %27
  %29 = load i64, i64* %5, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %5, align 8
  %31 = icmp ne i64 %29, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %34 = call %struct.rb_node* @rb_next(%struct.rb_node* %33)
  store %struct.rb_node* %34, %struct.rb_node** %8, align 8
  br label %28

35:                                               ; preds = %28
  br label %45

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %41, %36
  %38 = load i64, i64* %5, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %5, align 8
  %40 = icmp ne i64 %38, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %43 = call %struct.rb_node* @rb_prev(%struct.rb_node* %42)
  store %struct.rb_node* %43, %struct.rb_node** %8, align 8
  br label %37

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %35
  %46 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %47 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %48 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %47, i32 0, i32 0
  store %struct.rb_node* %46, %struct.rb_node** %48, align 8
  br label %49

49:                                               ; preds = %45, %23
  ret void
}

declare dso_local %struct.rb_node* @rb_first(%struct.rb_root*) #1

declare dso_local %struct.rb_node* @rb_last(%struct.rb_root*) #1

declare dso_local %struct.rb_node* @rb_next(%struct.rb_node*) #1

declare dso_local %struct.rb_node* @rb_prev(%struct.rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
