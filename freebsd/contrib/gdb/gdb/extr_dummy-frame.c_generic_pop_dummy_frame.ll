; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dummy-frame.c_generic_pop_dummy_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dummy-frame.c_generic_pop_dummy_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dummy_frame = type { i32 }

@dummy_frame_stack = common dso_local global %struct.dummy_frame* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Can't pop dummy frame!\00", align 1
@current_regcache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generic_pop_dummy_frame() #0 {
  %1 = alloca %struct.dummy_frame*, align 8
  %2 = load %struct.dummy_frame*, %struct.dummy_frame** @dummy_frame_stack, align 8
  store %struct.dummy_frame* %2, %struct.dummy_frame** %1, align 8
  %3 = load %struct.dummy_frame*, %struct.dummy_frame** %1, align 8
  %4 = icmp ne %struct.dummy_frame* %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %0
  %8 = load i32, i32* @current_regcache, align 4
  %9 = load %struct.dummy_frame*, %struct.dummy_frame** %1, align 8
  %10 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @regcache_cpy(i32 %8, i32 %11)
  %13 = call i32 (...) @flush_cached_frames()
  %14 = call i32 @discard_innermost_dummy(%struct.dummy_frame** @dummy_frame_stack)
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @regcache_cpy(i32, i32) #1

declare dso_local i32 @flush_cached_frames(...) #1

declare dso_local i32 @discard_innermost_dummy(%struct.dummy_frame**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
