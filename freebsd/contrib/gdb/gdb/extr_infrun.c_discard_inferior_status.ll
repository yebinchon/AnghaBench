; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_discard_inferior_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_discard_inferior_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inferior_status = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @discard_inferior_status(%struct.inferior_status* %0) #0 {
  %2 = alloca %struct.inferior_status*, align 8
  store %struct.inferior_status* %0, %struct.inferior_status** %2, align 8
  %3 = load %struct.inferior_status*, %struct.inferior_status** %2, align 8
  %4 = getelementptr inbounds %struct.inferior_status, %struct.inferior_status* %3, i32 0, i32 2
  %5 = call i32 @bpstat_clear(i32* %4)
  %6 = load %struct.inferior_status*, %struct.inferior_status** %2, align 8
  %7 = getelementptr inbounds %struct.inferior_status, %struct.inferior_status* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @regcache_xfree(i32 %8)
  %10 = load %struct.inferior_status*, %struct.inferior_status** %2, align 8
  %11 = getelementptr inbounds %struct.inferior_status, %struct.inferior_status* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @regcache_xfree(i32 %12)
  %14 = load %struct.inferior_status*, %struct.inferior_status** %2, align 8
  %15 = call i32 @xfree(%struct.inferior_status* %14)
  ret void
}

declare dso_local i32 @bpstat_clear(i32*) #1

declare dso_local i32 @regcache_xfree(i32) #1

declare dso_local i32 @xfree(%struct.inferior_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
