; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mep.c_mep_process_saved_insns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mep.c_mep_process_saved_insns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@MAX_SAVED_FIXUP_CHAINS = common dso_local global i32 0, align 4
@num_insns_saved = common dso_local global i32 0, align 4
@saved_insns = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mep_process_saved_insns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mep_process_saved_insns() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @MAX_SAVED_FIXUP_CHAINS, align 4
  %3 = sub nsw i32 %2, 1
  %4 = call i32 @gas_cgen_save_fixups(i32 %3)
  %5 = call i32 (...) @mep_check_parallel_scheduling()
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %32, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @num_insns_saved, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %6
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @gas_cgen_restore_fixups(i32 %11)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @saved_insns, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @saved_insns, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @saved_insns, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @CGEN_FIELDS_BITSIZE(i32* %29)
  %31 = call i32 @gas_cgen_finish_insn(i32 %18, i32 %24, i32 %30, i32 1, i32* null)
  br label %32

32:                                               ; preds = %10
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %6

35:                                               ; preds = %6
  %36 = load i32, i32* @MAX_SAVED_FIXUP_CHAINS, align 4
  %37 = sub nsw i32 %36, 1
  %38 = call i32 @gas_cgen_restore_fixups(i32 %37)
  %39 = call i32 (...) @gas_cgen_initialize_saved_fixups_array()
  store i32 0, i32* @num_insns_saved, align 4
  %40 = call i32 (...) @listing_prev_line()
  ret void
}

declare dso_local i32 @gas_cgen_save_fixups(i32) #1

declare dso_local i32 @mep_check_parallel_scheduling(...) #1

declare dso_local i32 @gas_cgen_restore_fixups(i32) #1

declare dso_local i32 @gas_cgen_finish_insn(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @CGEN_FIELDS_BITSIZE(i32*) #1

declare dso_local i32 @gas_cgen_initialize_saved_fixups_array(...) #1

declare dso_local i32 @listing_prev_line(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
