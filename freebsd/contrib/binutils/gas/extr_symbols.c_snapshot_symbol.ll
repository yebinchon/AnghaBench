; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_snapshot_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_snapshot_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, %struct.TYPE_8__*, i32, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.local_symbol = type { i64, i32 }

@O_illegal = common dso_local global i32 0, align 4
@undefined_section = common dso_local global i64 0, align 8
@expr_section = common dso_local global i64 0, align 8
@absolute_section = common dso_local global i64 0, align 8
@reg_section = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snapshot_symbol(%struct.TYPE_9__** %0, i32* %1, i64* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.local_symbol*, align 8
  %12 = alloca %struct.TYPE_10__, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32** %3, i32*** %9, align 8
  %14 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %10, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %17 = call i64 @LOCAL_SYMBOL_CHECK(%struct.TYPE_9__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %21 = bitcast %struct.TYPE_9__* %20 to %struct.local_symbol*
  store %struct.local_symbol* %21, %struct.local_symbol** %11, align 8
  %22 = load %struct.local_symbol*, %struct.local_symbol** %11, align 8
  %23 = getelementptr inbounds %struct.local_symbol, %struct.local_symbol* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32*, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  %26 = load %struct.local_symbol*, %struct.local_symbol** %11, align 8
  %27 = getelementptr inbounds %struct.local_symbol, %struct.local_symbol* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** %8, align 8
  store i64 %28, i64* %29, align 8
  %30 = load %struct.local_symbol*, %struct.local_symbol** %11, align 8
  %31 = call i32* @local_symbol_get_frag(%struct.local_symbol* %30)
  %32 = load i32**, i32*** %9, align 8
  store i32* %31, i32** %32, align 8
  br label %125

33:                                               ; preds = %4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 4
  %36 = bitcast %struct.TYPE_10__* %12 to i8*
  %37 = bitcast %struct.TYPE_10__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 16, i1 false)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %76, label %42

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @O_illegal, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %76

47:                                               ; preds = %42
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %126

53:                                               ; preds = %47
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = call i32 @resolve_expression(%struct.TYPE_10__* %12)
  store i32 %56, i32* %13, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %126

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  switch i32 %64, label %74 [
    i32 131, label %65
    i32 130, label %65
    i32 129, label %71
    i32 128, label %71
  ]

65:                                               ; preds = %62, %62
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %67 = call i32 @symbol_equated_p(%struct.TYPE_9__* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  br label %75

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %62, %62, %70
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  store %struct.TYPE_9__* %73, %struct.TYPE_9__** %10, align 8
  br label %75

74:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %126

75:                                               ; preds = %71, %69
  br label %76

76:                                               ; preds = %75, %42, %33
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @undefined_section, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %92, label %84

84:                                               ; preds = %76
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @expr_section, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %84, %76
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %94 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  store %struct.TYPE_9__* %93, %struct.TYPE_9__** %94, align 8
  br label %95

95:                                               ; preds = %92, %84
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %7, align 8
  store i32 %97, i32* %98, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64*, i64** %8, align 8
  store i64 %103, i64* %104, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32**, i32*** %9, align 8
  store i32* %107, i32** %108, align 8
  %109 = load i64*, i64** %8, align 8
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @expr_section, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %95
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  switch i32 %115, label %122 [
    i32 131, label %116
    i32 130, label %119
  ]

116:                                              ; preds = %113
  %117 = load i64, i64* @absolute_section, align 8
  %118 = load i64*, i64** %8, align 8
  store i64 %117, i64* %118, align 8
  br label %123

119:                                              ; preds = %113
  %120 = load i64, i64* @reg_section, align 8
  %121 = load i64*, i64** %8, align 8
  store i64 %120, i64* %121, align 8
  br label %123

122:                                              ; preds = %113
  br label %123

123:                                              ; preds = %122, %119, %116
  br label %124

124:                                              ; preds = %123, %95
  br label %125

125:                                              ; preds = %124, %19
  store i32 1, i32* %5, align 4
  br label %126

126:                                              ; preds = %125, %74, %61, %52
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i64 @LOCAL_SYMBOL_CHECK(%struct.TYPE_9__*) #1

declare dso_local i32* @local_symbol_get_frag(%struct.local_symbol*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @resolve_expression(%struct.TYPE_10__*) #1

declare dso_local i32 @symbol_equated_p(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
