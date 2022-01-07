; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_split_return_addr_rtx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_split_return_addr_rtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i64, i64 }

@current_frame_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DImode = common dso_local global i32 0, align 4
@frame_pointer_needed = common dso_local global i64 0, align 8
@hard_frame_pointer_rtx = common dso_local global i32 0, align 4
@stack_pointer_rtx = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia64_split_return_addr_rtx(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 2), align 8
  %7 = call i32 @BR_REG(i32 0)
  %8 = call i64 @TEST_HARD_REG_BIT(i32 %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %75

10:                                               ; preds = %1
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 0), align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i32, i32* @DImode, align 4
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 0), align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @gen_rtx_REG(i32 %14, i32 %16)
  store i32 %17, i32* %3, align 4
  br label %74

18:                                               ; preds = %10
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 4), align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 3), align 8
  %21 = add nsw i64 %19, %20
  store i64 %21, i64* %4, align 8
  %22 = call i32 @GR_REG(i32 1)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %36, %18
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @GR_REG(i32 31)
  %26 = icmp ule i32 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 2), align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @TEST_HARD_REG_BIT(i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i64, i64* %4, align 8
  %34 = sub nsw i64 %33, 8
  store i64 %34, i64* %4, align 8
  br label %35

35:                                               ; preds = %32, %27
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %23

39:                                               ; preds = %23
  %40 = load i64, i64* @frame_pointer_needed, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @hard_frame_pointer_rtx, align 4
  store i32 %43, i32* %3, align 4
  br label %49

44:                                               ; preds = %39
  %45 = load i32, i32* @stack_pointer_rtx, align 4
  store i32 %45, i32* %3, align 4
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 1), align 8
  %47 = load i64, i64* %4, align 8
  %48 = add nsw i64 %47, %46
  store i64 %48, i64* %4, align 8
  br label %49

49:                                               ; preds = %44, %42
  %50 = load i64, i64* %4, align 8
  %51 = call i64 @CONST_OK_FOR_I(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @GEN_INT(i64 %56)
  %58 = call i32 @gen_adddi3(i32 %54, i32 %55, i32 %57)
  %59 = call i32 @emit_insn(i32 %58)
  br label %70

60:                                               ; preds = %49
  %61 = load i32, i32* %2, align 4
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @GEN_INT(i64 %62)
  %64 = call i32 @emit_move_insn(i32 %61, i32 %63)
  %65 = load i32, i32* %2, align 4
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %2, align 4
  %68 = call i32 @gen_adddi3(i32 %65, i32 %66, i32 %67)
  %69 = call i32 @emit_insn(i32 %68)
  br label %70

70:                                               ; preds = %60, %53
  %71 = load i32, i32* @Pmode, align 4
  %72 = load i32, i32* %2, align 4
  %73 = call i32 @gen_rtx_MEM(i32 %71, i32 %72)
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %70, %13
  br label %79

75:                                               ; preds = %1
  %76 = load i32, i32* @DImode, align 4
  %77 = call i32 @BR_REG(i32 0)
  %78 = call i32 @gen_rtx_REG(i32 %76, i32 %77)
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %75, %74
  %80 = load i32, i32* %2, align 4
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @emit_move_insn(i32 %80, i32 %81)
  ret void
}

declare dso_local i64 @TEST_HARD_REG_BIT(i32, i32) #1

declare dso_local i32 @BR_REG(i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @GR_REG(i32) #1

declare dso_local i64 @CONST_OK_FOR_I(i64) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_adddi3(i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i64) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @gen_rtx_MEM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
