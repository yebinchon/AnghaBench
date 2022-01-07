; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/test/btyacc/extr_expr.oxout.tab.c_yyySolveAndSignal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/test/btyacc/extr_expr.oxout.tab.c_yyySolveAndSignal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32 }

@yyyRSTop = common dso_local global %struct.TYPE_11__* null, align 8
@yyyIIEL = common dso_local global i32* null, align 8
@yyyIIIEL = common dso_local global i64* null, align 8
@yyyIEL = common dso_local global i32* null, align 8
@yyySSALCfreeList = common dso_local global i64 0, align 8
@yyyLambdaSSAL = common dso_local global i64 0, align 8
@yyySSALspace = common dso_local global %struct.TYPE_10__* null, align 8
@yyyNewSSALC = common dso_local global i64 0, align 8
@yyySSALspaceSize = common dso_local global i64 0, align 8
@yyySSALof = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yyySolveAndSignal() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** @yyyRSTop, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  %12 = bitcast %struct.TYPE_8__* %7 to i8*
  %13 = bitcast %struct.TYPE_8__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 16, i1 false)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** @yyyRSTop, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  br label %23

21:                                               ; preds = %0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi %struct.TYPE_9__* [ %20, %18 ], [ %22, %21 ]
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %6, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** @yyyRSTop, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %4, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** @yyyRSTop, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 -1
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** @yyyRSTop, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %63 [
    i32 1, label %33
    i32 2, label %36
    i32 3, label %39
    i32 4, label %42
    i32 5, label %45
    i32 6, label %48
    i32 7, label %51
    i32 8, label %57
  ]

33:                                               ; preds = %23
  %34 = load i32, i32* %3, align 4
  switch i32 %34, label %35 [
  ]

35:                                               ; preds = %33
  br label %63

36:                                               ; preds = %23
  %37 = load i32, i32* %3, align 4
  switch i32 %37, label %38 [
  ]

38:                                               ; preds = %36
  br label %63

39:                                               ; preds = %23
  %40 = load i32, i32* %3, align 4
  switch i32 %40, label %41 [
  ]

41:                                               ; preds = %39
  br label %63

42:                                               ; preds = %23
  %43 = load i32, i32* %3, align 4
  switch i32 %43, label %44 [
  ]

44:                                               ; preds = %42
  br label %63

45:                                               ; preds = %23
  %46 = load i32, i32* %3, align 4
  switch i32 %46, label %47 [
  ]

47:                                               ; preds = %45
  br label %63

48:                                               ; preds = %23
  %49 = load i32, i32* %3, align 4
  switch i32 %49, label %50 [
  ]

50:                                               ; preds = %48
  br label %63

51:                                               ; preds = %23
  %52 = load i32, i32* %3, align 4
  switch i32 %52, label %56 [
    i32 1, label %53
  ]

53:                                               ; preds = %51
  %54 = load i32, i32* %4, align 4
  switch i32 %54, label %55 [
  ]

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %51, %55
  br label %63

57:                                               ; preds = %23
  %58 = load i32, i32* %3, align 4
  switch i32 %58, label %62 [
    i32 1, label %59
  ]

59:                                               ; preds = %57
  %60 = load i32, i32* %4, align 4
  switch i32 %60, label %61 [
  ]

61:                                               ; preds = %59
  br label %62

62:                                               ; preds = %57, %61
  br label %63

63:                                               ; preds = %23, %62, %56, %50, %47, %44, %41, %38, %35
  %64 = load i32, i32* %3, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %97

66:                                               ; preds = %63
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %96

71:                                               ; preds = %66
  %72 = load i32*, i32** @yyyIIEL, align 8
  %73 = load i64*, i64** @yyyIIIEL, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %73, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32, i32* %72, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %1, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = load i32*, i32** @yyyIEL, align 8
  %87 = load i64, i64* %1, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** @yyyIEL, align 8
  %91 = load i64, i64* %1, align 8
  %92 = add nsw i64 %91, 1
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @yyySignalEnts(%struct.TYPE_9__* %85, i32 %89, i32 %94)
  br label %96

96:                                               ; preds = %71, %66
  br label %179

97:                                               ; preds = %63
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %133, label %102

102:                                              ; preds = %97
  %103 = load i32*, i32** @yyyIIEL, align 8
  %104 = load i64*, i64** @yyyIIIEL, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %104, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = add i64 %111, %114
  %116 = getelementptr inbounds i32, i32* %103, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %4, align 4
  %119 = add nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %1, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = load i32*, i32** @yyyIEL, align 8
  %124 = load i64, i64* %1, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** @yyyIEL, align 8
  %128 = load i64, i64* %1, align 8
  %129 = add nsw i64 %128, 1
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @yyySignalEnts(%struct.TYPE_9__* %122, i32 %126, i32 %131)
  br label %178

133:                                              ; preds = %97
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  store i64* %136, i64** %2, align 8
  %137 = load i64, i64* @yyySSALCfreeList, align 8
  %138 = load i64, i64* @yyyLambdaSSAL, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %156

140:                                              ; preds = %133
  %141 = load i64*, i64** %2, align 8
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** @yyySSALspace, align 8
  %144 = load i64, i64* @yyyNewSSALC, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  store i64 %142, i64* %146, align 8
  %147 = load i64, i64* @yyyNewSSALC, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* @yyyNewSSALC, align 8
  %149 = load i64*, i64** %2, align 8
  store i64 %147, i64* %149, align 8
  %150 = load i64, i64* @yyySSALspaceSize, align 8
  %151 = icmp eq i64 %147, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %140
  %153 = load i32, i32* @yyySSALof, align 4
  %154 = call i32 @yyyHandleOverflow(i32 %153)
  br label %155

155:                                              ; preds = %152, %140
  br label %171

156:                                              ; preds = %133
  %157 = load i64, i64* @yyySSALCfreeList, align 8
  store i64 %157, i64* %1, align 8
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** @yyySSALspace, align 8
  %159 = load i64, i64* @yyySSALCfreeList, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  store i64 %162, i64* @yyySSALCfreeList, align 8
  %163 = load i64*, i64** %2, align 8
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** @yyySSALspace, align 8
  %166 = load i64, i64* %1, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  store i64 %164, i64* %168, align 8
  %169 = load i64, i64* %1, align 8
  %170 = load i64*, i64** %2, align 8
  store i64 %169, i64* %170, align 8
  br label %171

171:                                              ; preds = %156, %155
  %172 = load i32, i32* %4, align 4
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** @yyySSALspace, align 8
  %174 = load i64*, i64** %2, align 8
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 1
  store i32 %172, i32* %177, align 8
  br label %178

178:                                              ; preds = %171, %102
  br label %179

179:                                              ; preds = %178, %96
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @yyySignalEnts(%struct.TYPE_9__*, i32, i32) #2

declare dso_local i32 @yyyHandleOverflow(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
