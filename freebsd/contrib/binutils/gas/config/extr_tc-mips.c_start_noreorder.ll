; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_start_noreorder.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_start_noreorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }

@mips_opts = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@history = common dso_local global %struct.TYPE_5__* null, align 8
@mips_optimize = common dso_local global i64 0, align 8
@frag_now = common dso_local global i32 0, align 4
@prev_nop_frag = common dso_local global i32 0, align 4
@prev_nop_frag_holds = common dso_local global i32 0, align 4
@prev_nop_frag_required = common dso_local global i64 0, align 8
@prev_nop_frag_since = common dso_local global i64 0, align 8
@NOP_INSN = common dso_local global i32 0, align 4
@mips_any_noreorder = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @start_noreorder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_noreorder() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_opts, i32 0, i32 0), align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %60

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %17, %5
  %7 = load i32, i32* %1, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @history, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %8)
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @history, align 8
  %13 = load i32, i32* %1, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  br label %17

17:                                               ; preds = %11
  %18 = load i32, i32* %1, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %1, align 4
  br label %6

20:                                               ; preds = %6
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @history, align 8
  %22 = call i32 @nops_for_insn(%struct.TYPE_5__* %21, i32* null)
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %20
  %26 = load i64, i64* @mips_optimize, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_opts, i32 0, i32 1), align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %2, align 4
  %33 = mul nsw i32 %32, 2
  br label %37

34:                                               ; preds = %28
  %35 = load i32, i32* %2, align 4
  %36 = mul nsw i32 %35, 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi i32 [ %33, %31 ], [ %36, %34 ]
  %39 = call i32 @frag_grow(i32 %38)
  %40 = load i32, i32* @frag_now, align 4
  store i32 %40, i32* @prev_nop_frag, align 4
  %41 = load i32, i32* %2, align 4
  store i32 %41, i32* @prev_nop_frag_holds, align 4
  store i64 0, i64* @prev_nop_frag_required, align 8
  store i64 0, i64* @prev_nop_frag_since, align 8
  br label %42

42:                                               ; preds = %37, %25
  br label %43

43:                                               ; preds = %49, %42
  %44 = load i32, i32* %2, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, i32* @NOP_INSN, align 4
  %48 = call i32 @add_fixed_insn(i32 %47)
  br label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %2, align 4
  br label %43

52:                                               ; preds = %43
  %53 = load i32, i32* @frag_now, align 4
  %54 = call i32 @frag_wane(i32 %53)
  %55 = call i32 @frag_new(i32 0)
  %56 = call i32 (...) @mips_move_labels()
  br label %57

57:                                               ; preds = %52, %20
  %58 = call i32 (...) @mips16_mark_labels()
  %59 = call i32 (...) @mips_clear_insn_labels()
  br label %60

60:                                               ; preds = %57, %0
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_opts, i32 0, i32 0), align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_opts, i32 0, i32 0), align 8
  store i32 1, i32* @mips_any_noreorder, align 4
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @nops_for_insn(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @frag_grow(i32) #1

declare dso_local i32 @add_fixed_insn(i32) #1

declare dso_local i32 @frag_wane(i32) #1

declare dso_local i32 @frag_new(i32) #1

declare dso_local i32 @mips_move_labels(...) #1

declare dso_local i32 @mips16_mark_labels(...) #1

declare dso_local i32 @mips_clear_insn_labels(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
