; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_debug.c_init_debug.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_debug.c_init_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VERBOSE = common dso_local global i32 0, align 4
@debug_level = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@print_message_debug_level = common dso_local global i32 0, align 4
@stdout = common dso_local global i8* null, align 8
@_stdout = common dso_local global i8* null, align 8
@_stddbg = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@_stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_debug() #0 {
  %1 = load i32, i32* @VERBOSE, align 4
  store i32 %1, i32* @debug_level, align 4
  %2 = load i32, i32* @INFO, align 4
  store i32 %2, i32* @debug_level, align 4
  store i32 0, i32* @print_message_debug_level, align 4
  %3 = load i8*, i8** @stdout, align 8
  store i8* %3, i8** @_stdout, align 8
  %4 = load i8*, i8** @stdout, align 8
  store i8* %4, i8** @_stddbg, align 8
  %5 = load i32, i32* @stderr, align 4
  store i32 %5, i32* @_stderr, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
