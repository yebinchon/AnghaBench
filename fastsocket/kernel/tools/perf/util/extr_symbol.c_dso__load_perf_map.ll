; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_dso__load_perf_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_dso__load_perf_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i32*, i32 }
%struct.map = type { i64 }
%struct.map.0 = type opaque
%struct.symbol = type opaque
%struct.symbol.1 = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@STB_GLOBAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dso*, %struct.map*, i64 (%struct.map.0*, %struct.symbol*)*)* @dso__load_perf_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dso__load_perf_map(%struct.dso* %0, %struct.map* %1, i64 (%struct.map.0*, %struct.symbol*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dso*, align 8
  %6 = alloca %struct.map*, align 8
  %7 = alloca i64 (%struct.map.0*, %struct.symbol*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.symbol.1*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dso* %0, %struct.dso** %5, align 8
  store %struct.map* %1, %struct.map** %6, align 8
  store i64 (%struct.map.0*, %struct.symbol*)* %2, i64 (%struct.map.0*, %struct.symbol*)** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.dso*, %struct.dso** %5, align 8
  %18 = getelementptr inbounds %struct.dso, %struct.dso* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32* @fopen(i32 %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %118

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %108, %69, %54, %24
  %26 = load i32*, i32** %10, align 8
  %27 = call i32 @feof(i32* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %109

30:                                               ; preds = %25
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @getline(i8** %8, i64* %9, i32* %31)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %109

36:                                               ; preds = %30
  %37 = load i8*, i8** %8, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  br label %118

40:                                               ; preds = %36
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* %15, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  store i8 0, i8* %45, align 1
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @hex2u64(i8* %46, i32* %12)
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = add nsw i32 %50, 2
  %52 = load i32, i32* %15, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  br label %25

55:                                               ; preds = %40
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* %16, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = call i32 @hex2u64(i8* %59, i32* %13)
  %61 = load i32, i32* %16, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = add nsw i32 %65, 2
  %67 = load i32, i32* %15, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %55
  br label %25

70:                                               ; preds = %55
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @STB_GLOBAL, align 4
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = call %struct.symbol.1* @symbol__new(i32 %71, i32 %72, i32 %73, i8* %77)
  store %struct.symbol.1* %78, %struct.symbol.1** %14, align 8
  %79 = load %struct.symbol.1*, %struct.symbol.1** %14, align 8
  %80 = icmp eq %struct.symbol.1* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %70
  br label %115

82:                                               ; preds = %70
  %83 = load i64 (%struct.map.0*, %struct.symbol*)*, i64 (%struct.map.0*, %struct.symbol*)** %7, align 8
  %84 = icmp ne i64 (%struct.map.0*, %struct.symbol*)* %83, null
  br i1 %84, label %85, label %96

85:                                               ; preds = %82
  %86 = load i64 (%struct.map.0*, %struct.symbol*)*, i64 (%struct.map.0*, %struct.symbol*)** %7, align 8
  %87 = load %struct.map*, %struct.map** %6, align 8
  %88 = bitcast %struct.map* %87 to %struct.map.0*
  %89 = load %struct.symbol.1*, %struct.symbol.1** %14, align 8
  %90 = bitcast %struct.symbol.1* %89 to %struct.symbol*
  %91 = call i64 %86(%struct.map.0* %88, %struct.symbol* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load %struct.symbol.1*, %struct.symbol.1** %14, align 8
  %95 = call i32 @symbol__delete(%struct.symbol.1* %94)
  br label %108

96:                                               ; preds = %85, %82
  %97 = load %struct.dso*, %struct.dso** %5, align 8
  %98 = getelementptr inbounds %struct.dso, %struct.dso* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.map*, %struct.map** %6, align 8
  %101 = getelementptr inbounds %struct.map, %struct.map* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load %struct.symbol.1*, %struct.symbol.1** %14, align 8
  %105 = call i32 @symbols__insert(i32* %103, %struct.symbol.1* %104)
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %96, %93
  br label %25

109:                                              ; preds = %35, %25
  %110 = load i8*, i8** %8, align 8
  %111 = call i32 @free(i8* %110)
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @fclose(i32* %112)
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %4, align 4
  br label %119

115:                                              ; preds = %81
  %116 = load i8*, i8** %8, align 8
  %117 = call i32 @free(i8* %116)
  br label %118

118:                                              ; preds = %115, %39, %23
  store i32 -1, i32* %4, align 4
  br label %119

119:                                              ; preds = %118, %109
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i32 @hex2u64(i8*, i32*) #1

declare dso_local %struct.symbol.1* @symbol__new(i32, i32, i32, i8*) #1

declare dso_local i32 @symbol__delete(%struct.symbol.1*) #1

declare dso_local i32 @symbols__insert(i32*, %struct.symbol.1*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
