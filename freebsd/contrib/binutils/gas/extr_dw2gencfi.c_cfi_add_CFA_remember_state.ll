; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dw2gencfi.c_cfi_add_CFA_remember_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dw2gencfi.c_cfi_add_CFA_remember_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.cfa_save_data*, i32 }
%struct.cfa_save_data = type { %struct.cfa_save_data*, i32 }

@DW_CFA_remember_state = common dso_local global i32 0, align 4
@frchain_now = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfi_add_CFA_remember_state() #0 {
  %1 = alloca %struct.cfa_save_data*, align 8
  %2 = load i32, i32* @DW_CFA_remember_state, align 4
  %3 = call i32 @cfi_add_CFA_insn(i32 %2)
  %4 = call %struct.cfa_save_data* @xmalloc(i32 16)
  store %struct.cfa_save_data* %4, %struct.cfa_save_data** %1, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @frchain_now, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.cfa_save_data*, %struct.cfa_save_data** %1, align 8
  %11 = getelementptr inbounds %struct.cfa_save_data, %struct.cfa_save_data* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @frchain_now, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.cfa_save_data*, %struct.cfa_save_data** %15, align 8
  %17 = load %struct.cfa_save_data*, %struct.cfa_save_data** %1, align 8
  %18 = getelementptr inbounds %struct.cfa_save_data, %struct.cfa_save_data* %17, i32 0, i32 0
  store %struct.cfa_save_data* %16, %struct.cfa_save_data** %18, align 8
  %19 = load %struct.cfa_save_data*, %struct.cfa_save_data** %1, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @frchain_now, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store %struct.cfa_save_data* %19, %struct.cfa_save_data** %23, align 8
  ret void
}

declare dso_local i32 @cfi_add_CFA_insn(i32) #1

declare dso_local %struct.cfa_save_data* @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
