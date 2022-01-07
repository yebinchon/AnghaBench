; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_check_presence_pattern_sets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_check_presence_pattern_sets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32*, %struct.TYPE_5__* }

@els_in_cycle_reserv = common dso_local global i32 0, align 4
@CHAR_BIT = common dso_local global i32 0, align 4
@description = common dso_local global %struct.TYPE_6__* null, align 8
@unit_final_presence_set_table = common dso_local global %struct.TYPE_5__** null, align 8
@unit_presence_set_table = common dso_local global %struct.TYPE_5__** null, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @check_presence_pattern_sets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_presence_pattern_sets(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @els_in_cycle_reserv, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %161, %3
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %164

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = bitcast i32* %24 to i8*
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %160

31:                                               ; preds = %23
  %32 = load i32, i32* @CHAR_BIT, align 4
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %156, %31
  %35 = load i32, i32* %10, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %159

37:                                               ; preds = %34
  %38 = load i32*, i32** %6, align 8
  %39 = bitcast i32* %38 to i8*
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = load i32, i32* %10, align 4
  %46 = ashr i32 %44, %45
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %155

49:                                               ; preds = %37
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @CHAR_BIT, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %52, %53
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @description, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sge i32 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %159

61:                                               ; preds = %49
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @unit_final_presence_set_table, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %65, i64 %67
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = icmp eq %struct.TYPE_5__* %69, null
  br i1 %70, label %81, label %71

71:                                               ; preds = %64, %61
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %71
  %75 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @unit_presence_set_table, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %75, i64 %77
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = icmp eq %struct.TYPE_5__* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %74, %64
  br label %156

82:                                               ; preds = %74, %71
  %83 = load i32, i32* @FALSE, align 4
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @unit_final_presence_set_table, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %87, i64 %89
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  br label %98

92:                                               ; preds = %82
  %93 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @unit_presence_set_table, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %93, i64 %95
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  br label %98

98:                                               ; preds = %92, %86
  %99 = phi %struct.TYPE_5__* [ %91, %86 ], [ %97, %92 ]
  store %struct.TYPE_5__* %99, %struct.TYPE_5__** %14, align 8
  br label %100

100:                                              ; preds = %145, %98
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %102 = icmp ne %struct.TYPE_5__* %101, null
  br i1 %102, label %103, label %149

103:                                              ; preds = %100
  store i32 0, i32* %12, align 4
  br label %104

104:                                              ; preds = %132, %103
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @els_in_cycle_reserv, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %135

108:                                              ; preds = %104
  %109 = load i32*, i32** %5, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %113, %120
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %121, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %108
  br label %135

131:                                              ; preds = %108
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %12, align 4
  br label %104

135:                                              ; preds = %130, %104
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* @els_in_cycle_reserv, align 4
  %141 = icmp sge i32 %139, %140
  br label %142

142:                                              ; preds = %138, %135
  %143 = phi i1 [ true, %135 ], [ %141, %138 ]
  %144 = zext i1 %143 to i32
  store i32 %144, i32* %13, align 4
  br label %145

145:                                              ; preds = %142
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  store %struct.TYPE_5__* %148, %struct.TYPE_5__** %14, align 8
  br label %100

149:                                              ; preds = %100
  %150 = load i32, i32* %13, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %149
  %153 = load i32, i32* @FALSE, align 4
  store i32 %153, i32* %4, align 4
  br label %166

154:                                              ; preds = %149
  br label %155

155:                                              ; preds = %154, %37
  br label %156

156:                                              ; preds = %155, %81
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %10, align 4
  br label %34

159:                                              ; preds = %60, %34
  br label %160

160:                                              ; preds = %159, %23
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %8, align 4
  br label %19

164:                                              ; preds = %19
  %165 = load i32, i32* @TRUE, align 4
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %164, %152
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
