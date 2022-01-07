; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtl-factoring.c_rtl_seqabstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtl-factoring.c_rtl_seqabstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HASH_INIT = common dso_local global i32 0, align 4
@htab_hash_bucket = common dso_local global i32 0, align 4
@htab_eq_bucket = common dso_local global i32 0, align 4
@htab_del_bucket = common dso_local global i32 0, align 4
@hash_buckets = common dso_local global i32 0, align 4
@pattern_seqs = common dso_local global i32 0, align 4
@PROP_DEATH_NOTES = common dso_local global i32 0, align 4
@PROP_SCAN_DEAD_CODE = common dso_local global i32 0, align 4
@PROP_KILL_DEAD_CODE = common dso_local global i32 0, align 4
@CLEANUP_EXPENSIVE = common dso_local global i32 0, align 4
@CLEANUP_UPDATE_LIFE = common dso_local global i32 0, align 4
@flag_crossjumping = common dso_local global i64 0, align 8
@CLEANUP_CROSSJUMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rtl_seqabstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_seqabstr() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @HASH_INIT, align 4
  %3 = load i32, i32* @htab_hash_bucket, align 4
  %4 = load i32, i32* @htab_eq_bucket, align 4
  %5 = load i32, i32* @htab_del_bucket, align 4
  %6 = call i32 @htab_create(i32 %2, i32 %3, i32 %4, i32 %5)
  store i32 %6, i32* @hash_buckets, align 4
  %7 = call i32 (...) @fill_hash_bucket()
  %8 = call i32 (...) @compute_init_costs()
  %9 = call i32 (...) @collect_pattern_seqs()
  %10 = call i32 (...) @dump_pattern_seqs()
  store i32 1, i32* %1, align 4
  br label %11

11:                                               ; preds = %21, %0
  %12 = call i32 (...) @recompute_gain()
  %13 = load i32, i32* @pattern_seqs, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  br label %24

16:                                               ; preds = %11
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @dump_best_pattern_seq(i32 %17)
  %19 = call i32 (...) @update_pattern_seqs()
  %20 = call i32 (...) @abstract_best_seq()
  br label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %1, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %1, align 4
  br label %11

24:                                               ; preds = %15
  %25 = load i32, i32* @hash_buckets, align 4
  %26 = call i32 @htab_delete(i32 %25)
  %27 = load i32, i32* %1, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %49

29:                                               ; preds = %24
  %30 = call i32 @count_or_remove_death_notes(i32* null, i32 1)
  %31 = load i32, i32* @PROP_DEATH_NOTES, align 4
  %32 = load i32, i32* @PROP_SCAN_DEAD_CODE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @PROP_KILL_DEAD_CODE, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @life_analysis(i32 %35)
  %37 = load i32, i32* @CLEANUP_EXPENSIVE, align 4
  %38 = load i32, i32* @CLEANUP_UPDATE_LIFE, align 4
  %39 = or i32 %37, %38
  %40 = load i64, i64* @flag_crossjumping, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  %43 = load i32, i32* @CLEANUP_CROSSJUMP, align 4
  br label %45

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ]
  %47 = or i32 %39, %46
  %48 = call i32 @cleanup_cfg(i32 %47)
  br label %49

49:                                               ; preds = %45, %24
  ret void
}

declare dso_local i32 @htab_create(i32, i32, i32, i32) #1

declare dso_local i32 @fill_hash_bucket(...) #1

declare dso_local i32 @compute_init_costs(...) #1

declare dso_local i32 @collect_pattern_seqs(...) #1

declare dso_local i32 @dump_pattern_seqs(...) #1

declare dso_local i32 @recompute_gain(...) #1

declare dso_local i32 @dump_best_pattern_seq(i32) #1

declare dso_local i32 @update_pattern_seqs(...) #1

declare dso_local i32 @abstract_best_seq(...) #1

declare dso_local i32 @htab_delete(i32) #1

declare dso_local i32 @count_or_remove_death_notes(i32*, i32) #1

declare dso_local i32 @life_analysis(i32) #1

declare dso_local i32 @cleanup_cfg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
