; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_side.c_print_sdiff_script.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_side.c_print_sdiff_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.change = type { i32 }

@files = common dso_local global %struct.TYPE_2__* null, align 8
@next1 = common dso_local global i32 0, align 4
@next0 = common dso_local global i32 0, align 4
@find_change = common dso_local global i32 0, align 4
@print_sdiff_hunk = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_sdiff_script(%struct.change* %0) #0 {
  %2 = alloca %struct.change*, align 8
  store %struct.change* %0, %struct.change** %2, align 8
  %3 = call i32 (...) @begin_output()
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @files, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i64 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* @next1, align 4
  store i32 %8, i32* @next0, align 4
  %9 = load %struct.change*, %struct.change** %2, align 8
  %10 = load i32, i32* @find_change, align 4
  %11 = load i32, i32* @print_sdiff_hunk, align 4
  %12 = call i32 @print_script(%struct.change* %9, i32 %10, i32 %11)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @files, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @files, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @print_sdiff_common_lines(i32 %16, i32 %20)
  ret void
}

declare dso_local i32 @begin_output(...) #1

declare dso_local i32 @print_script(%struct.change*, i32, i32) #1

declare dso_local i32 @print_sdiff_common_lines(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
