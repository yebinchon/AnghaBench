; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_record_last_mem_set_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_record_last_mem_set_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@modify_mem_list = common dso_local global i32* null, align 8
@modify_mem_list_set = common dso_local global i32 0, align 4
@canon_modify_mem_list = common dso_local global i32* null, align 8
@blocks_with_calls = common dso_local global i32 0, align 4
@canon_list_insert = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @record_last_mem_set_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_last_mem_set_info(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i32 @BLOCK_NUM(i64 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i64, i64* %2, align 8
  %7 = load i32*, i32** @modify_mem_list, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @alloc_INSN_LIST(i64 %6, i32 %11)
  %13 = load i32*, i32** @modify_mem_list, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32 %12, i32* %16, align 4
  %17 = load i32, i32* @modify_mem_list_set, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @bitmap_set_bit(i32 %17, i32 %18)
  %20 = load i64, i64* %2, align 8
  %21 = call i64 @CALL_P(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %1
  %24 = load i64, i64* %2, align 8
  %25 = load i32*, i32** @canon_modify_mem_list, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @alloc_INSN_LIST(i64 %24, i32 %29)
  %31 = load i32*, i32** @canon_modify_mem_list, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %30, i32* %34, align 4
  %35 = load i32, i32* @blocks_with_calls, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @bitmap_set_bit(i32 %35, i32 %36)
  br label %45

38:                                               ; preds = %1
  %39 = load i64, i64* %2, align 8
  %40 = call i32 @PATTERN(i64 %39)
  %41 = load i32, i32* @canon_list_insert, align 4
  %42 = load i64, i64* %2, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @note_stores(i32 %40, i32 %41, i8* %43)
  br label %45

45:                                               ; preds = %38, %23
  ret void
}

declare dso_local i32 @BLOCK_NUM(i64) #1

declare dso_local i32 @alloc_INSN_LIST(i64, i32) #1

declare dso_local i32 @bitmap_set_bit(i32, i32) #1

declare dso_local i64 @CALL_P(i64) #1

declare dso_local i32 @note_stores(i32, i32, i8*) #1

declare dso_local i32 @PATTERN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
