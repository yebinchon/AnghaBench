; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_memory_move_cost.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_memory_move_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }

@ix86_cost = common dso_local global %struct.TYPE_2__* null, align 8
@TFmode = common dso_local global i32 0, align 4
@UNITS_PER_WORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ix86_memory_move_cost(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @FLOAT_CLASS_P(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %19 [
    i32 129, label %16
    i32 130, label %17
    i32 128, label %18
  ]

16:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %20

17:                                               ; preds = %14
  store i32 1, i32* %8, align 4
  br label %20

18:                                               ; preds = %14
  store i32 2, i32* %8, align 4
  br label %20

19:                                               ; preds = %14
  store i32 100, i32* %4, align 4
  br label %192

20:                                               ; preds = %18, %17, %16
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ix86_cost, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  br label %39

31:                                               ; preds = %20
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ix86_cost, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  br label %39

39:                                               ; preds = %31, %23
  %40 = phi i32 [ %30, %23 ], [ %38, %31 ]
  store i32 %40, i32* %4, align 4
  br label %192

41:                                               ; preds = %3
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @SSE_CLASS_P(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %73

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @GET_MODE_SIZE(i32 %46)
  switch i32 %47, label %51 [
    i32 4, label %48
    i32 8, label %49
    i32 16, label %50
  ]

48:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  br label %52

49:                                               ; preds = %45
  store i32 1, i32* %9, align 4
  br label %52

50:                                               ; preds = %45
  store i32 2, i32* %9, align 4
  br label %52

51:                                               ; preds = %45
  store i32 100, i32* %4, align 4
  br label %192

52:                                               ; preds = %50, %49, %48
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ix86_cost, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  br label %71

63:                                               ; preds = %52
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ix86_cost, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  br label %71

71:                                               ; preds = %63, %55
  %72 = phi i32 [ %62, %55 ], [ %70, %63 ]
  store i32 %72, i32* %4, align 4
  br label %192

73:                                               ; preds = %41
  %74 = load i32, i32* %6, align 4
  %75 = call i64 @MMX_CLASS_P(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %104

77:                                               ; preds = %73
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @GET_MODE_SIZE(i32 %78)
  switch i32 %79, label %82 [
    i32 4, label %80
    i32 8, label %81
  ]

80:                                               ; preds = %77
  store i32 0, i32* %10, align 4
  br label %83

81:                                               ; preds = %77
  store i32 1, i32* %10, align 4
  br label %83

82:                                               ; preds = %77
  store i32 100, i32* %4, align 4
  br label %192

83:                                               ; preds = %81, %80
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ix86_cost, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  br label %102

94:                                               ; preds = %83
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ix86_cost, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 5
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  br label %102

102:                                              ; preds = %94, %86
  %103 = phi i32 [ %93, %86 ], [ %101, %94 ]
  store i32 %103, i32* %4, align 4
  br label %192

104:                                              ; preds = %73
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @GET_MODE_SIZE(i32 %105)
  switch i32 %106, label %162 [
    i32 1, label %107
    i32 2, label %145
  ]

107:                                              ; preds = %104
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %126

110:                                              ; preds = %107
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @Q_CLASS_P(i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ix86_cost, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 6
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  br label %124

120:                                              ; preds = %110
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ix86_cost, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 8
  br label %124

124:                                              ; preds = %120, %114
  %125 = phi i32 [ %119, %114 ], [ %123, %120 ]
  store i32 %125, i32* %4, align 4
  br label %192

126:                                              ; preds = %107
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @Q_CLASS_P(i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ix86_cost, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 8
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  br label %143

136:                                              ; preds = %126
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ix86_cost, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 8
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 4
  br label %143

143:                                              ; preds = %136, %130
  %144 = phi i32 [ %135, %130 ], [ %142, %136 ]
  store i32 %144, i32* %4, align 4
  br label %192

145:                                              ; preds = %104
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ix86_cost, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 6
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = load i32, i32* %152, align 4
  br label %160

154:                                              ; preds = %145
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ix86_cost, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 8
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  %159 = load i32, i32* %158, align 4
  br label %160

160:                                              ; preds = %154, %148
  %161 = phi i32 [ %153, %148 ], [ %159, %154 ]
  store i32 %161, i32* %4, align 4
  br label %192

162:                                              ; preds = %104
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* @TFmode, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  store i32 128, i32* %5, align 4
  br label %167

167:                                              ; preds = %166, %162
  %168 = load i32, i32* %7, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ix86_cost, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 6
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 2
  %175 = load i32, i32* %174, align 4
  br label %182

176:                                              ; preds = %167
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ix86_cost, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 8
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 2
  %181 = load i32, i32* %180, align 4
  br label %182

182:                                              ; preds = %176, %170
  %183 = phi i32 [ %175, %170 ], [ %181, %176 ]
  %184 = load i32, i32* %5, align 4
  %185 = call i32 @GET_MODE_SIZE(i32 %184)
  %186 = load i32, i32* @UNITS_PER_WORD, align 4
  %187 = add nsw i32 %185, %186
  %188 = sub nsw i32 %187, 1
  %189 = load i32, i32* @UNITS_PER_WORD, align 4
  %190 = sdiv i32 %188, %189
  %191 = mul nsw i32 %183, %190
  store i32 %191, i32* %4, align 4
  br label %192

192:                                              ; preds = %182, %160, %143, %124, %102, %82, %71, %51, %39, %19
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local i64 @FLOAT_CLASS_P(i32) #1

declare dso_local i64 @SSE_CLASS_P(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @MMX_CLASS_P(i32) #1

declare dso_local i32 @Q_CLASS_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
