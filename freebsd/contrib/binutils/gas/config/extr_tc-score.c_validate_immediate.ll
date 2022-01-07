; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_validate_immediate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_validate_immediate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@score_df_range = common dso_local global %struct.TYPE_2__* null, align 8
@FAIL = common dso_local global i64 0, align 8
@_SIMM14_NEG = common dso_local global i32 0, align 4
@_IMM16_NEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @validate_immediate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_immediate(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %123 [
    i32 129, label %11
    i32 128, label %39
    i32 130, label %66
    i32 132, label %68
    i32 131, label %93
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, -65536
  %14 = lshr i32 %13, 16
  store i32 %14, i32* %8, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @score_df_range, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %11
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @score_df_range, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sle i32 %26, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %162

38:                                               ; preds = %25, %11
  br label %159

39:                                               ; preds = %3
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, 65535
  store i32 %41, i32* %9, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @score_df_range, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %39
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @score_df_range, align 8
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sle i32 %53, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %4, align 4
  br label %162

65:                                               ; preds = %52, %39
  br label %159

66:                                               ; preds = %3
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %4, align 4
  br label %162

68:                                               ; preds = %3
  %69 = load i32, i32* %7, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load i32, i32* %5, align 4
  %73 = icmp sge i32 %72, -8192
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %5, align 4
  %76 = icmp sle i32 %75, 16383
  br i1 %76, label %80, label %77

77:                                               ; preds = %74, %71
  %78 = load i64, i64* @FAIL, align 8
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %4, align 4
  br label %162

80:                                               ; preds = %74
  br label %91

81:                                               ; preds = %68
  %82 = load i32, i32* %5, align 4
  %83 = icmp sge i32 %82, -8192
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* %5, align 4
  %86 = icmp sle i32 %85, 8191
  br i1 %86, label %90, label %87

87:                                               ; preds = %84, %81
  %88 = load i64, i64* @FAIL, align 8
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %4, align 4
  br label %162

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90, %80
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %4, align 4
  br label %162

93:                                               ; preds = %3
  %94 = load i32, i32* %7, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %109

96:                                               ; preds = %93
  %97 = load i32, i32* %5, align 4
  %98 = icmp sge i32 %97, -32767
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i32, i32* %5, align 4
  %101 = icmp sle i32 %100, 65535
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 32768
  br i1 %104, label %108, label %105

105:                                              ; preds = %102, %99, %96
  %106 = load i64, i64* @FAIL, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %4, align 4
  br label %162

108:                                              ; preds = %102
  br label %119

109:                                              ; preds = %93
  %110 = load i32, i32* %5, align 4
  %111 = icmp sge i32 %110, -32767
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* %5, align 4
  %114 = icmp sle i32 %113, 32768
  br i1 %114, label %118, label %115

115:                                              ; preds = %112, %109
  %116 = load i64, i64* @FAIL, align 8
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %4, align 4
  br label %162

118:                                              ; preds = %112
  br label %119

119:                                              ; preds = %118, %108
  %120 = load i32, i32* %5, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  store i32 %122, i32* %4, align 4
  br label %162

123:                                              ; preds = %3
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @_SIMM14_NEG, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @_IMM16_NEG, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %127, %123
  %132 = load i32, i32* %5, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %131, %127
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** @score_df_range, align 8
  %136 = load i32, i32* %6, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %5, align 4
  %144 = icmp sle i32 %142, %143
  br i1 %144, label %145, label %158

145:                                              ; preds = %134
  %146 = load i32, i32* %5, align 4
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** @score_df_range, align 8
  %148 = load i32, i32* %6, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp sle i32 %146, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %145
  %157 = load i32, i32* %5, align 4
  store i32 %157, i32* %4, align 4
  br label %162

158:                                              ; preds = %145, %134
  br label %159

159:                                              ; preds = %158, %65, %38
  %160 = load i64, i64* @FAIL, align 8
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %4, align 4
  br label %162

162:                                              ; preds = %159, %156, %119, %115, %105, %91, %87, %77, %66, %63, %36
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
