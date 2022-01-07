; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-nested.c_free_nesting_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-nested.c_free_nesting_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nesting_info = type { %struct.nesting_info*, i32, %struct.nesting_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nesting_info*)* @free_nesting_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_nesting_tree(%struct.nesting_info* %0) #0 {
  %2 = alloca %struct.nesting_info*, align 8
  %3 = alloca %struct.nesting_info*, align 8
  store %struct.nesting_info* %0, %struct.nesting_info** %2, align 8
  br label %4

4:                                                ; preds = %24, %1
  %5 = load %struct.nesting_info*, %struct.nesting_info** %2, align 8
  %6 = getelementptr inbounds %struct.nesting_info, %struct.nesting_info* %5, i32 0, i32 2
  %7 = load %struct.nesting_info*, %struct.nesting_info** %6, align 8
  %8 = icmp ne %struct.nesting_info* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = load %struct.nesting_info*, %struct.nesting_info** %2, align 8
  %11 = getelementptr inbounds %struct.nesting_info, %struct.nesting_info* %10, i32 0, i32 2
  %12 = load %struct.nesting_info*, %struct.nesting_info** %11, align 8
  call void @free_nesting_tree(%struct.nesting_info* %12)
  br label %13

13:                                               ; preds = %9, %4
  %14 = load %struct.nesting_info*, %struct.nesting_info** %2, align 8
  %15 = getelementptr inbounds %struct.nesting_info, %struct.nesting_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @htab_delete(i32 %16)
  %18 = load %struct.nesting_info*, %struct.nesting_info** %2, align 8
  %19 = getelementptr inbounds %struct.nesting_info, %struct.nesting_info* %18, i32 0, i32 0
  %20 = load %struct.nesting_info*, %struct.nesting_info** %19, align 8
  store %struct.nesting_info* %20, %struct.nesting_info** %3, align 8
  %21 = load %struct.nesting_info*, %struct.nesting_info** %2, align 8
  %22 = call i32 @ggc_free(%struct.nesting_info* %21)
  %23 = load %struct.nesting_info*, %struct.nesting_info** %3, align 8
  store %struct.nesting_info* %23, %struct.nesting_info** %2, align 8
  br label %24

24:                                               ; preds = %13
  %25 = load %struct.nesting_info*, %struct.nesting_info** %2, align 8
  %26 = icmp ne %struct.nesting_info* %25, null
  br i1 %26, label %4, label %27

27:                                               ; preds = %24
  ret void
}

declare dso_local i32 @htab_delete(i32) #1

declare dso_local i32 @ggc_free(%struct.nesting_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
