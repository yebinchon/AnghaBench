; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_initialize_data_structures.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_initialize_data_structures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DF_HARD_REGS = common dso_local global i32 0, align 4
@DF_EQUIV_NOTES = common dso_local global i32 0, align 4
@DF_SUBREGS = common dso_local global i32 0, align 4
@df = common dso_local global i32 0, align 4
@DF_DU_CHAIN = common dso_local global i32 0, align 4
@DF_UD_CHAIN = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@last_basic_block = common dso_local global i32 0, align 4
@last_bb = common dso_local global i32 0, align 4
@uses_num = common dso_local global i32 0, align 4
@defs_num = common dso_local global i32 0, align 4
@def_entry = common dso_local global i8* null, align 8
@use_entry = common dso_local global i8* null, align 8
@see_bb_splay_ar = common dso_local global i8* null, align 8
@see_bb_hash_ar = common dso_local global i8* null, align 8
@hash_descriptor_pre_extension = common dso_local global i32 0, align 4
@eq_descriptor_pre_extension = common dso_local global i32 0, align 4
@hash_del_pre_extension = common dso_local global i32 0, align 4
@see_pre_extension_hash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @see_initialize_data_structures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @see_initialize_data_structures() #0 {
  %1 = load i32, i32* @DF_HARD_REGS, align 4
  %2 = load i32, i32* @DF_EQUIV_NOTES, align 4
  %3 = or i32 %1, %2
  %4 = load i32, i32* @DF_SUBREGS, align 4
  %5 = or i32 %3, %4
  %6 = call i32 @df_init(i32 %5)
  store i32 %6, i32* @df, align 4
  %7 = load i32, i32* @df, align 4
  %8 = call i32 @df_rd_add_problem(i32 %7, i32 0)
  %9 = load i32, i32* @df, align 4
  %10 = load i32, i32* @DF_DU_CHAIN, align 4
  %11 = load i32, i32* @DF_UD_CHAIN, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @df_chain_add_problem(i32 %9, i32 %12)
  %14 = load i32, i32* @df, align 4
  %15 = call i32 @df_analyze(i32 %14)
  %16 = load i64, i64* @dump_file, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %0
  %19 = load i32, i32* @df, align 4
  %20 = load i64, i64* @dump_file, align 8
  %21 = call i32 @df_dump(i32 %19, i64 %20)
  br label %22

22:                                               ; preds = %18, %0
  %23 = load i32, i32* @last_basic_block, align 4
  store i32 %23, i32* @last_bb, align 4
  %24 = load i32, i32* @df, align 4
  %25 = call i32 @DF_USES_SIZE(i32 %24)
  store i32 %25, i32* @uses_num, align 4
  %26 = load i32, i32* @df, align 4
  %27 = call i32 @DF_DEFS_SIZE(i32 %26)
  store i32 %27, i32* @defs_num, align 4
  %28 = load i32, i32* @defs_num, align 4
  %29 = call i8* @xcalloc(i32 %28, i32 4)
  store i8* %29, i8** @def_entry, align 8
  %30 = load i32, i32* @uses_num, align 4
  %31 = call i8* @xcalloc(i32 %30, i32 4)
  store i8* %31, i8** @use_entry, align 8
  %32 = load i32, i32* @last_bb, align 4
  %33 = call i8* @xcalloc(i32 %32, i32 4)
  store i8* %33, i8** @see_bb_splay_ar, align 8
  %34 = load i32, i32* @last_bb, align 4
  %35 = call i8* @xcalloc(i32 %34, i32 4)
  store i8* %35, i8** @see_bb_hash_ar, align 8
  %36 = load i32, i32* @hash_descriptor_pre_extension, align 4
  %37 = load i32, i32* @eq_descriptor_pre_extension, align 4
  %38 = load i32, i32* @hash_del_pre_extension, align 4
  %39 = call i32 @htab_create(i32 10, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* @see_pre_extension_hash, align 4
  ret void
}

declare dso_local i32 @df_init(i32) #1

declare dso_local i32 @df_rd_add_problem(i32, i32) #1

declare dso_local i32 @df_chain_add_problem(i32, i32) #1

declare dso_local i32 @df_analyze(i32) #1

declare dso_local i32 @df_dump(i32, i64) #1

declare dso_local i32 @DF_USES_SIZE(i32) #1

declare dso_local i32 @DF_DEFS_SIZE(i32) #1

declare dso_local i8* @xcalloc(i32, i32) #1

declare dso_local i32 @htab_create(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
