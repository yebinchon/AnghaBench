; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i387-tdep.c_i387_return_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i387-tdep.c_i387_return_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.regcache = type { i32 }
%struct.gdbarch_tdep = type { i32 }

@I387_FSTAT_REGNUM = common dso_local global i32 0, align 4
@I387_FTAG_REGNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i387_return_value(%struct.gdbarch* %0, %struct.regcache* %1) #0 {
  %3 = alloca %struct.gdbarch*, align 8
  %4 = alloca %struct.regcache*, align 8
  %5 = alloca %struct.gdbarch_tdep*, align 8
  %6 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %3, align 8
  store %struct.regcache* %1, %struct.regcache** %4, align 8
  %7 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %8 = call %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch* %7)
  store %struct.gdbarch_tdep* %8, %struct.gdbarch_tdep** %5, align 8
  %9 = load %struct.regcache*, %struct.regcache** %4, align 8
  %10 = load i32, i32* @I387_FSTAT_REGNUM, align 4
  %11 = call i32 @regcache_raw_read_unsigned(%struct.regcache* %9, i32 %10, i32* %6)
  %12 = load i32, i32* %6, align 4
  %13 = or i32 %12, 14336
  store i32 %13, i32* %6, align 4
  %14 = load %struct.regcache*, %struct.regcache** %4, align 8
  %15 = load i32, i32* @I387_FSTAT_REGNUM, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @regcache_raw_write_unsigned(%struct.regcache* %14, i32 %15, i32 %16)
  %18 = load %struct.regcache*, %struct.regcache** %4, align 8
  %19 = load i32, i32* @I387_FTAG_REGNUM, align 4
  %20 = call i32 @regcache_raw_write_unsigned(%struct.regcache* %18, i32 %19, i32 16383)
  ret void
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch*) #1

declare dso_local i32 @regcache_raw_read_unsigned(%struct.regcache*, i32, i32*) #1

declare dso_local i32 @regcache_raw_write_unsigned(%struct.regcache*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
