; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_set_gdbarch_double_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_set_gdbarch_double_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { %struct.floatformat* }
%struct.floatformat = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_gdbarch_double_format(%struct.gdbarch* %0, %struct.floatformat* %1) #0 {
  %3 = alloca %struct.gdbarch*, align 8
  %4 = alloca %struct.floatformat*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %3, align 8
  store %struct.floatformat* %1, %struct.floatformat** %4, align 8
  %5 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %6 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %7 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %6, i32 0, i32 0
  store %struct.floatformat* %5, %struct.floatformat** %7, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
