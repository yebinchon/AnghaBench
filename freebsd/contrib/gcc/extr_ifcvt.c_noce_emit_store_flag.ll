; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_noce_emit_store_flag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_noce_emit_store_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.noce_if_info = type { i32, i32, i32 }

@VOIDmode = common dso_local global i32 0, align 4
@STORE_FLAG_VALUE = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@LTU = common dso_local global i32 0, align 4
@LEU = common dso_local global i32 0, align 4
@GEU = common dso_local global i32 0, align 4
@GTU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.noce_if_info*, i32, i32, i32)* @noce_emit_store_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @noce_emit_store_flag(%struct.noce_if_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.noce_if_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.noce_if_info* %0, %struct.noce_if_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.noce_if_info*, %struct.noce_if_info** %6, align 8
  %15 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @XEXP(i32 %17, i32 0)
  %19 = load i32, i32* @VOIDmode, align 4
  %20 = call i32 @general_operand(i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @XEXP(i32 %23, i32 1)
  %25 = load i32, i32* @VOIDmode, align 4
  %26 = call i32 @general_operand(i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %22, %4
  %30 = phi i1 [ true, %4 ], [ %28, %22 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.noce_if_info*, %struct.noce_if_info** %6, align 8
  %36 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pc_set(i32 %37)
  %39 = call i32 @SET_SRC(i32 %38)
  %40 = call i32 @XEXP(i32 %39, i32 0)
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %34, %29
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.noce_if_info*, %struct.noce_if_info** %6, align 8
  %47 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @reversed_comparison_code(i32 %45, i32 %48)
  store i32 %49, i32* %12, align 4
  br label %53

50:                                               ; preds = %41
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @GET_CODE(i32 %51)
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %50, %44
  %54 = load %struct.noce_if_info*, %struct.noce_if_info** %6, align 8
  %55 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.noce_if_info*, %struct.noce_if_info** %6, align 8
  %58 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %64, label %61

61:                                               ; preds = %53
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %103

64:                                               ; preds = %61, %53
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @STORE_FLAG_VALUE, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %103

71:                                               ; preds = %67, %64
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @GET_MODE(i32 %73)
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @XEXP(i32 %75, i32 0)
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @XEXP(i32 %77, i32 1)
  %79 = call i32 @gen_rtx_fmt_ee(i32 %72, i32 %74, i32 %76, i32 %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* @VOIDmode, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @gen_rtx_SET(i32 %80, i32 %81, i32 %82)
  store i32 %83, i32* %13, align 4
  %84 = call i32 (...) @start_sequence()
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @emit_insn(i32 %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = call i64 @recog_memoized(i32 %87)
  %89 = icmp sge i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %71
  %91 = call i32 (...) @get_insns()
  store i32 %91, i32* %13, align 4
  %92 = call i32 (...) @end_sequence()
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @emit_insn(i32 %93)
  %95 = load %struct.noce_if_info*, %struct.noce_if_info** %6, align 8
  %96 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.noce_if_info*, %struct.noce_if_info** %6, align 8
  %99 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %5, align 4
  br label %141

101:                                              ; preds = %71
  %102 = call i32 (...) @end_sequence()
  br label %103

103:                                              ; preds = %101, %67, %61
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @GET_MODE(i32 %107)
  %109 = call i32 @SCALAR_INT_MODE_P(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %106, %103
  %112 = load i32, i32* @NULL_RTX, align 4
  store i32 %112, i32* %5, align 4
  br label %141

113:                                              ; preds = %106
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @XEXP(i32 %116, i32 0)
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @XEXP(i32 %118, i32 1)
  %120 = load i32, i32* @VOIDmode, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* @LTU, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %136, label %124

124:                                              ; preds = %113
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* @LEU, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %136, label %128

128:                                              ; preds = %124
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* @GEU, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %136, label %132

132:                                              ; preds = %128
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* @GTU, align 4
  %135 = icmp eq i32 %133, %134
  br label %136

136:                                              ; preds = %132, %128, %124, %113
  %137 = phi i1 [ true, %128 ], [ true, %124 ], [ true, %113 ], [ %135, %132 ]
  %138 = zext i1 %137 to i32
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @emit_store_flag(i32 %114, i32 %115, i32 %117, i32 %119, i32 %120, i32 %138, i32 %139)
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %136, %111, %90
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i32 @general_operand(i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i32 @pc_set(i32) #1

declare dso_local i32 @reversed_comparison_code(i32, i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @gen_rtx_fmt_ee(i32, i32, i32, i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i64 @recog_memoized(i32) #1

declare dso_local i32 @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i32 @SCALAR_INT_MODE_P(i32) #1

declare dso_local i32 @emit_store_flag(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
