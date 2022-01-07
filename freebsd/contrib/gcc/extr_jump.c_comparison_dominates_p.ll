; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_jump.c_comparison_dominates_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_jump.c_comparison_dominates_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNKNOWN = common dso_local global i32 0, align 4
@UNLE = common dso_local global i32 0, align 4
@UNGE = common dso_local global i32 0, align 4
@LEU = common dso_local global i32 0, align 4
@GEU = common dso_local global i32 0, align 4
@ORDERED = common dso_local global i32 0, align 4
@NE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comparison_dominates_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @UNKNOWN, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @UNKNOWN, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %2
  store i32 0, i32* %3, align 4
  br label %164

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %164

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %162 [
    i32 131, label %21
    i32 139, label %31
    i32 129, label %51
    i32 134, label %61
    i32 130, label %77
    i32 137, label %87
    i32 138, label %103
    i32 135, label %103
    i32 133, label %109
    i32 132, label %119
    i32 136, label %129
    i32 128, label %139
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @UNLE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @UNGE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21
  store i32 1, i32* %3, align 4
  br label %164

30:                                               ; preds = %25
  br label %163

31:                                               ; preds = %19
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 135
  br i1 %33, label %49, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @LEU, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %49, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 138
  br i1 %40, label %49, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @GEU, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @ORDERED, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %41, %38, %34, %31
  store i32 1, i32* %3, align 4
  br label %164

50:                                               ; preds = %45
  br label %163

51:                                               ; preds = %19
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @UNLE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @NE, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %51
  store i32 1, i32* %3, align 4
  br label %164

60:                                               ; preds = %55
  br label %163

61:                                               ; preds = %19
  %62 = load i32, i32* %5, align 4
  %63 = icmp eq i32 %62, 135
  br i1 %63, label %75, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @NE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %75, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @ORDERED, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %5, align 4
  %74 = icmp eq i32 %73, 133
  br i1 %74, label %75, label %76

75:                                               ; preds = %72, %68, %64, %61
  store i32 1, i32* %3, align 4
  br label %164

76:                                               ; preds = %72
  br label %163

77:                                               ; preds = %19
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @UNGE, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @NE, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81, %77
  store i32 1, i32* %3, align 4
  br label %164

86:                                               ; preds = %81
  br label %163

87:                                               ; preds = %19
  %88 = load i32, i32* %5, align 4
  %89 = icmp eq i32 %88, 138
  br i1 %89, label %101, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @NE, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %101, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @ORDERED, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* %5, align 4
  %100 = icmp eq i32 %99, 133
  br i1 %100, label %101, label %102

101:                                              ; preds = %98, %94, %90, %87
  store i32 1, i32* %3, align 4
  br label %164

102:                                              ; preds = %98
  br label %163

103:                                              ; preds = %19, %19
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @ORDERED, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  store i32 1, i32* %3, align 4
  br label %164

108:                                              ; preds = %103
  br label %163

109:                                              ; preds = %19
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @NE, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @ORDERED, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113, %109
  store i32 1, i32* %3, align 4
  br label %164

118:                                              ; preds = %113
  br label %163

119:                                              ; preds = %19
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @LEU, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @NE, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123, %119
  store i32 1, i32* %3, align 4
  br label %164

128:                                              ; preds = %123
  br label %163

129:                                              ; preds = %19
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @GEU, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @NE, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %133, %129
  store i32 1, i32* %3, align 4
  br label %164

138:                                              ; preds = %133
  br label %163

139:                                              ; preds = %19
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @NE, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %160, label %143

143:                                              ; preds = %139
  %144 = load i32, i32* %5, align 4
  %145 = icmp eq i32 %144, 131
  br i1 %145, label %160, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* @UNLE, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %160, label %150

150:                                              ; preds = %146
  %151 = load i32, i32* %5, align 4
  %152 = icmp eq i32 %151, 129
  br i1 %152, label %160, label %153

153:                                              ; preds = %150
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* @UNGE, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %160, label %157

157:                                              ; preds = %153
  %158 = load i32, i32* %5, align 4
  %159 = icmp eq i32 %158, 130
  br i1 %159, label %160, label %161

160:                                              ; preds = %157, %153, %150, %146, %143, %139
  store i32 1, i32* %3, align 4
  br label %164

161:                                              ; preds = %157
  br label %163

162:                                              ; preds = %19
  br label %163

163:                                              ; preds = %162, %161, %138, %128, %118, %108, %102, %86, %76, %60, %50, %30
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %163, %160, %137, %127, %117, %107, %101, %85, %75, %59, %49, %29, %18, %13
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
