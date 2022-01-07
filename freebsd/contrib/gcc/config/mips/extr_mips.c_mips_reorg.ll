; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_reorg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_reorg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_MIPS16 = common dso_local global i64 0, align 8
@TARGET_EXPLICIT_RELOCS = common dso_local global i64 0, align 8
@mips_flag_delayed_branch = common dso_local global i64 0, align 8
@TUNE_MIPS4130 = common dso_local global i64 0, align 8
@TARGET_VR4130_ALIGN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mips_reorg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_reorg() #0 {
  %1 = load i64, i64* @TARGET_MIPS16, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 (...) @mips16_lay_out_constants()
  br label %25

5:                                                ; preds = %0
  %6 = load i64, i64* @TARGET_EXPLICIT_RELOCS, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %5
  %9 = load i64, i64* @mips_flag_delayed_branch, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = call i32 (...) @get_insns()
  %13 = call i32 @dbr_schedule(i32 %12)
  br label %14

14:                                               ; preds = %11, %8
  %15 = call i32 (...) @mips_avoid_hazards()
  %16 = load i64, i64* @TUNE_MIPS4130, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i64, i64* @TARGET_VR4130_ALIGN, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 (...) @vr4130_align_insns()
  br label %23

23:                                               ; preds = %21, %18, %14
  br label %24

24:                                               ; preds = %23, %5
  br label %25

25:                                               ; preds = %24, %3
  ret void
}

declare dso_local i32 @mips16_lay_out_constants(...) #1

declare dso_local i32 @dbr_schedule(i32) #1

declare dso_local i32 @get_insns(...) #1

declare dso_local i32 @mips_avoid_hazards(...) #1

declare dso_local i32 @vr4130_align_insns(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
