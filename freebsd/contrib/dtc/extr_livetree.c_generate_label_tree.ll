; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_livetree.c_generate_label_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_livetree.c_generate_label_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dt_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_label_tree(%struct.dt_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.dt_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.dt_info* %0, %struct.dt_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.dt_info*, %struct.dt_info** %4, align 8
  %8 = load %struct.dt_info*, %struct.dt_info** %4, align 8
  %9 = getelementptr inbounds %struct.dt_info, %struct.dt_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @any_label_tree(%struct.dt_info* %7, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %26

14:                                               ; preds = %3
  %15 = load %struct.dt_info*, %struct.dt_info** %4, align 8
  %16 = load %struct.dt_info*, %struct.dt_info** %4, align 8
  %17 = getelementptr inbounds %struct.dt_info, %struct.dt_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @build_root_node(i32 %18, i8* %19)
  %21 = load %struct.dt_info*, %struct.dt_info** %4, align 8
  %22 = getelementptr inbounds %struct.dt_info, %struct.dt_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @generate_label_tree_internal(%struct.dt_info* %15, i32 %20, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @any_label_tree(%struct.dt_info*, i32) #1

declare dso_local i32 @generate_label_tree_internal(%struct.dt_info*, i32, i32, i32) #1

declare dso_local i32 @build_root_node(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
