; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_thumb_expand_epilogue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_thumb_expand_epilogue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@frame_pointer_needed = common dso_local global i64 0, align 8
@stack_pointer_rtx = common dso_local global i32 0, align 4
@hard_frame_pointer_rtx = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@LAST_ARG_REGNUM = common dso_local global i64 0, align 8
@current_function_profile = common dso_local global i64 0, align 8
@TARGET_SCHED_PROLOG = common dso_local global i32 0, align 4
@regs_ever_live = common dso_local global i64* null, align 8
@call_used_regs = common dso_local global i32* null, align 8
@VOIDmode = common dso_local global i32 0, align 4
@LR_REGNUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thumb_expand_epilogue() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @arm_current_func_type()
  %6 = call i64 @IS_NAKED(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %119

9:                                                ; preds = %0
  %10 = call %struct.TYPE_3__* (...) @arm_get_frame_offsets()
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %2, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %13, %16
  store i32 %17, i32* %1, align 4
  %18 = load i64, i64* @frame_pointer_needed, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %9
  %21 = load i32, i32* @stack_pointer_rtx, align 4
  %22 = load i32, i32* @hard_frame_pointer_rtx, align 4
  %23 = call i32 @gen_movsi(i32 %21, i32 %22)
  %24 = call i32 @emit_insn(i32 %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %27, %30
  store i32 %31, i32* %1, align 4
  br label %32

32:                                               ; preds = %20, %9
  %33 = load i32, i32* %1, align 4
  %34 = icmp sge i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @gcc_assert(i32 %35)
  %37 = load i32, i32* %1, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %32
  %40 = load i32, i32* %1, align 4
  %41 = icmp slt i32 %40, 512
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i32, i32* @stack_pointer_rtx, align 4
  %44 = load i32, i32* @stack_pointer_rtx, align 4
  %45 = load i32, i32* %1, align 4
  %46 = call i32 @GEN_INT(i32 %45)
  %47 = call i32 @gen_addsi3(i32 %43, i32 %44, i32 %46)
  %48 = call i32 @emit_insn(i32 %47)
  br label %63

49:                                               ; preds = %39
  %50 = load i32, i32* @SImode, align 4
  %51 = load i64, i64* @LAST_ARG_REGNUM, align 8
  %52 = call i32 @gen_rtx_REG(i32 %50, i64 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %1, align 4
  %55 = call i32 @GEN_INT(i32 %54)
  %56 = call i32 @gen_movsi(i32 %53, i32 %55)
  %57 = call i32 @emit_insn(i32 %56)
  %58 = load i32, i32* @stack_pointer_rtx, align 4
  %59 = load i32, i32* @stack_pointer_rtx, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @gen_addsi3(i32 %58, i32 %59, i32 %60)
  %62 = call i32 @emit_insn(i32 %61)
  br label %63

63:                                               ; preds = %49, %42
  br label %64

64:                                               ; preds = %63, %32
  %65 = load i32, i32* @stack_pointer_rtx, align 4
  %66 = call i32 @gen_prologue_use(i32 %65)
  %67 = call i32 @emit_insn(i32 %66)
  %68 = load i64, i64* @current_function_profile, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %64
  %71 = load i32, i32* @TARGET_SCHED_PROLOG, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70, %64
  %74 = call i32 (...) @gen_blockage()
  %75 = call i32 @emit_insn(i32 %74)
  br label %76

76:                                               ; preds = %73, %70
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %103, %76
  %78 = load i32, i32* %3, align 4
  %79 = icmp slt i32 %78, 13
  br i1 %79, label %80, label %106

80:                                               ; preds = %77
  %81 = load i64*, i64** @regs_ever_live, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %80
  %88 = load i32*, i32** @call_used_regs, align 8
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %87
  %95 = load i32, i32* @VOIDmode, align 4
  %96 = load i32, i32* @SImode, align 4
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = call i32 @gen_rtx_REG(i32 %96, i64 %98)
  %100 = call i32 @gen_rtx_CLOBBER(i32 %95, i32 %99)
  %101 = call i32 @emit_insn(i32 %100)
  br label %102

102:                                              ; preds = %94, %87, %80
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %3, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %3, align 4
  br label %77

106:                                              ; preds = %77
  %107 = load i64*, i64** @regs_ever_live, align 8
  %108 = load i64, i64* @LR_REGNUM, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %106
  %113 = load i32, i32* @VOIDmode, align 4
  %114 = load i32, i32* @SImode, align 4
  %115 = load i64, i64* @LR_REGNUM, align 8
  %116 = call i32 @gen_rtx_REG(i32 %114, i64 %115)
  %117 = call i32 @gen_rtx_USE(i32 %113, i32 %116)
  %118 = call i32 @emit_insn(i32 %117)
  br label %119

119:                                              ; preds = %8, %112, %106
  ret void
}

declare dso_local i64 @IS_NAKED(i32) #1

declare dso_local i32 @arm_current_func_type(...) #1

declare dso_local %struct.TYPE_3__* @arm_get_frame_offsets(...) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_movsi(i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @gen_addsi3(i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i64) #1

declare dso_local i32 @gen_prologue_use(i32) #1

declare dso_local i32 @gen_blockage(...) #1

declare dso_local i32 @gen_rtx_CLOBBER(i32, i32) #1

declare dso_local i32 @gen_rtx_USE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
