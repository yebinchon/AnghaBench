; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_frame_pop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_frame_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.regcache = type { i32 }
%struct.cleanup = type { i32 }

@DEPRECATED_POP_FRAME = common dso_local global i32 0, align 4
@current_gdbarch = common dso_local global i32 0, align 4
@do_frame_unwind_register = common dso_local global i32 0, align 4
@current_regcache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @frame_pop(%struct.frame_info* %0) #0 {
  %2 = alloca %struct.frame_info*, align 8
  %3 = alloca %struct.regcache*, align 8
  %4 = alloca %struct.cleanup*, align 8
  %5 = alloca %struct.regcache*, align 8
  %6 = alloca %struct.cleanup*, align 8
  store %struct.frame_info* %0, %struct.frame_info** %2, align 8
  %7 = call i64 (...) @DEPRECATED_POP_FRAME_P()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @DEPRECATED_POP_FRAME, align 4
  br label %25

11:                                               ; preds = %1
  %12 = load i32, i32* @current_gdbarch, align 4
  %13 = call %struct.regcache* @regcache_xmalloc(i32 %12)
  store %struct.regcache* %13, %struct.regcache** %5, align 8
  %14 = load %struct.regcache*, %struct.regcache** %5, align 8
  %15 = call %struct.cleanup* @make_cleanup_regcache_xfree(%struct.regcache* %14)
  store %struct.cleanup* %15, %struct.cleanup** %6, align 8
  %16 = load %struct.regcache*, %struct.regcache** %5, align 8
  %17 = load i32, i32* @do_frame_unwind_register, align 4
  %18 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  %19 = call i32 @regcache_save(%struct.regcache* %16, i32 %17, %struct.frame_info* %18)
  %20 = load i32, i32* @current_regcache, align 4
  %21 = load %struct.regcache*, %struct.regcache** %5, align 8
  %22 = call i32 @regcache_cpy(i32 %20, %struct.regcache* %21)
  %23 = load %struct.cleanup*, %struct.cleanup** %6, align 8
  %24 = call i32 @do_cleanups(%struct.cleanup* %23)
  br label %25

25:                                               ; preds = %11, %9
  %26 = call i32 (...) @flush_cached_frames()
  ret void
}

declare dso_local i64 @DEPRECATED_POP_FRAME_P(...) #1

declare dso_local %struct.regcache* @regcache_xmalloc(i32) #1

declare dso_local %struct.cleanup* @make_cleanup_regcache_xfree(%struct.regcache*) #1

declare dso_local i32 @regcache_save(%struct.regcache*, i32, %struct.frame_info*) #1

declare dso_local i32 @regcache_cpy(i32, %struct.regcache*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @flush_cached_frames(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
