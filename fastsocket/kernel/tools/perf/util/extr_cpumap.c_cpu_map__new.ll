; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_cpumap.c_cpu_map__new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_cpumap.c_cpu_map__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_map = type { i32 }

@INT_MAX = common dso_local global i64 0, align 8
@MAX_NR_CPUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cpu_map* @cpu_map__new(i8* %0) #0 {
  %2 = alloca %struct.cpu_map*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cpu_map*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.cpu_map* null, %struct.cpu_map** %4, align 8
  store i64 0, i64* %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = call %struct.cpu_map* (...) @cpu_map__read_all_cpu_map()
  store %struct.cpu_map* %16, %struct.cpu_map** %2, align 8
  br label %163

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  %19 = load i8, i8* %18, align 1
  %20 = call i64 @isdigit(i8 signext %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %161

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %146, %23
  %25 = load i8*, i8** %3, align 8
  %26 = load i8, i8* %25, align 1
  %27 = call i64 @isdigit(i8 signext %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %148

29:                                               ; preds = %24
  store i8* null, i8** %7, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = call i64 @strtoul(i8* %30, i8** %7, i32 0)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @INT_MAX, align 8
  %34 = icmp uge i64 %32, %33
  br i1 %34, label %50, label %35

35:                                               ; preds = %29
  %36 = load i8*, i8** %7, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load i8*, i8** %7, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 44
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i8*, i8** %7, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 45
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %29
  br label %158

51:                                               ; preds = %45, %40, %35
  %52 = load i8*, i8** %7, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 45
  br i1 %55, label %56, label %81

56:                                               ; preds = %51
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %7, align 8
  store i8* %58, i8** %3, align 8
  store i8* null, i8** %7, align 8
  %59 = load i8*, i8** %3, align 8
  %60 = call i64 @strtoul(i8* %59, i8** %7, i32 0)
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @INT_MAX, align 8
  %63 = icmp uge i64 %61, %62
  br i1 %63, label %74, label %64

64:                                               ; preds = %56
  %65 = load i8*, i8** %7, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load i8*, i8** %7, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 44
  br i1 %73, label %74, label %75

74:                                               ; preds = %69, %56
  br label %158

75:                                               ; preds = %69, %64
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* %5, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %158

80:                                               ; preds = %75
  br label %83

81:                                               ; preds = %51
  %82 = load i64, i64* %5, align 8
  store i64 %82, i64* %6, align 8
  br label %83

83:                                               ; preds = %81, %80
  br label %84

84:                                               ; preds = %136, %83
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* %6, align 8
  %87 = icmp ule i64 %85, %86
  br i1 %87, label %88, label %139

88:                                               ; preds = %84
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %104, %88
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %89
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i64, i64* %5, align 8
  %100 = trunc i64 %99 to i32
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  br label %158

103:                                              ; preds = %93
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %89

107:                                              ; preds = %89
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %128

111:                                              ; preds = %107
  %112 = load i64, i64* @MAX_NR_CPUS, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %12, align 4
  %117 = load i32*, i32** %10, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = mul i64 %119, 4
  %121 = trunc i64 %120 to i32
  %122 = call i32* @realloc(i32* %117, i32 %121)
  store i32* %122, i32** %11, align 8
  %123 = load i32*, i32** %11, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %111
  br label %158

126:                                              ; preds = %111
  %127 = load i32*, i32** %11, align 8
  store i32* %127, i32** %10, align 8
  br label %128

128:                                              ; preds = %126, %107
  %129 = load i64, i64* %5, align 8
  %130 = trunc i64 %129 to i32
  %131 = load i32*, i32** %10, align 8
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  store i32 %130, i32* %135, align 4
  br label %136

136:                                              ; preds = %128
  %137 = load i64, i64* %5, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %5, align 8
  br label %84

139:                                              ; preds = %84
  %140 = load i8*, i8** %7, align 8
  %141 = load i8, i8* %140, align 1
  %142 = icmp ne i8 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load i8*, i8** %7, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %7, align 8
  br label %146

146:                                              ; preds = %143, %139
  %147 = load i8*, i8** %7, align 8
  store i8* %147, i8** %3, align 8
  br label %24

148:                                              ; preds = %24
  %149 = load i32, i32* %9, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load i32, i32* %9, align 4
  %153 = load i32*, i32** %10, align 8
  %154 = call %struct.cpu_map* @cpu_map__trim_new(i32 %152, i32* %153)
  store %struct.cpu_map* %154, %struct.cpu_map** %4, align 8
  br label %157

155:                                              ; preds = %148
  %156 = call %struct.cpu_map* (...) @cpu_map__default_new()
  store %struct.cpu_map* %156, %struct.cpu_map** %4, align 8
  br label %157

157:                                              ; preds = %155, %151
  br label %158

158:                                              ; preds = %157, %125, %102, %79, %74, %50
  %159 = load i32*, i32** %10, align 8
  %160 = call i32 @free(i32* %159)
  br label %161

161:                                              ; preds = %158, %22
  %162 = load %struct.cpu_map*, %struct.cpu_map** %4, align 8
  store %struct.cpu_map* %162, %struct.cpu_map** %2, align 8
  br label %163

163:                                              ; preds = %161, %15
  %164 = load %struct.cpu_map*, %struct.cpu_map** %2, align 8
  ret %struct.cpu_map* %164
}

declare dso_local %struct.cpu_map* @cpu_map__read_all_cpu_map(...) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32* @realloc(i32*, i32) #1

declare dso_local %struct.cpu_map* @cpu_map__trim_new(i32, i32*) #1

declare dso_local %struct.cpu_map* @cpu_map__default_new(...) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
