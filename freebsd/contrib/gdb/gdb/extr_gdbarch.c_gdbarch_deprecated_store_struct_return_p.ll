; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_gdbarch_deprecated_store_struct_return_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_gdbarch_deprecated_store_struct_return_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdbarch_deprecated_store_struct_return_p(%struct.gdbarch* %0) #0 {
  %2 = alloca %struct.gdbarch*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %2, align 8
  %3 = load %struct.gdbarch*, %struct.gdbarch** %2, align 8
  %4 = icmp ne %struct.gdbarch* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @gdb_assert(i32 %5)
  %7 = load %struct.gdbarch*, %struct.gdbarch** %2, align 8
  %8 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  ret i32 %11
}

declare dso_local i32 @gdb_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
