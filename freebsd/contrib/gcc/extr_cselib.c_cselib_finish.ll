; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cselib.c_cselib_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cselib.c_cselib_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@elt_list_pool = common dso_local global i32 0, align 4
@elt_loc_list_pool = common dso_local global i32 0, align 4
@cselib_val_pool = common dso_local global i32 0, align 4
@value_pool = common dso_local global i32 0, align 4
@cselib_hash_table = common dso_local global i64 0, align 8
@used_regs = common dso_local global i64 0, align 8
@n_useless_values = common dso_local global i64 0, align 8
@next_unknown_value = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cselib_finish() #0 {
  %1 = load i32, i32* @elt_list_pool, align 4
  %2 = call i32 @free_alloc_pool(i32 %1)
  %3 = load i32, i32* @elt_loc_list_pool, align 4
  %4 = call i32 @free_alloc_pool(i32 %3)
  %5 = load i32, i32* @cselib_val_pool, align 4
  %6 = call i32 @free_alloc_pool(i32 %5)
  %7 = load i32, i32* @value_pool, align 4
  %8 = call i32 @free_alloc_pool(i32 %7)
  %9 = call i32 (...) @cselib_clear_table()
  %10 = load i64, i64* @cselib_hash_table, align 8
  %11 = call i32 @htab_delete(i64 %10)
  %12 = load i64, i64* @used_regs, align 8
  %13 = call i32 @free(i64 %12)
  store i64 0, i64* @used_regs, align 8
  store i64 0, i64* @cselib_hash_table, align 8
  store i64 0, i64* @n_useless_values, align 8
  store i64 0, i64* @next_unknown_value, align 8
  ret void
}

declare dso_local i32 @free_alloc_pool(i32) #1

declare dso_local i32 @cselib_clear_table(...) #1

declare dso_local i32 @htab_delete(i64) #1

declare dso_local i32 @free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
