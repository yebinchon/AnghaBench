; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfg.c_initialize_original_copy_tables.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfg.c_initialize_original_copy_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@original_copy_bb_pool = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"original_copy\00", align 1
@bb_copy_original_hash = common dso_local global i32 0, align 4
@bb_copy_original_eq = common dso_local global i32 0, align 4
@bb_original = common dso_local global i8* null, align 8
@bb_copy = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initialize_original_copy_tables() #0 {
  %1 = load i64, i64* @original_copy_bb_pool, align 8
  %2 = icmp ne i64 %1, 0
  %3 = xor i1 %2, true
  %4 = zext i1 %3 to i32
  %5 = call i32 @gcc_assert(i32 %4)
  %6 = call i64 @create_alloc_pool(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 4, i32 10)
  store i64 %6, i64* @original_copy_bb_pool, align 8
  %7 = load i32, i32* @bb_copy_original_hash, align 4
  %8 = load i32, i32* @bb_copy_original_eq, align 4
  %9 = call i8* @htab_create(i32 10, i32 %7, i32 %8, i32* null)
  store i8* %9, i8** @bb_original, align 8
  %10 = load i32, i32* @bb_copy_original_hash, align 4
  %11 = load i32, i32* @bb_copy_original_eq, align 4
  %12 = call i8* @htab_create(i32 10, i32 %10, i32 %11, i32* null)
  store i8* %12, i8** @bb_copy, align 8
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @create_alloc_pool(i8*, i32, i32) #1

declare dso_local i8* @htab_create(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
