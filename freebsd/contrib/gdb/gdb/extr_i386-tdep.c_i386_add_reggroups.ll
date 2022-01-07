; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_add_reggroups.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_add_reggroups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }

@i386_sse_reggroup = common dso_local global i32 0, align 4
@i386_mmx_reggroup = common dso_local global i32 0, align 4
@general_reggroup = common dso_local global i32 0, align 4
@float_reggroup = common dso_local global i32 0, align 4
@all_reggroup = common dso_local global i32 0, align 4
@save_reggroup = common dso_local global i32 0, align 4
@restore_reggroup = common dso_local global i32 0, align 4
@vector_reggroup = common dso_local global i32 0, align 4
@system_reggroup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gdbarch*)* @i386_add_reggroups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i386_add_reggroups(%struct.gdbarch* %0) #0 {
  %2 = alloca %struct.gdbarch*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %2, align 8
  %3 = load %struct.gdbarch*, %struct.gdbarch** %2, align 8
  %4 = load i32, i32* @i386_sse_reggroup, align 4
  %5 = call i32 @reggroup_add(%struct.gdbarch* %3, i32 %4)
  %6 = load %struct.gdbarch*, %struct.gdbarch** %2, align 8
  %7 = load i32, i32* @i386_mmx_reggroup, align 4
  %8 = call i32 @reggroup_add(%struct.gdbarch* %6, i32 %7)
  %9 = load %struct.gdbarch*, %struct.gdbarch** %2, align 8
  %10 = load i32, i32* @general_reggroup, align 4
  %11 = call i32 @reggroup_add(%struct.gdbarch* %9, i32 %10)
  %12 = load %struct.gdbarch*, %struct.gdbarch** %2, align 8
  %13 = load i32, i32* @float_reggroup, align 4
  %14 = call i32 @reggroup_add(%struct.gdbarch* %12, i32 %13)
  %15 = load %struct.gdbarch*, %struct.gdbarch** %2, align 8
  %16 = load i32, i32* @all_reggroup, align 4
  %17 = call i32 @reggroup_add(%struct.gdbarch* %15, i32 %16)
  %18 = load %struct.gdbarch*, %struct.gdbarch** %2, align 8
  %19 = load i32, i32* @save_reggroup, align 4
  %20 = call i32 @reggroup_add(%struct.gdbarch* %18, i32 %19)
  %21 = load %struct.gdbarch*, %struct.gdbarch** %2, align 8
  %22 = load i32, i32* @restore_reggroup, align 4
  %23 = call i32 @reggroup_add(%struct.gdbarch* %21, i32 %22)
  %24 = load %struct.gdbarch*, %struct.gdbarch** %2, align 8
  %25 = load i32, i32* @vector_reggroup, align 4
  %26 = call i32 @reggroup_add(%struct.gdbarch* %24, i32 %25)
  %27 = load %struct.gdbarch*, %struct.gdbarch** %2, align 8
  %28 = load i32, i32* @system_reggroup, align 4
  %29 = call i32 @reggroup_add(%struct.gdbarch* %27, i32 %28)
  ret void
}

declare dso_local i32 @reggroup_add(%struct.gdbarch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
