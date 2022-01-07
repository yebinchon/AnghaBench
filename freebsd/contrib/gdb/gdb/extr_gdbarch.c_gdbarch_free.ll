; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_gdbarch_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_gdbarch_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { %struct.obstack*, i32 }
%struct.obstack = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdbarch_free(%struct.gdbarch* %0) #0 {
  %2 = alloca %struct.gdbarch*, align 8
  %3 = alloca %struct.obstack*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %2, align 8
  %4 = load %struct.gdbarch*, %struct.gdbarch** %2, align 8
  %5 = icmp ne %struct.gdbarch* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @gdb_assert(i32 %6)
  %8 = load %struct.gdbarch*, %struct.gdbarch** %2, align 8
  %9 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @gdb_assert(i32 %13)
  %15 = load %struct.gdbarch*, %struct.gdbarch** %2, align 8
  %16 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %15, i32 0, i32 0
  %17 = load %struct.obstack*, %struct.obstack** %16, align 8
  store %struct.obstack* %17, %struct.obstack** %3, align 8
  %18 = load %struct.obstack*, %struct.obstack** %3, align 8
  %19 = call i32 @obstack_free(%struct.obstack* %18, i32 0)
  %20 = load %struct.obstack*, %struct.obstack** %3, align 8
  %21 = call i32 @xfree(%struct.obstack* %20)
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @obstack_free(%struct.obstack*, i32) #1

declare dso_local i32 @xfree(%struct.obstack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
