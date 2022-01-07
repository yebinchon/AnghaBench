; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_symbol__parse_objdump_line.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_symbol__parse_objdump_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32, i32 }
%struct.map = type { i32 }
%struct.annotation = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.disasm_line = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.symbol*, %struct.map*, i32*, i64)* @symbol__parse_objdump_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @symbol__parse_objdump_line(%struct.symbol* %0, %struct.map* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca %struct.map*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.annotation*, align 8
  %11 = alloca %struct.disasm_line*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.symbol* %0, %struct.symbol** %6, align 8
  store %struct.map* %1, %struct.map** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %22 = load %struct.symbol*, %struct.symbol** %6, align 8
  %23 = call %struct.annotation* @symbol__annotation(%struct.symbol* %22)
  store %struct.annotation* %23, %struct.annotation** %10, align 8
  store i8* null, i8** %12, align 8
  store i32 -1, i32* %19, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = call i64 @getline(i8** %12, i64* %17, i32* %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %142

28:                                               ; preds = %4
  %29 = load i8*, i8** %12, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  store i32 -1, i32* %5, align 4
  br label %142

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %46, %32
  %34 = load i64, i64* %17, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i8*, i8** %12, align 8
  %38 = load i64, i64* %17, align 8
  %39 = sub i64 %38, 1
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = call i64 @isspace(i8 signext %41)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %36, %33
  %45 = phi i1 [ false, %33 ], [ %43, %36 ]
  br i1 %45, label %46, label %51

46:                                               ; preds = %44
  %47 = load i8*, i8** %12, align 8
  %48 = load i64, i64* %17, align 8
  %49 = add i64 %48, -1
  store i64 %49, i64* %17, align 8
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8 0, i8* %50, align 1
  br label %33

51:                                               ; preds = %44
  %52 = load i8*, i8** %12, align 8
  %53 = call i8* @strchr(i8* %52, i8 signext 10)
  store i8* %53, i8** %16, align 8
  %54 = load i8*, i8** %16, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i8*, i8** %16, align 8
  store i8 0, i8* %57, align 1
  br label %58

58:                                               ; preds = %56, %51
  store i32 -1, i32* %18, align 4
  %59 = load i8*, i8** %12, align 8
  store i8* %59, i8** %13, align 8
  %60 = load i8*, i8** %12, align 8
  store i8* %60, i8** %14, align 8
  br label %61

61:                                               ; preds = %71, %58
  %62 = load i8*, i8** %14, align 8
  %63 = load i8, i8* %62, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = load i8*, i8** %14, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 32
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %74

71:                                               ; preds = %65
  %72 = load i8*, i8** %14, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %14, align 8
  br label %61

74:                                               ; preds = %70, %61
  %75 = load i8*, i8** %14, align 8
  %76 = load i8, i8* %75, align 1
  %77 = icmp ne i8 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %74
  %79 = load i8*, i8** %14, align 8
  %80 = call i32 @strtoull(i8* %79, i8** %15, i32 16)
  store i32 %80, i32* %18, align 4
  %81 = load i8*, i8** %15, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 58
  br i1 %84, label %95, label %85

85:                                               ; preds = %78
  %86 = load i8*, i8** %14, align 8
  %87 = load i8*, i8** %15, align 8
  %88 = icmp eq i8* %86, %87
  br i1 %88, label %95, label %89

89:                                               ; preds = %85
  %90 = load i8*, i8** %15, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89, %85, %78
  store i32 -1, i32* %18, align 4
  br label %96

96:                                               ; preds = %95, %89
  br label %97

97:                                               ; preds = %96, %74
  %98 = load i32, i32* %18, align 4
  %99 = icmp ne i32 %98, -1
  br i1 %99, label %100, label %125

100:                                              ; preds = %97
  %101 = load %struct.map*, %struct.map** %7, align 8
  %102 = load %struct.symbol*, %struct.symbol** %6, align 8
  %103 = getelementptr inbounds %struct.symbol, %struct.symbol* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @map__rip_2objdump(%struct.map* %101, i32 %104)
  store i32 %105, i32* %20, align 4
  %106 = load %struct.map*, %struct.map** %7, align 8
  %107 = load %struct.symbol*, %struct.symbol** %6, align 8
  %108 = getelementptr inbounds %struct.symbol, %struct.symbol* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @map__rip_2objdump(%struct.map* %106, i32 %109)
  store i32 %110, i32* %21, align 4
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* %20, align 4
  %113 = sub nsw i32 %111, %112
  store i32 %113, i32* %19, align 4
  %114 = load i32, i32* %19, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %100
  %117 = load i32, i32* %18, align 4
  %118 = load i32, i32* %21, align 4
  %119 = icmp sgt i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %116, %100
  store i32 -1, i32* %19, align 4
  br label %124

121:                                              ; preds = %116
  %122 = load i8*, i8** %15, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 1
  store i8* %123, i8** %13, align 8
  br label %124

124:                                              ; preds = %121, %120
  br label %125

125:                                              ; preds = %124, %97
  %126 = load i32, i32* %19, align 4
  %127 = load i8*, i8** %13, align 8
  %128 = load i64, i64* %9, align 8
  %129 = call %struct.disasm_line* @disasm_line__new(i32 %126, i8* %127, i64 %128)
  store %struct.disasm_line* %129, %struct.disasm_line** %11, align 8
  %130 = load i8*, i8** %12, align 8
  %131 = call i32 @free(i8* %130)
  %132 = load %struct.disasm_line*, %struct.disasm_line** %11, align 8
  %133 = icmp eq %struct.disasm_line* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  store i32 -1, i32* %5, align 4
  br label %142

135:                                              ; preds = %125
  %136 = load %struct.annotation*, %struct.annotation** %10, align 8
  %137 = getelementptr inbounds %struct.annotation, %struct.annotation* %136, i32 0, i32 0
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load %struct.disasm_line*, %struct.disasm_line** %11, align 8
  %141 = call i32 @disasm__add(i32* %139, %struct.disasm_line* %140)
  store i32 0, i32* %5, align 4
  br label %142

142:                                              ; preds = %135, %134, %31, %27
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local %struct.annotation* @symbol__annotation(%struct.symbol*) #1

declare dso_local i64 @getline(i8**, i64*, i32*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strtoull(i8*, i8**, i32) #1

declare dso_local i32 @map__rip_2objdump(%struct.map*, i32) #1

declare dso_local %struct.disasm_line* @disasm_line__new(i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @disasm__add(i32*, %struct.disasm_line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
