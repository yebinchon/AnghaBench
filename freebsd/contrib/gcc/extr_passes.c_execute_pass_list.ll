; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_passes.c_execute_pass_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_passes.c_execute_pass_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_opt_pass = type { %struct.tree_opt_pass*, %struct.tree_opt_pass* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @execute_pass_list(%struct.tree_opt_pass* %0) #0 {
  %2 = alloca %struct.tree_opt_pass*, align 8
  store %struct.tree_opt_pass* %0, %struct.tree_opt_pass** %2, align 8
  br label %3

3:                                                ; preds = %20, %1
  %4 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %2, align 8
  %5 = call i64 @execute_one_pass(%struct.tree_opt_pass* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %2, align 8
  %9 = getelementptr inbounds %struct.tree_opt_pass, %struct.tree_opt_pass* %8, i32 0, i32 1
  %10 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %9, align 8
  %11 = icmp ne %struct.tree_opt_pass* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %2, align 8
  %14 = getelementptr inbounds %struct.tree_opt_pass, %struct.tree_opt_pass* %13, i32 0, i32 1
  %15 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %14, align 8
  call void @execute_pass_list(%struct.tree_opt_pass* %15)
  br label %16

16:                                               ; preds = %12, %7, %3
  %17 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %2, align 8
  %18 = getelementptr inbounds %struct.tree_opt_pass, %struct.tree_opt_pass* %17, i32 0, i32 0
  %19 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %18, align 8
  store %struct.tree_opt_pass* %19, %struct.tree_opt_pass** %2, align 8
  br label %20

20:                                               ; preds = %16
  %21 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %2, align 8
  %22 = icmp ne %struct.tree_opt_pass* %21, null
  br i1 %22, label %3, label %23

23:                                               ; preds = %20
  ret void
}

declare dso_local i64 @execute_one_pass(%struct.tree_opt_pass*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
