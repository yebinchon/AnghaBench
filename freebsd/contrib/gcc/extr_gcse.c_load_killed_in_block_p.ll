; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_load_killed_in_block_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_load_killed_in_block_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@modify_mem_list = common dso_local global i64* null, align 8
@gcse_mem_operand = common dso_local global i64 0, align 8
@gcse_mems_conflict_p = common dso_local global i64 0, align 8
@mems_conflict_for_gcse_p = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i64, i32)* @load_killed_in_block_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_killed_in_block_p(%struct.TYPE_3__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64*, i64** @modify_mem_list, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i64, i64* %12, i64 %15
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i64 @MEM_READONLY_P(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %67

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %63, %44, %22
  %24 = load i64, i64* %10, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %66

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i64, i64* %10, align 8
  %31 = call i64 @XEXP(i64 %30, i32 0)
  %32 = call i32 @INSN_CUID(i64 %31)
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %44, label %35

35:                                               ; preds = %29, %26
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* %10, align 8
  %40 = call i64 @XEXP(i64 %39, i32 0)
  %41 = call i32 @INSN_CUID(i64 %40)
  %42 = load i32, i32* %7, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38, %29
  %45 = load i64, i64* %10, align 8
  %46 = call i64 @XEXP(i64 %45, i32 1)
  store i64 %46, i64* %10, align 8
  br label %23

47:                                               ; preds = %38, %35
  %48 = load i64, i64* %10, align 8
  %49 = call i64 @XEXP(i64 %48, i32 0)
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %11, align 8
  %51 = call i64 @CALL_P(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 1, i32* %5, align 4
  br label %67

54:                                               ; preds = %47
  %55 = load i64, i64* %8, align 8
  store i64 %55, i64* @gcse_mem_operand, align 8
  store i64 0, i64* @gcse_mems_conflict_p, align 8
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @PATTERN(i64 %56)
  %58 = load i32, i32* @mems_conflict_for_gcse_p, align 4
  %59 = call i32 @note_stores(i32 %57, i32 %58, i32* null)
  %60 = load i64, i64* @gcse_mems_conflict_p, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i32 1, i32* %5, align 4
  br label %67

63:                                               ; preds = %54
  %64 = load i64, i64* %10, align 8
  %65 = call i64 @XEXP(i64 %64, i32 1)
  store i64 %65, i64* %10, align 8
  br label %23

66:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %62, %53, %21
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i64 @MEM_READONLY_P(i64) #1

declare dso_local i32 @INSN_CUID(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @CALL_P(i64) #1

declare dso_local i32 @note_stores(i32, i32, i32*) #1

declare dso_local i32 @PATTERN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
