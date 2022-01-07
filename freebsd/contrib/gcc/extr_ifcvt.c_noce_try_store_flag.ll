; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_noce_try_store_flag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_noce_try_store_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.noce_if_info = type { i64, i64, i64, i32, i32, i32 }

@CONST_INT = common dso_local global i64 0, align 8
@STORE_FLAG_VALUE = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i64 0, align 8
@UNKNOWN = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.noce_if_info*)* @noce_try_store_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @noce_try_store_flag(%struct.noce_if_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.noce_if_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.noce_if_info* %0, %struct.noce_if_info** %3, align 8
  %7 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %8 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i64 @GET_CODE(i64 %9)
  %11 = load i64, i64* @CONST_INT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %15 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @INTVAL(i64 %16)
  %18 = load i64, i64* @STORE_FLAG_VALUE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %22 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @const0_rtx, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %61

27:                                               ; preds = %20, %13, %1
  %28 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %29 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @const0_rtx, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %27
  %34 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %35 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @GET_CODE(i64 %36)
  %38 = load i64, i64* @CONST_INT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %33
  %41 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %42 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @INTVAL(i64 %43)
  %45 = load i64, i64* @STORE_FLAG_VALUE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %49 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %52 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @reversed_comparison_code(i32 %50, i32 %53)
  %55 = load i64, i64* @UNKNOWN, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  store i32 1, i32* %4, align 4
  br label %60

58:                                               ; preds = %47, %40, %33, %27
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %2, align 4
  br label %104

60:                                               ; preds = %57
  br label %61

61:                                               ; preds = %60, %26
  %62 = call i32 (...) @start_sequence()
  %63 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %64 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %65 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i64 @noce_emit_store_flag(%struct.noce_if_info* %63, i64 %66, i32 %67, i32 0)
  store i64 %68, i64* %5, align 8
  %69 = load i64, i64* %5, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %101

71:                                               ; preds = %61
  %72 = load i64, i64* %5, align 8
  %73 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %74 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %79 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %5, align 8
  %82 = call i32 @noce_emit_move_insn(i64 %80, i64 %81)
  br label %83

83:                                               ; preds = %77, %71
  %84 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %85 = call i64 @end_ifcvt_sequence(%struct.noce_if_info* %84)
  store i64 %85, i64* %6, align 8
  %86 = load i64, i64* %6, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %2, align 4
  br label %104

90:                                               ; preds = %83
  %91 = load i64, i64* %6, align 8
  %92 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %93 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %96 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @INSN_LOCATOR(i32 %97)
  %99 = call i32 @emit_insn_before_setloc(i64 %91, i32 %94, i32 %98)
  %100 = load i32, i32* @TRUE, align 4
  store i32 %100, i32* %2, align 4
  br label %104

101:                                              ; preds = %61
  %102 = call i32 (...) @end_sequence()
  %103 = load i32, i32* @FALSE, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %101, %90, %88, %58
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @INTVAL(i64) #1

declare dso_local i64 @reversed_comparison_code(i32, i32) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i64 @noce_emit_store_flag(%struct.noce_if_info*, i64, i32, i32) #1

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
