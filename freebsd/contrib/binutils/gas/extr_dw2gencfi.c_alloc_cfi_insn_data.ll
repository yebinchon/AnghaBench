; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dw2gencfi.c_alloc_cfi_insn_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dw2gencfi.c_alloc_cfi_insn_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.fde_entry* }
%struct.fde_entry = type { %struct.cfi_insn_data** }
%struct.cfi_insn_data = type { %struct.cfi_insn_data* }

@frchain_now = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cfi_insn_data* ()* @alloc_cfi_insn_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cfi_insn_data* @alloc_cfi_insn_data() #0 {
  %1 = alloca %struct.cfi_insn_data*, align 8
  %2 = alloca %struct.fde_entry*, align 8
  %3 = call %struct.cfi_insn_data* @xcalloc(i32 1, i32 8)
  store %struct.cfi_insn_data* %3, %struct.cfi_insn_data** %1, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @frchain_now, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.fde_entry*, %struct.fde_entry** %7, align 8
  store %struct.fde_entry* %8, %struct.fde_entry** %2, align 8
  %9 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %1, align 8
  %10 = load %struct.fde_entry*, %struct.fde_entry** %2, align 8
  %11 = getelementptr inbounds %struct.fde_entry, %struct.fde_entry* %10, i32 0, i32 0
  %12 = load %struct.cfi_insn_data**, %struct.cfi_insn_data*** %11, align 8
  store %struct.cfi_insn_data* %9, %struct.cfi_insn_data** %12, align 8
  %13 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %1, align 8
  %14 = getelementptr inbounds %struct.cfi_insn_data, %struct.cfi_insn_data* %13, i32 0, i32 0
  %15 = load %struct.fde_entry*, %struct.fde_entry** %2, align 8
  %16 = getelementptr inbounds %struct.fde_entry, %struct.fde_entry* %15, i32 0, i32 0
  store %struct.cfi_insn_data** %14, %struct.cfi_insn_data*** %16, align 8
  %17 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %1, align 8
  ret %struct.cfi_insn_data* %17
}

declare dso_local %struct.cfi_insn_data* @xcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
