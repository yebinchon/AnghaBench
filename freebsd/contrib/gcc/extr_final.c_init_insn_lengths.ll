; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_final.c_init_insn_lengths.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_final.c_init_insn_lengths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uid_shuid = common dso_local global i64 0, align 8
@insn_lengths = common dso_local global i64 0, align 8
@insn_lengths_max_uid = common dso_local global i64 0, align 8
@uid_align = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_insn_lengths() #0 {
  %1 = load i64, i64* @uid_shuid, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i64, i64* @uid_shuid, align 8
  %5 = call i32 @free(i64 %4)
  store i64 0, i64* @uid_shuid, align 8
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i64, i64* @insn_lengths, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i64, i64* @insn_lengths, align 8
  %11 = call i32 @free(i64 %10)
  store i64 0, i64* @insn_lengths, align 8
  store i64 0, i64* @insn_lengths_max_uid, align 8
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i64, i64* @uid_align, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i64, i64* @uid_align, align 8
  %17 = call i32 @free(i64 %16)
  store i64 0, i64* @uid_align, align 8
  br label %18

18:                                               ; preds = %15, %12
  ret void
}

declare dso_local i32 @free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
