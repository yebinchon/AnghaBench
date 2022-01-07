; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dummy-frame.c_discard_innermost_dummy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dummy-frame.c_discard_innermost_dummy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dummy_frame = type { i32, %struct.dummy_frame* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dummy_frame**)* @discard_innermost_dummy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @discard_innermost_dummy(%struct.dummy_frame** %0) #0 {
  %2 = alloca %struct.dummy_frame**, align 8
  %3 = alloca %struct.dummy_frame*, align 8
  store %struct.dummy_frame** %0, %struct.dummy_frame*** %2, align 8
  %4 = load %struct.dummy_frame**, %struct.dummy_frame*** %2, align 8
  %5 = load %struct.dummy_frame*, %struct.dummy_frame** %4, align 8
  store %struct.dummy_frame* %5, %struct.dummy_frame** %3, align 8
  %6 = load %struct.dummy_frame**, %struct.dummy_frame*** %2, align 8
  %7 = load %struct.dummy_frame*, %struct.dummy_frame** %6, align 8
  %8 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %7, i32 0, i32 1
  %9 = load %struct.dummy_frame*, %struct.dummy_frame** %8, align 8
  %10 = load %struct.dummy_frame**, %struct.dummy_frame*** %2, align 8
  store %struct.dummy_frame* %9, %struct.dummy_frame** %10, align 8
  %11 = load %struct.dummy_frame*, %struct.dummy_frame** %3, align 8
  %12 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @regcache_xfree(i32 %13)
  %15 = load %struct.dummy_frame*, %struct.dummy_frame** %3, align 8
  %16 = call i32 @xfree(%struct.dummy_frame* %15)
  ret void
}

declare dso_local i32 @regcache_xfree(i32) #1

declare dso_local i32 @xfree(%struct.dummy_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
