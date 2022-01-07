; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-reassoc.c_fini_reassoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-reassoc.c_fini_reassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_STATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Reassociation stats:\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Linearized: %d\0A\00", align 1
@reassociate_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Constants eliminated: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Ops eliminated: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Statements rewritten: %d\0A\00", align 1
@operand_rank = common dso_local global i32 0, align 4
@operand_entry_pool = common dso_local global i32 0, align 4
@bb_rank = common dso_local global i32 0, align 4
@tree = common dso_local global i32 0, align 4
@heap = common dso_local global i32 0, align 4
@broken_up_subtracts = common dso_local global i32 0, align 4
@CDI_POST_DOMINATORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fini_reassoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fini_reassoc() #0 {
  %1 = load i64, i64* @dump_file, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %23

3:                                                ; preds = %0
  %4 = load i32, i32* @dump_flags, align 4
  %5 = load i32, i32* @TDF_STATS, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = load i64, i64* @dump_file, align 8
  %10 = call i32 (i64, i8*, ...) @fprintf(i64 %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* @dump_file, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reassociate_stats, i32 0, i32 0), align 4
  %13 = call i32 (i64, i8*, ...) @fprintf(i64 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load i64, i64* @dump_file, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reassociate_stats, i32 0, i32 1), align 4
  %16 = call i32 (i64, i8*, ...) @fprintf(i64 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = load i64, i64* @dump_file, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reassociate_stats, i32 0, i32 2), align 4
  %19 = call i32 (i64, i8*, ...) @fprintf(i64 %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %18)
  %20 = load i64, i64* @dump_file, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reassociate_stats, i32 0, i32 3), align 4
  %22 = call i32 (i64, i8*, ...) @fprintf(i64 %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %8, %3, %0
  %24 = load i32, i32* @operand_rank, align 4
  %25 = call i32 @htab_delete(i32 %24)
  %26 = load i32, i32* @operand_entry_pool, align 4
  %27 = call i32 @free_alloc_pool(i32 %26)
  %28 = load i32, i32* @bb_rank, align 4
  %29 = call i32 @free(i32 %28)
  %30 = load i32, i32* @tree, align 4
  %31 = load i32, i32* @heap, align 4
  %32 = load i32, i32* @broken_up_subtracts, align 4
  %33 = call i32 @VEC_free(i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* @CDI_POST_DOMINATORS, align 4
  %35 = call i32 @free_dominance_info(i32 %34)
  ret void
}

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @htab_delete(i32) #1

declare dso_local i32 @free_alloc_pool(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @VEC_free(i32, i32, i32) #1

declare dso_local i32 @free_dominance_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
