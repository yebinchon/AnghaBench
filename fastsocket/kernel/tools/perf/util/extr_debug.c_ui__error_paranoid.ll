; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_debug.c_ui__error_paranoid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_debug.c_ui__error_paranoid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [244 x i8] c"Permission error - are you root?\0AConsider tweaking /proc/sys/kernel/perf_event_paranoid:\0A -1 - Not paranoid at all\0A  0 - Disallow raw tracepoint access for unpriv\0A  1 - Disallow cpu events for unpriv\0A  2 - Disallow kernel profiling for unpriv\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ui__error_paranoid() #0 {
  %1 = call i32 @ui__error(i8* getelementptr inbounds ([244 x i8], [244 x i8]* @.str, i64 0, i64 0))
  ret i32 %1
}

declare dso_local i32 @ui__error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
