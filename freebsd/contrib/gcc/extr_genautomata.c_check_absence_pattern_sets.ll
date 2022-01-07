; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_check_absence_pattern_sets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_check_absence_pattern_sets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32*, %struct.TYPE_5__* }

@els_in_cycle_reserv = common dso_local global i32 0, align 4
@CHAR_BIT = common dso_local global i32 0, align 4
@description = common dso_local global %struct.TYPE_6__* null, align 8
@unit_final_absence_set_table = common dso_local global %struct.TYPE_5__** null, align 8
@unit_absence_set_table = common dso_local global %struct.TYPE_5__** null, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @check_absence_pattern_sets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_absence_pattern_sets(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @els_in_cycle_reserv, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %139, %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %142

22:                                               ; preds = %18
  %23 = load i32*, i32** %6, align 8
  %24 = bitcast i32* %23 to i8*
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %138

30:                                               ; preds = %22
  %31 = load i32, i32* @CHAR_BIT, align 4
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %134, %30
  %34 = load i32, i32* %10, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %137

36:                                               ; preds = %33
  %37 = load i32*, i32** %6, align 8
  %38 = bitcast i32* %37 to i8*
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = load i32, i32* %10, align 4
  %45 = ashr i32 %43, %44
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %133

48:                                               ; preds = %36
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @CHAR_BIT, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @description, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %137

60:                                               ; preds = %48
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @unit_final_absence_set_table, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %64, i64 %66
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  br label %75

69:                                               ; preds = %60
  %70 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @unit_absence_set_table, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %70, i64 %72
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  br label %75

75:                                               ; preds = %69, %63
  %76 = phi %struct.TYPE_5__* [ %68, %63 ], [ %74, %69 ]
  store %struct.TYPE_5__* %76, %struct.TYPE_5__** %13, align 8
  br label %77

77:                                               ; preds = %128, %75
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %79 = icmp ne %struct.TYPE_5__* %78, null
  br i1 %79, label %80, label %132

80:                                               ; preds = %77
  store i32 0, i32* %12, align 4
  br label %81

81:                                               ; preds = %118, %80
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @els_in_cycle_reserv, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %121

85:                                               ; preds = %81
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %90, %97
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %98, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %85
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  br label %121

117:                                              ; preds = %107, %85
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %12, align 4
  br label %81

121:                                              ; preds = %116, %81
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @els_in_cycle_reserv, align 4
  %124 = icmp sge i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i32, i32* @FALSE, align 4
  store i32 %126, i32* %4, align 4
  br label %144

127:                                              ; preds = %121
  br label %128

128:                                              ; preds = %127
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  store %struct.TYPE_5__* %131, %struct.TYPE_5__** %13, align 8
  br label %77

132:                                              ; preds = %77
  br label %133

133:                                              ; preds = %132, %36
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %10, align 4
  br label %33

137:                                              ; preds = %59, %33
  br label %138

138:                                              ; preds = %137, %22
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %8, align 4
  br label %18

142:                                              ; preds = %18
  %143 = load i32, i32* @TRUE, align 4
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %142, %125
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
