; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_movstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_movstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn_data = type { i64 (i64, i64, i64)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@HAVE_movstr = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i64 0, align 8
@insn_data = common dso_local global %struct.insn_data* null, align 8
@CODE_FOR_movstr = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i64, i32)* @expand_movstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @expand_movstr(i32 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.insn_data*, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @HAVE_movstr, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %107

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @get_memory_rtx(i32 %20, i32* null)
  store i64 %21, i64* %11, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @get_memory_rtx(i32 %22, i32* null)
  store i64 %23, i64* %12, align 8
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @Pmode, align 4
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @XEXP(i64 %28, i32 0)
  %30 = call i64 @force_reg(i32 %27, i32 %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @replace_equiv_address(i64 %31, i64 %32)
  store i64 %33, i64* %11, align 8
  %34 = load i32, i32* @Pmode, align 4
  %35 = call i64 @gen_reg_rtx(i32 %34)
  store i64 %35, i64* %10, align 8
  br label %54

36:                                               ; preds = %19
  %37 = load i64, i64* %8, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @const0_rtx, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39, %36
  %44 = load i32, i32* @Pmode, align 4
  %45 = call i64 @gen_reg_rtx(i32 %44)
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i64, i64* %10, align 8
  store i64 %49, i64* %8, align 8
  br label %50

50:                                               ; preds = %48, %43
  br label %53

51:                                               ; preds = %39
  %52 = load i64, i64* %8, align 8
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %51, %50
  br label %54

54:                                               ; preds = %53, %26
  %55 = load %struct.insn_data*, %struct.insn_data** @insn_data, align 8
  %56 = load i32, i32* @CODE_FOR_movstr, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %55, i64 %57
  store %struct.insn_data* %58, %struct.insn_data** %14, align 8
  %59 = load %struct.insn_data*, %struct.insn_data** %14, align 8
  %60 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @VOIDmode, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %54
  %68 = load %struct.insn_data*, %struct.insn_data** %14, align 8
  %69 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %10, align 8
  %75 = call i64 @gen_lowpart(i64 %73, i64 %74)
  store i64 %75, i64* %10, align 8
  br label %76

76:                                               ; preds = %67, %54
  %77 = load %struct.insn_data*, %struct.insn_data** %14, align 8
  %78 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %77, i32 0, i32 0
  %79 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %78, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %12, align 8
  %83 = call i64 %79(i64 %80, i64 %81, i64 %82)
  store i64 %83, i64* %13, align 8
  %84 = load i64, i64* %13, align 8
  %85 = call i32 @gcc_assert(i64 %84)
  %86 = load i64, i64* %13, align 8
  %87 = call i32 @emit_insn(i64 %86)
  %88 = load i32, i32* %9, align 4
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %105

90:                                               ; preds = %76
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* @const0_rtx, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %90
  %95 = load i64, i64* %8, align 8
  %96 = call i64 @GET_MODE(i64 %95)
  %97 = load i64, i64* %10, align 8
  %98 = call i64 @gen_lowpart(i64 %96, i64 %97)
  %99 = call i64 @plus_constant(i64 %98, i32 1)
  store i64 %99, i64* %15, align 8
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* %15, align 8
  %102 = load i32, i32* @NULL_RTX, align 4
  %103 = call i32 @force_operand(i64 %101, i32 %102)
  %104 = call i32 @emit_move_insn(i64 %100, i32 %103)
  br label %105

105:                                              ; preds = %94, %90, %76
  %106 = load i64, i64* %8, align 8
  store i64 %106, i64* %5, align 8
  br label %107

107:                                              ; preds = %105, %18
  %108 = load i64, i64* %5, align 8
  ret i64 %108
}

declare dso_local i64 @get_memory_rtx(i32, i32*) #1

declare dso_local i64 @force_reg(i32, i32) #1

declare dso_local i32 @XEXP(i64, i32) #1

declare dso_local i64 @replace_equiv_address(i64, i64) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i64 @gen_lowpart(i64, i64) #1

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i32 @emit_insn(i64) #1

declare dso_local i64 @plus_constant(i64, i32) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i32 @emit_move_insn(i64, i32) #1

declare dso_local i32 @force_operand(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
