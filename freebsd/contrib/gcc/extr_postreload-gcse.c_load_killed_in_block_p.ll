; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_postreload-gcse.c_load_killed_in_block_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_postreload-gcse.c_load_killed_in_block_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.modifies_mem = type { %struct.modifies_mem*, i32 }

@modifies_mem_list = common dso_local global %struct.modifies_mem* null, align 8
@mems_conflict_p = common dso_local global i64 0, align 8
@find_mem_conflicts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @load_killed_in_block_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_killed_in_block_p(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.modifies_mem*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.modifies_mem*, %struct.modifies_mem** @modifies_mem_list, align 8
  store %struct.modifies_mem* %10, %struct.modifies_mem** %8, align 8
  br label %11

11:                                               ; preds = %51, %33, %3
  %12 = load %struct.modifies_mem*, %struct.modifies_mem** %8, align 8
  %13 = icmp ne %struct.modifies_mem* %12, null
  br i1 %13, label %14, label %55

14:                                               ; preds = %11
  %15 = load %struct.modifies_mem*, %struct.modifies_mem** %8, align 8
  %16 = getelementptr inbounds %struct.modifies_mem, %struct.modifies_mem* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @INSN_CUID(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %20, %14
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @INSN_CUID(i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %28, %20
  %34 = load %struct.modifies_mem*, %struct.modifies_mem** %8, align 8
  %35 = getelementptr inbounds %struct.modifies_mem, %struct.modifies_mem* %34, i32 0, i32 0
  %36 = load %struct.modifies_mem*, %struct.modifies_mem** %35, align 8
  store %struct.modifies_mem* %36, %struct.modifies_mem** %8, align 8
  br label %11

37:                                               ; preds = %28, %25
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @CALL_P(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 1, i32* %4, align 4
  br label %56

42:                                               ; preds = %37
  store i64 0, i64* @mems_conflict_p, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @PATTERN(i32 %43)
  %45 = load i32, i32* @find_mem_conflicts, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @note_stores(i32 %44, i32 %45, i32 %46)
  %48 = load i64, i64* @mems_conflict_p, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i32 1, i32* %4, align 4
  br label %56

51:                                               ; preds = %42
  %52 = load %struct.modifies_mem*, %struct.modifies_mem** %8, align 8
  %53 = getelementptr inbounds %struct.modifies_mem, %struct.modifies_mem* %52, i32 0, i32 0
  %54 = load %struct.modifies_mem*, %struct.modifies_mem** %53, align 8
  store %struct.modifies_mem* %54, %struct.modifies_mem** %8, align 8
  br label %11

55:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %50, %41
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @INSN_CUID(i32) #1

declare dso_local i64 @CALL_P(i32) #1

declare dso_local i32 @note_stores(i32, i32, i32) #1

declare dso_local i32 @PATTERN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
