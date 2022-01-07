; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_adjacent_mem_locations.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_adjacent_mem_locations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@arm_ld_sched = common dso_local global i64 0, align 8
@optimize_size = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adjacent_mem_locations(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @volatile_refs_p(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @volatile_refs_p(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %163

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @XEXP(i32 %20, i32 0)
  %22 = call i64 @GET_CODE(i32 %21)
  %23 = load i64, i64* @REG, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %38, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @XEXP(i32 %26, i32 0)
  %28 = call i64 @GET_CODE(i32 %27)
  %29 = load i64, i64* @PLUS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %162

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @XEXP(i32 %32, i32 0)
  %34 = call i32 @XEXP(i32 %33, i32 1)
  %35 = call i64 @GET_CODE(i32 %34)
  %36 = load i64, i64* @CONST_INT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %162

38:                                               ; preds = %31, %19
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @XEXP(i32 %39, i32 0)
  %41 = call i64 @GET_CODE(i32 %40)
  %42 = load i64, i64* @REG, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %57, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @XEXP(i32 %45, i32 0)
  %47 = call i64 @GET_CODE(i32 %46)
  %48 = load i64, i64* @PLUS, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %162

50:                                               ; preds = %44
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @XEXP(i32 %51, i32 0)
  %53 = call i32 @XEXP(i32 %52, i32 1)
  %54 = call i64 @GET_CODE(i32 %53)
  %55 = load i64, i64* @CONST_INT, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %162

57:                                               ; preds = %50, %38
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @XEXP(i32 %58, i32 0)
  %60 = call i64 @GET_CODE(i32 %59)
  %61 = load i64, i64* @PLUS, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @XEXP(i32 %64, i32 0)
  %66 = call i32 @XEXP(i32 %65, i32 0)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @XEXP(i32 %67, i32 0)
  %69 = call i32 @XEXP(i32 %68, i32 1)
  %70 = call i32 @INTVAL(i32 %69)
  store i32 %70, i32* %6, align 4
  br label %74

71:                                               ; preds = %57
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @XEXP(i32 %72, i32 0)
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %71, %63
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @XEXP(i32 %75, i32 0)
  %77 = call i64 @GET_CODE(i32 %76)
  %78 = load i64, i64* @PLUS, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %74
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @XEXP(i32 %81, i32 0)
  %83 = call i32 @XEXP(i32 %82, i32 0)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @XEXP(i32 %84, i32 0)
  %86 = call i32 @XEXP(i32 %85, i32 1)
  %87 = call i32 @INTVAL(i32 %86)
  store i32 %87, i32* %7, align 4
  br label %91

88:                                               ; preds = %74
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @XEXP(i32 %89, i32 0)
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %88, %80
  %92 = load i64, i64* @PLUS, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @const_ok_for_op(i64 %92, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load i64, i64* @PLUS, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @const_ok_for_op(i64 %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %96, %91
  store i32 0, i32* %3, align 4
  br label %163

102:                                              ; preds = %96
  %103 = load i32, i32* %8, align 4
  %104 = call i64 @arm_eliminable_register(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  br label %163

107:                                              ; preds = %102
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %6, align 4
  %110 = sub nsw i32 %108, %109
  store i32 %110, i32* %10, align 4
  %111 = load i64, i64* @arm_ld_sched, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %145

113:                                              ; preds = %107
  %114 = load i64, i64* @optimize_size, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %142

116:                                              ; preds = %113
  %117 = load i32, i32* %8, align 4
  %118 = call i64 @REGNO(i32 %117)
  %119 = load i32, i32* %9, align 4
  %120 = call i64 @REGNO(i32 %119)
  %121 = icmp eq i64 %118, %120
  br i1 %121, label %122, label %142

122:                                              ; preds = %116
  %123 = load i32, i32* %6, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %7, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %6, align 4
  %130 = icmp eq i32 %129, 4
  br i1 %130, label %134, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %7, align 4
  %133 = icmp eq i32 %132, 4
  br i1 %133, label %134, label %142

134:                                              ; preds = %131, %128, %125, %122
  %135 = load i32, i32* %10, align 4
  %136 = icmp eq i32 %135, 4
  br i1 %136, label %140, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %10, align 4
  %139 = icmp eq i32 %138, -4
  br label %140

140:                                              ; preds = %137, %134
  %141 = phi i1 [ true, %134 ], [ %139, %137 ]
  br label %142

142:                                              ; preds = %140, %131, %116, %113
  %143 = phi i1 [ false, %131 ], [ false, %116 ], [ false, %113 ], [ %141, %140 ]
  %144 = zext i1 %143 to i32
  store i32 %144, i32* %3, align 4
  br label %163

145:                                              ; preds = %107
  %146 = load i32, i32* %8, align 4
  %147 = call i64 @REGNO(i32 %146)
  %148 = load i32, i32* %9, align 4
  %149 = call i64 @REGNO(i32 %148)
  %150 = icmp eq i64 %147, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %145
  %152 = load i32, i32* %10, align 4
  %153 = icmp eq i32 %152, 4
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* %10, align 4
  %156 = icmp eq i32 %155, -4
  br label %157

157:                                              ; preds = %154, %151
  %158 = phi i1 [ true, %151 ], [ %156, %154 ]
  br label %159

159:                                              ; preds = %157, %145
  %160 = phi i1 [ false, %145 ], [ %158, %157 ]
  %161 = zext i1 %160 to i32
  store i32 %161, i32* %3, align 4
  br label %163

162:                                              ; preds = %50, %44, %31, %25
  store i32 0, i32* %3, align 4
  br label %163

163:                                              ; preds = %162, %159, %142, %106, %101, %18
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i64 @volatile_refs_p(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @const_ok_for_op(i64, i32) #1

declare dso_local i64 @arm_eliminable_register(i32) #1

declare dso_local i64 @REGNO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
