; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-nested.c_walk_all_functions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-nested.c_walk_all_functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nesting_info = type { %struct.nesting_info*, %struct.nesting_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.nesting_info*)* @walk_all_functions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_all_functions(i32 %0, %struct.nesting_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nesting_info*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.nesting_info* %1, %struct.nesting_info** %4, align 8
  br label %5

5:                                                ; preds = %22, %2
  %6 = load %struct.nesting_info*, %struct.nesting_info** %4, align 8
  %7 = getelementptr inbounds %struct.nesting_info, %struct.nesting_info* %6, i32 0, i32 1
  %8 = load %struct.nesting_info*, %struct.nesting_info** %7, align 8
  %9 = icmp ne %struct.nesting_info* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.nesting_info*, %struct.nesting_info** %4, align 8
  %13 = getelementptr inbounds %struct.nesting_info, %struct.nesting_info* %12, i32 0, i32 1
  %14 = load %struct.nesting_info*, %struct.nesting_info** %13, align 8
  call void @walk_all_functions(i32 %11, %struct.nesting_info* %14)
  br label %15

15:                                               ; preds = %10, %5
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.nesting_info*, %struct.nesting_info** %4, align 8
  %18 = call i32 @walk_function(i32 %16, %struct.nesting_info* %17)
  %19 = load %struct.nesting_info*, %struct.nesting_info** %4, align 8
  %20 = getelementptr inbounds %struct.nesting_info, %struct.nesting_info* %19, i32 0, i32 0
  %21 = load %struct.nesting_info*, %struct.nesting_info** %20, align 8
  store %struct.nesting_info* %21, %struct.nesting_info** %4, align 8
  br label %22

22:                                               ; preds = %15
  %23 = load %struct.nesting_info*, %struct.nesting_info** %4, align 8
  %24 = icmp ne %struct.nesting_info* %23, null
  br i1 %24, label %5, label %25

25:                                               ; preds = %22
  ret void
}

declare dso_local i32 @walk_function(i32, %struct.nesting_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
