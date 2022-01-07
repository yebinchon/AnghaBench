; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-nested.c_unnest_nesting_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-nested.c_unnest_nesting_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nesting_info = type { %struct.nesting_info*, %struct.nesting_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nesting_info*)* @unnest_nesting_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unnest_nesting_tree(%struct.nesting_info* %0) #0 {
  %2 = alloca %struct.nesting_info*, align 8
  store %struct.nesting_info* %0, %struct.nesting_info** %2, align 8
  br label %3

3:                                                ; preds = %18, %1
  %4 = load %struct.nesting_info*, %struct.nesting_info** %2, align 8
  %5 = getelementptr inbounds %struct.nesting_info, %struct.nesting_info* %4, i32 0, i32 1
  %6 = load %struct.nesting_info*, %struct.nesting_info** %5, align 8
  %7 = icmp ne %struct.nesting_info* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load %struct.nesting_info*, %struct.nesting_info** %2, align 8
  %10 = getelementptr inbounds %struct.nesting_info, %struct.nesting_info* %9, i32 0, i32 1
  %11 = load %struct.nesting_info*, %struct.nesting_info** %10, align 8
  call void @unnest_nesting_tree(%struct.nesting_info* %11)
  br label %12

12:                                               ; preds = %8, %3
  %13 = load %struct.nesting_info*, %struct.nesting_info** %2, align 8
  %14 = call i32 @unnest_nesting_tree_1(%struct.nesting_info* %13)
  %15 = load %struct.nesting_info*, %struct.nesting_info** %2, align 8
  %16 = getelementptr inbounds %struct.nesting_info, %struct.nesting_info* %15, i32 0, i32 0
  %17 = load %struct.nesting_info*, %struct.nesting_info** %16, align 8
  store %struct.nesting_info* %17, %struct.nesting_info** %2, align 8
  br label %18

18:                                               ; preds = %12
  %19 = load %struct.nesting_info*, %struct.nesting_info** %2, align 8
  %20 = icmp ne %struct.nesting_info* %19, null
  br i1 %20, label %3, label %21

21:                                               ; preds = %18
  ret void
}

declare dso_local i32 @unnest_nesting_tree_1(%struct.nesting_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
