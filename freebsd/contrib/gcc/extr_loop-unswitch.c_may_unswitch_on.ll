; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unswitch.c_may_unswitch_on.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unswitch.c_may_unswitch_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.loop = type { i32 }
%struct.rtx_iv = type { i64, i64 }
%struct.TYPE_8__ = type { i32 }

@NULL_RTX = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@MODE_CC = common dso_local global i64 0, align 8
@SImode = common dso_local global i32 0, align 4
@const_true_rtx = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, %struct.loop*, i64*)* @may_unswitch_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @may_unswitch_on(%struct.TYPE_7__* %0, %struct.loop* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.loop*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [2 x i64], align 16
  %11 = alloca i64, align 8
  %12 = alloca %struct.rtx_iv, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.loop* %1, %struct.loop** %6, align 8
  store i64* %2, i64** %7, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @EDGE_COUNT(i32 %17)
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i64, i64* @NULL_RTX, align 8
  store i64 %21, i64* %4, align 8
  br label %183

22:                                               ; preds = %3
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = call i64 @BB_END(%struct.TYPE_7__* %23)
  %25 = call i32 @any_condjump_p(i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i64, i64* @NULL_RTX, align 8
  store i64 %28, i64* %4, align 8
  br label %183

29:                                               ; preds = %22
  %30 = load %struct.loop*, %struct.loop** %6, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = call %struct.TYPE_8__* @EDGE_SUCC(%struct.TYPE_7__* %31, i32 0)
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @flow_bb_inside_loop_p(%struct.loop* %30, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load %struct.loop*, %struct.loop** %6, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = call %struct.TYPE_8__* @EDGE_SUCC(%struct.TYPE_7__* %39, i32 1)
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @flow_bb_inside_loop_p(%struct.loop* %38, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %37, %29
  %46 = load i64, i64* @NULL_RTX, align 8
  store i64 %46, i64* %4, align 8
  br label %183

47:                                               ; preds = %37
  %48 = load %struct.loop*, %struct.loop** %6, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = call i32 @just_once_each_iteration_p(%struct.loop* %48, %struct.TYPE_7__* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = load i64, i64* @NULL_RTX, align 8
  store i64 %53, i64* %4, align 8
  br label %183

54:                                               ; preds = %47
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = call i64 @BB_END(%struct.TYPE_7__* %55)
  %57 = call i64 @get_condition(i64 %56, i64* %9, i32 1, i32 0)
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %54
  %61 = load i64, i64* @NULL_RTX, align 8
  store i64 %61, i64* %4, align 8
  br label %183

62:                                               ; preds = %54
  store i32 0, i32* %13, align 4
  br label %63

63:                                               ; preds = %107, %62
  %64 = load i32, i32* %13, align 4
  %65 = icmp ult i32 %64, 2
  br i1 %65, label %66, label %110

66:                                               ; preds = %63
  %67 = load i64, i64* %8, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i64 @XEXP(i64 %67, i32 %68)
  %70 = load i32, i32* %13, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 %71
  store i64 %69, i64* %72, align 8
  %73 = load i32, i32* %13, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @CONSTANT_P(i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  br label %107

80:                                               ; preds = %66
  %81 = load i64, i64* %9, align 8
  %82 = load i32, i32* %13, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @iv_analyze(i64 %81, i64 %85, %struct.rtx_iv* %12)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %80
  %89 = load i64, i64* @NULL_RTX, align 8
  store i64 %89, i64* %4, align 8
  br label %183

90:                                               ; preds = %80
  %91 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %12, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @const0_rtx, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %99, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %12, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95, %90
  %100 = load i64, i64* @NULL_RTX, align 8
  store i64 %100, i64* %4, align 8
  br label %183

101:                                              ; preds = %95
  %102 = load i64, i64* @const0_rtx, align 8
  %103 = call i64 @get_iv_value(%struct.rtx_iv* %12, i64 %102)
  %104 = load i32, i32* %13, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 %105
  store i64 %103, i64* %106, align 8
  br label %107

107:                                              ; preds = %101, %79
  %108 = load i32, i32* %13, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %13, align 4
  br label %63

110:                                              ; preds = %63
  %111 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %112 = load i64, i64* %111, align 16
  %113 = call i32 @GET_MODE(i64 %112)
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* @VOIDmode, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @GET_MODE(i64 %119)
  store i32 %120, i32* %14, align 4
  br label %121

121:                                              ; preds = %117, %110
  %122 = load i32, i32* %14, align 4
  %123 = call i64 @GET_MODE_CLASS(i32 %122)
  %124 = load i64, i64* @MODE_CC, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %154

126:                                              ; preds = %121
  %127 = load i64, i64* %9, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %129 = call i64 @BB_END(%struct.TYPE_7__* %128)
  %130 = icmp ne i64 %127, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = load i64, i64* @NULL_RTX, align 8
  store i64 %132, i64* %4, align 8
  br label %183

133:                                              ; preds = %126
  %134 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %135 = load i64, i64* %134, align 16
  %136 = load i64, i64* %8, align 8
  %137 = call i64 @XEXP(i64 %136, i32 0)
  %138 = call i32 @rtx_equal_p(i64 %135, i64 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %133
  %141 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %8, align 8
  %144 = call i64 @XEXP(i64 %143, i32 1)
  %145 = call i32 @rtx_equal_p(i64 %142, i64 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %140, %133
  %148 = load i64, i64* @NULL_RTX, align 8
  store i64 %148, i64* %4, align 8
  br label %183

149:                                              ; preds = %140
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %151 = call i64 @BB_END(%struct.TYPE_7__* %150)
  %152 = load i64*, i64** %7, align 8
  store i64 %151, i64* %152, align 8
  %153 = load i64, i64* %8, align 8
  store i64 %153, i64* %4, align 8
  br label %183

154:                                              ; preds = %121
  %155 = load i64, i64* %8, align 8
  %156 = call i32 @GET_CODE(i64 %155)
  %157 = load i32, i32* @SImode, align 4
  %158 = load i32, i32* %14, align 4
  %159 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %160 = load i64, i64* %159, align 16
  %161 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1
  %162 = load i64, i64* %161, align 8
  %163 = call i64 @simplify_gen_relational(i32 %156, i32 %157, i32 %158, i64 %160, i64 %162)
  store i64 %163, i64* %11, align 8
  %164 = load i64, i64* %11, align 8
  %165 = load i64, i64* @const0_rtx, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %171, label %167

167:                                              ; preds = %154
  %168 = load i64, i64* %11, align 8
  %169 = load i64, i64* @const_true_rtx, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %167, %154
  %172 = load i64, i64* %11, align 8
  store i64 %172, i64* %4, align 8
  br label %183

173:                                              ; preds = %167
  %174 = load i64, i64* %8, align 8
  %175 = call i32 @GET_CODE(i64 %174)
  %176 = load i32, i32* @SImode, align 4
  %177 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %178 = load i64, i64* %177, align 16
  %179 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @gen_rtx_fmt_ee(i32 %175, i32 %176, i64 %178, i64 %180)
  %182 = call i64 @canon_condition(i32 %181)
  store i64 %182, i64* %4, align 8
  br label %183

183:                                              ; preds = %173, %171, %149, %147, %131, %99, %88, %60, %52, %45, %27, %20
  %184 = load i64, i64* %4, align 8
  ret i64 %184
}

declare dso_local i32 @EDGE_COUNT(i32) #1

declare dso_local i32 @any_condjump_p(i64) #1

declare dso_local i64 @BB_END(%struct.TYPE_7__*) #1

declare dso_local i32 @flow_bb_inside_loop_p(%struct.loop*, i32) #1

declare dso_local %struct.TYPE_8__* @EDGE_SUCC(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @just_once_each_iteration_p(%struct.loop*, %struct.TYPE_7__*) #1

declare dso_local i64 @get_condition(i64, i64*, i32, i32) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @CONSTANT_P(i64) #1

declare dso_local i32 @iv_analyze(i64, i64, %struct.rtx_iv*) #1

declare dso_local i64 @get_iv_value(%struct.rtx_iv*, i64) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @rtx_equal_p(i64, i64) #1

declare dso_local i64 @simplify_gen_relational(i32, i32, i32, i64, i64) #1

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @canon_condition(i32) #1

declare dso_local i32 @gen_rtx_fmt_ee(i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
