; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_noce_emit_cmove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_noce_emit_cmove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.noce_if_info = type { i64, i64, i32 }

@VOIDmode = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@GEU = common dso_local global i32 0, align 4
@GTU = common dso_local global i32 0, align 4
@LEU = common dso_local global i32 0, align 4
@LTU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.noce_if_info*, i32, i32, i32, i32, i32, i32)* @noce_emit_cmove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @noce_emit_cmove(%struct.noce_if_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.noce_if_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.noce_if_info* %0, %struct.noce_if_info** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load %struct.noce_if_info*, %struct.noce_if_info** %9, align 8
  %18 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.noce_if_info*, %struct.noce_if_info** %9, align 8
  %21 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %57

24:                                               ; preds = %7
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.noce_if_info*, %struct.noce_if_info** %9, align 8
  %27 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @GET_MODE(i32 %28)
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @gen_rtx_fmt_ee(i32 %25, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @GET_MODE(i32 %33)
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @gen_rtx_IF_THEN_ELSE(i32 %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* @VOIDmode, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %16, align 4
  %42 = call i32 @gen_rtx_SET(i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %16, align 4
  %43 = call i32 (...) @start_sequence()
  %44 = load i32, i32* %16, align 4
  %45 = call i32 @emit_insn(i32 %44)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = call i64 @recog_memoized(i32 %46)
  %48 = icmp sge i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %24
  %50 = call i32 (...) @get_insns()
  store i32 %50, i32* %16, align 4
  %51 = call i32 (...) @end_sequence()
  %52 = load i32, i32* %16, align 4
  %53 = call i32 @emit_insn(i32 %52)
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %8, align 4
  br label %73

55:                                               ; preds = %24
  %56 = call i32 (...) @end_sequence()
  br label %57

57:                                               ; preds = %55, %7
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @GET_MODE(i32 %59)
  %61 = call i32 @general_operand(i32 %58, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @GET_MODE(i32 %65)
  %67 = call i32 @general_operand(i32 %64, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %63, %57
  %70 = load i32, i32* @NULL_RTX, align 4
  store i32 %70, i32* %8, align 4
  br label %73

71:                                               ; preds = %63
  %72 = load i32, i32* @NULL_RTX, align 4
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %71, %69, %49
  %74 = load i32, i32* %8, align 4
  ret i32 %74
}

declare dso_local i32 @gen_rtx_fmt_ee(i32, i32, i32, i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @gen_rtx_IF_THEN_ELSE(i32, i32, i32, i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i64 @recog_memoized(i32) #1

declare dso_local i32 @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i32 @general_operand(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
