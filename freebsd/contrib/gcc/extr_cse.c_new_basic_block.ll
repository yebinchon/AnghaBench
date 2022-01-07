; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_new_basic_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_new_basic_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_elt = type { %struct.table_elt* }

@next_qty = common dso_local global i64 0, align 8
@cse_reg_info_timestamp = common dso_local global i32 0, align 4
@hard_regs_in_table = common dso_local global i32 0, align 4
@HASH_SIZE = common dso_local global i32 0, align 4
@table = common dso_local global %struct.table_elt** null, align 8
@free_element_chain = common dso_local global %struct.table_elt* null, align 8
@table_size = common dso_local global i64 0, align 8
@prev_insn = common dso_local global i64 0, align 8
@prev_insn_cc0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @new_basic_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @new_basic_block() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.table_elt*, align 8
  %3 = alloca %struct.table_elt*, align 8
  store i64 0, i64* @next_qty, align 8
  %4 = load i32, i32* @cse_reg_info_timestamp, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @cse_reg_info_timestamp, align 4
  %6 = load i32, i32* @hard_regs_in_table, align 4
  %7 = call i32 @CLEAR_HARD_REG_SET(i32 %6)
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %41, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @HASH_SIZE, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %44

12:                                               ; preds = %8
  %13 = load %struct.table_elt**, %struct.table_elt*** @table, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.table_elt*, %struct.table_elt** %13, i64 %15
  %17 = load %struct.table_elt*, %struct.table_elt** %16, align 8
  store %struct.table_elt* %17, %struct.table_elt** %2, align 8
  %18 = load %struct.table_elt*, %struct.table_elt** %2, align 8
  %19 = icmp ne %struct.table_elt* %18, null
  br i1 %19, label %20, label %40

20:                                               ; preds = %12
  %21 = load %struct.table_elt*, %struct.table_elt** %2, align 8
  store %struct.table_elt* %21, %struct.table_elt** %3, align 8
  %22 = load %struct.table_elt**, %struct.table_elt*** @table, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.table_elt*, %struct.table_elt** %22, i64 %24
  store %struct.table_elt* null, %struct.table_elt** %25, align 8
  br label %26

26:                                               ; preds = %31, %20
  %27 = load %struct.table_elt*, %struct.table_elt** %3, align 8
  %28 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %27, i32 0, i32 0
  %29 = load %struct.table_elt*, %struct.table_elt** %28, align 8
  %30 = icmp ne %struct.table_elt* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.table_elt*, %struct.table_elt** %3, align 8
  %33 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %32, i32 0, i32 0
  %34 = load %struct.table_elt*, %struct.table_elt** %33, align 8
  store %struct.table_elt* %34, %struct.table_elt** %3, align 8
  br label %26

35:                                               ; preds = %26
  %36 = load %struct.table_elt*, %struct.table_elt** @free_element_chain, align 8
  %37 = load %struct.table_elt*, %struct.table_elt** %3, align 8
  %38 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %37, i32 0, i32 0
  store %struct.table_elt* %36, %struct.table_elt** %38, align 8
  %39 = load %struct.table_elt*, %struct.table_elt** %2, align 8
  store %struct.table_elt* %39, %struct.table_elt** @free_element_chain, align 8
  br label %40

40:                                               ; preds = %35, %12
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %1, align 4
  br label %8

44:                                               ; preds = %8
  store i64 0, i64* @table_size, align 8
  ret void
}

declare dso_local i32 @CLEAR_HARD_REG_SET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
