; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_validate_condition_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_validate_condition_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTX_COMPARE = common dso_local global i64 0, align 8
@RTX_COMM_COMPARE = common dso_local global i64 0, align 8
@MODE_CC = common dso_local global i64 0, align 8
@GT = common dso_local global i32 0, align 4
@LT = common dso_local global i32 0, align 4
@GE = common dso_local global i32 0, align 4
@LE = common dso_local global i32 0, align 4
@CCUNSmode = common dso_local global i32 0, align 4
@GTU = common dso_local global i32 0, align 4
@LTU = common dso_local global i32 0, align 4
@GEU = common dso_local global i32 0, align 4
@LEU = common dso_local global i32 0, align 4
@CCFPmode = common dso_local global i32 0, align 4
@ORDERED = common dso_local global i32 0, align 4
@UNORDERED = common dso_local global i32 0, align 4
@UNEQ = common dso_local global i32 0, align 4
@LTGT = common dso_local global i32 0, align 4
@UNGT = common dso_local global i32 0, align 4
@UNLT = common dso_local global i32 0, align 4
@UNGE = common dso_local global i32 0, align 4
@UNLE = common dso_local global i32 0, align 4
@flag_finite_math_only = common dso_local global i64 0, align 8
@CCEQmode = common dso_local global i32 0, align 4
@EQ = common dso_local global i32 0, align 4
@NE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @validate_condition_mode(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @GET_RTX_CLASS(i32 %5)
  %7 = load i64, i64* @RTX_COMPARE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @GET_RTX_CLASS(i32 %10)
  %12 = load i64, i64* @RTX_COMM_COMPARE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %9, %2
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @GET_MODE_CLASS(i32 %15)
  %17 = load i64, i64* @MODE_CC, align 8
  %18 = icmp eq i64 %16, %17
  br label %19

19:                                               ; preds = %14, %9
  %20 = phi i1 [ false, %9 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @gcc_assert(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @GT, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @LT, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @GE, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @LE, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34, %30, %26, %19
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @CCUNSmode, align 4
  %41 = icmp ne i32 %39, %40
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i1 [ true, %34 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @gcc_assert(i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @GTU, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %42
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @LTU, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @GEU, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @LEU, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57, %53, %49, %42
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @CCUNSmode, align 4
  %64 = icmp eq i32 %62, %63
  br label %65

65:                                               ; preds = %61, %57
  %66 = phi i1 [ true, %57 ], [ %64, %61 ]
  %67 = zext i1 %66 to i32
  %68 = call i32 @gcc_assert(i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @CCFPmode, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %106, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @ORDERED, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %104

76:                                               ; preds = %72
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @UNORDERED, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %104

80:                                               ; preds = %76
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @UNEQ, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %104

84:                                               ; preds = %80
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @LTGT, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %84
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @UNGT, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %88
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @UNLT, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @UNGE, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* @UNLE, align 4
  %103 = icmp ne i32 %101, %102
  br label %104

104:                                              ; preds = %100, %96, %92, %88, %84, %80, %76, %72
  %105 = phi i1 [ false, %96 ], [ false, %92 ], [ false, %88 ], [ false, %84 ], [ false, %80 ], [ false, %76 ], [ false, %72 ], [ %103, %100 ]
  br label %106

106:                                              ; preds = %104, %65
  %107 = phi i1 [ true, %65 ], [ %105, %104 ]
  %108 = zext i1 %107 to i32
  %109 = call i32 @gcc_assert(i32 %108)
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @CCFPmode, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %142, label %113

113:                                              ; preds = %106
  %114 = load i64, i64* @flag_finite_math_only, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %142, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* @LE, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %140

120:                                              ; preds = %116
  %121 = load i32, i32* %3, align 4
  %122 = load i32, i32* @GE, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %140

124:                                              ; preds = %120
  %125 = load i32, i32* %3, align 4
  %126 = load i32, i32* @UNEQ, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %140

128:                                              ; preds = %124
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* @LTGT, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %128
  %133 = load i32, i32* %3, align 4
  %134 = load i32, i32* @UNGT, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load i32, i32* %3, align 4
  %138 = load i32, i32* @UNLT, align 4
  %139 = icmp ne i32 %137, %138
  br label %140

140:                                              ; preds = %136, %132, %128, %124, %120, %116
  %141 = phi i1 [ false, %132 ], [ false, %128 ], [ false, %124 ], [ false, %120 ], [ false, %116 ], [ %139, %136 ]
  br label %142

142:                                              ; preds = %140, %113, %106
  %143 = phi i1 [ true, %113 ], [ true, %106 ], [ %141, %140 ]
  %144 = zext i1 %143 to i32
  %145 = call i32 @gcc_assert(i32 %144)
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* @CCEQmode, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %157, label %149

149:                                              ; preds = %142
  %150 = load i32, i32* %3, align 4
  %151 = load i32, i32* @EQ, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %157, label %153

153:                                              ; preds = %149
  %154 = load i32, i32* %3, align 4
  %155 = load i32, i32* @NE, align 4
  %156 = icmp eq i32 %154, %155
  br label %157

157:                                              ; preds = %153, %149, %142
  %158 = phi i1 [ true, %149 ], [ true, %142 ], [ %156, %153 ]
  %159 = zext i1 %158 to i32
  %160 = call i32 @gcc_assert(i32 %159)
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @GET_RTX_CLASS(i32) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
