; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_flush_cached_frames.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_flush_cached_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@frame_cache_obstack = common dso_local global i32 0, align 4
@current_frame = common dso_local global i32* null, align 8
@frame_debug = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"{ flush_cached_frames () }\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_cached_frames() #0 {
  %1 = call i32 @obstack_free(i32* @frame_cache_obstack, i32 0)
  %2 = call i32 @obstack_init(i32* @frame_cache_obstack)
  store i32* null, i32** @current_frame, align 8
  %3 = call i32 @select_frame(i32* null)
  %4 = call i32 (...) @annotate_frames_invalid()
  %5 = load i64, i64* @frame_debug, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @gdb_stdlog, align 4
  %9 = call i32 @fprintf_unfiltered(i32 %8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %7, %0
  ret void
}

declare dso_local i32 @obstack_free(i32*, i32) #1

declare dso_local i32 @obstack_init(i32*) #1

declare dso_local i32 @select_frame(i32*) #1

declare dso_local i32 @annotate_frames_invalid(...) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
