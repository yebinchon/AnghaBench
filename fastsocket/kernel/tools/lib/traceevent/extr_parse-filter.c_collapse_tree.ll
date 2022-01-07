; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_collapse_tree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_collapse_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_arg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@FILTER_ARG_BOOLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.filter_arg* (%struct.filter_arg*)* @collapse_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.filter_arg* @collapse_tree(%struct.filter_arg* %0) #0 {
  %2 = alloca %struct.filter_arg*, align 8
  %3 = alloca %struct.filter_arg*, align 8
  %4 = alloca i32, align 4
  store %struct.filter_arg* %0, %struct.filter_arg** %3, align 8
  %5 = load %struct.filter_arg*, %struct.filter_arg** %3, align 8
  %6 = load %struct.filter_arg*, %struct.filter_arg** %3, align 8
  %7 = call i32 @test_arg(%struct.filter_arg* %5, %struct.filter_arg* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %24 [
    i32 129, label %9
    i32 128, label %11
    i32 130, label %11
  ]

9:                                                ; preds = %1
  %10 = load %struct.filter_arg*, %struct.filter_arg** %3, align 8
  store %struct.filter_arg* %10, %struct.filter_arg** %2, align 8
  br label %26

11:                                               ; preds = %1, %1
  %12 = load %struct.filter_arg*, %struct.filter_arg** %3, align 8
  %13 = call i32 @free_arg(%struct.filter_arg* %12)
  %14 = call %struct.filter_arg* (...) @allocate_arg()
  store %struct.filter_arg* %14, %struct.filter_arg** %3, align 8
  %15 = load i32, i32* @FILTER_ARG_BOOLEAN, align 4
  %16 = load %struct.filter_arg*, %struct.filter_arg** %3, align 8
  %17 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 128
  %20 = zext i1 %19 to i32
  %21 = load %struct.filter_arg*, %struct.filter_arg** %3, align 8
  %22 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  br label %24

24:                                               ; preds = %11, %1
  %25 = load %struct.filter_arg*, %struct.filter_arg** %3, align 8
  store %struct.filter_arg* %25, %struct.filter_arg** %2, align 8
  br label %26

26:                                               ; preds = %24, %9
  %27 = load %struct.filter_arg*, %struct.filter_arg** %2, align 8
  ret %struct.filter_arg* %27
}

declare dso_local i32 @test_arg(%struct.filter_arg*, %struct.filter_arg*) #1

declare dso_local i32 @free_arg(%struct.filter_arg*) #1

declare dso_local %struct.filter_arg* @allocate_arg(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
