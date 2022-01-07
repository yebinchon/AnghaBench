; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_c_common_type_for_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_c_common_type_for_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@integer_type_node = common dso_local global i32 0, align 4
@unsigned_type_node = common dso_local global i32 0, align 4
@signed_char_type_node = common dso_local global i32 0, align 4
@unsigned_char_type_node = common dso_local global i32 0, align 4
@short_integer_type_node = common dso_local global i32 0, align 4
@short_unsigned_type_node = common dso_local global i32 0, align 4
@long_integer_type_node = common dso_local global i32 0, align 4
@long_unsigned_type_node = common dso_local global i32 0, align 4
@long_long_integer_type_node = common dso_local global i32 0, align 4
@long_long_unsigned_type_node = common dso_local global i32 0, align 4
@widest_integer_literal_type_node = common dso_local global i32 0, align 4
@widest_unsigned_literal_type_node = common dso_local global i32 0, align 4
@intQI_type_node = common dso_local global i32 0, align 4
@unsigned_intQI_type_node = common dso_local global i32 0, align 4
@intHI_type_node = common dso_local global i32 0, align 4
@unsigned_intHI_type_node = common dso_local global i32 0, align 4
@intSI_type_node = common dso_local global i32 0, align 4
@unsigned_intSI_type_node = common dso_local global i32 0, align 4
@intDI_type_node = common dso_local global i32 0, align 4
@unsigned_intDI_type_node = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_common_type_for_size(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @integer_type_node, align 4
  %8 = call i32 @TYPE_PRECISION(i32 %7)
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32, i32* @unsigned_type_node, align 4
  br label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @integer_type_node, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %3, align 4
  br label %146

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @signed_char_type_node, align 4
  %22 = call i32 @TYPE_PRECISION(i32 %21)
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @unsigned_char_type_node, align 4
  br label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @signed_char_type_node, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %3, align 4
  br label %146

33:                                               ; preds = %19
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @short_integer_type_node, align 4
  %36 = call i32 @TYPE_PRECISION(i32 %35)
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @short_unsigned_type_node, align 4
  br label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @short_integer_type_node, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %3, align 4
  br label %146

47:                                               ; preds = %33
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @long_integer_type_node, align 4
  %50 = call i32 @TYPE_PRECISION(i32 %49)
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @long_unsigned_type_node, align 4
  br label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @long_integer_type_node, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  store i32 %60, i32* %3, align 4
  br label %146

61:                                               ; preds = %47
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @long_long_integer_type_node, align 4
  %64 = call i32 @TYPE_PRECISION(i32 %63)
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @long_long_unsigned_type_node, align 4
  br label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @long_long_integer_type_node, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  store i32 %74, i32* %3, align 4
  br label %146

75:                                               ; preds = %61
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @widest_integer_literal_type_node, align 4
  %78 = call i32 @TYPE_PRECISION(i32 %77)
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* @widest_unsigned_literal_type_node, align 4
  br label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @widest_integer_literal_type_node, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  store i32 %88, i32* %3, align 4
  br label %146

89:                                               ; preds = %75
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @intQI_type_node, align 4
  %92 = call i32 @TYPE_PRECISION(i32 %91)
  %93 = icmp ule i32 %90, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* @unsigned_intQI_type_node, align 4
  br label %101

99:                                               ; preds = %94
  %100 = load i32, i32* @intQI_type_node, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  store i32 %102, i32* %3, align 4
  br label %146

103:                                              ; preds = %89
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* @intHI_type_node, align 4
  %106 = call i32 @TYPE_PRECISION(i32 %105)
  %107 = icmp ule i32 %104, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %103
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i32, i32* @unsigned_intHI_type_node, align 4
  br label %115

113:                                              ; preds = %108
  %114 = load i32, i32* @intHI_type_node, align 4
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  store i32 %116, i32* %3, align 4
  br label %146

117:                                              ; preds = %103
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @intSI_type_node, align 4
  %120 = call i32 @TYPE_PRECISION(i32 %119)
  %121 = icmp ule i32 %118, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %117
  %123 = load i32, i32* %5, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = load i32, i32* @unsigned_intSI_type_node, align 4
  br label %129

127:                                              ; preds = %122
  %128 = load i32, i32* @intSI_type_node, align 4
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %126, %125 ], [ %128, %127 ]
  store i32 %130, i32* %3, align 4
  br label %146

131:                                              ; preds = %117
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* @intDI_type_node, align 4
  %134 = call i32 @TYPE_PRECISION(i32 %133)
  %135 = icmp ule i32 %132, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %131
  %137 = load i32, i32* %5, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load i32, i32* @unsigned_intDI_type_node, align 4
  br label %143

141:                                              ; preds = %136
  %142 = load i32, i32* @intDI_type_node, align 4
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi i32 [ %140, %139 ], [ %142, %141 ]
  store i32 %144, i32* %3, align 4
  br label %146

145:                                              ; preds = %131
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %145, %143, %129, %115, %101, %87, %73, %59, %45, %31, %17
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @TYPE_PRECISION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
