; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_noce_try_cmove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_noce_try_cmove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.noce_if_info = type { i64, i32, i32, i32, i32, i32 }

@VOIDmode = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.noce_if_info*)* @noce_try_cmove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @noce_try_cmove(%struct.noce_if_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.noce_if_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.noce_if_info* %0, %struct.noce_if_info** %3, align 8
  %7 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %8 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @CONSTANT_P(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %14 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @VOIDmode, align 4
  %17 = call i64 @register_operand(i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %93

19:                                               ; preds = %12, %1
  %20 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %21 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @CONSTANT_P(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %27 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @VOIDmode, align 4
  %30 = call i64 @register_operand(i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %93

32:                                               ; preds = %25, %19
  %33 = call i32 (...) @start_sequence()
  %34 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %35 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @GET_CODE(i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %39 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %40 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %44 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @XEXP(i32 %45, i32 0)
  %47 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %48 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @XEXP(i32 %49, i32 1)
  %51 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %52 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %55 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @noce_emit_cmove(%struct.noce_if_info* %38, i64 %41, i32 %42, i32 %46, i32 %50, i32 %53, i32 %56)
  store i64 %57, i64* %5, align 8
  %58 = load i64, i64* %5, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %90

60:                                               ; preds = %32
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %63 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %61, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %68 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @noce_emit_move_insn(i64 %69, i64 %70)
  br label %72

72:                                               ; preds = %66, %60
  %73 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %74 = call i64 @end_ifcvt_sequence(%struct.noce_if_info* %73)
  store i64 %74, i64* %6, align 8
  %75 = load i64, i64* %6, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* @FALSE, align 4
  store i32 %78, i32* %2, align 4
  br label %95

79:                                               ; preds = %72
  %80 = load i64, i64* %6, align 8
  %81 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %82 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %85 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @INSN_LOCATOR(i32 %86)
  %88 = call i32 @emit_insn_before_setloc(i64 %80, i32 %83, i32 %87)
  %89 = load i32, i32* @TRUE, align 4
  store i32 %89, i32* %2, align 4
  br label %95

90:                                               ; preds = %32
  %91 = call i32 (...) @end_sequence()
  %92 = load i32, i32* @FALSE, align 4
  store i32 %92, i32* %2, align 4
  br label %95

93:                                               ; preds = %25, %12
  %94 = load i32, i32* @FALSE, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %93, %90, %79, %77
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i64 @CONSTANT_P(i32) #1

declare dso_local i64 @register_operand(i32, i32) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i64 @noce_emit_cmove(%struct.noce_if_info*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @noce_emit_move_insn(i64, i64) #1

declare dso_local i64 @end_ifcvt_sequence(%struct.noce_if_info*) #1

declare dso_local i32 @emit_insn_before_setloc(i64, i32, i32) #1

declare dso_local i32 @INSN_LOCATOR(i32) #1

declare dso_local i32 @end_sequence(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
