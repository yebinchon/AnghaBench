; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c_read_event_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c_read_event_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evsel = type { i64, i32, i64, i64*, i32, i32 }
%struct.perf_header = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.perf_evsel* (%struct.perf_header*, i32)* @read_event_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.perf_evsel* @read_event_desc(%struct.perf_header* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_header*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_evsel*, align 8
  %6 = alloca %struct.perf_evsel*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.perf_header* %0, %struct.perf_header** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.perf_evsel* null, %struct.perf_evsel** %6, align 8
  store i8* null, i8** %8, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @read(i32 %16, i64* %9, i32 8)
  store i64 %17, i64* %14, align 8
  %18 = load i64, i64* %14, align 8
  %19 = icmp ne i64 %18, 8
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %177

21:                                               ; preds = %2
  %22 = load %struct.perf_header*, %struct.perf_header** %3, align 8
  %23 = getelementptr inbounds %struct.perf_header, %struct.perf_header* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i64, i64* %9, align 8
  %28 = call i64 @bswap_32(i64 %27)
  store i64 %28, i64* %9, align 8
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @read(i32 %30, i64* %10, i32 8)
  store i64 %31, i64* %14, align 8
  %32 = load i64, i64* %14, align 8
  %33 = icmp ne i64 %32, 8
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %177

35:                                               ; preds = %29
  %36 = load %struct.perf_header*, %struct.perf_header** %3, align 8
  %37 = getelementptr inbounds %struct.perf_header, %struct.perf_header* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i64, i64* %10, align 8
  %42 = call i64 @bswap_32(i64 %41)
  store i64 %42, i64* %10, align 8
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i64, i64* %10, align 8
  %45 = call i8* @malloc(i64 %44)
  store i8* %45, i8** %8, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %177

49:                                               ; preds = %43
  %50 = load i64, i64* %9, align 8
  %51 = add i64 %50, 1
  %52 = call i8* @calloc(i64 %51, i32 40)
  %53 = bitcast i8* %52 to %struct.perf_evsel*
  store %struct.perf_evsel* %53, %struct.perf_evsel** %6, align 8
  %54 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %55 = icmp ne %struct.perf_evsel* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  br label %177

57:                                               ; preds = %49
  store i64 4, i64* %15, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %15, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i64, i64* %10, align 8
  store i64 %62, i64* %15, align 8
  br label %63

63:                                               ; preds = %61, %57
  store i64 0, i64* %12, align 8
  %64 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  store %struct.perf_evsel* %64, %struct.perf_evsel** %5, align 8
  br label %65

65:                                               ; preds = %163, %63
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* %9, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %168

69:                                               ; preds = %65
  %70 = load i64, i64* %12, align 8
  %71 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %72 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load i32, i32* %4, align 4
  %74 = load i8*, i8** %8, align 8
  %75 = bitcast i8* %74 to i64*
  %76 = load i64, i64* %10, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i64 @read(i32 %73, i64* %75, i32 %77)
  store i64 %78, i64* %14, align 8
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* %10, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %69
  br label %177

83:                                               ; preds = %69
  %84 = load %struct.perf_header*, %struct.perf_header** %3, align 8
  %85 = getelementptr inbounds %struct.perf_header, %struct.perf_header* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i8*, i8** %8, align 8
  %90 = call i32 @perf_event__attr_swap(i8* %89)
  br label %91

91:                                               ; preds = %88, %83
  %92 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %93 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %92, i32 0, i32 5
  %94 = load i8*, i8** %8, align 8
  %95 = load i64, i64* %15, align 8
  %96 = call i32 @memcpy(i32* %93, i8* %94, i64 %95)
  %97 = load i32, i32* %4, align 4
  %98 = call i64 @read(i32 %97, i64* %11, i32 8)
  store i64 %98, i64* %14, align 8
  %99 = load i64, i64* %14, align 8
  %100 = icmp ne i64 %99, 8
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  br label %177

102:                                              ; preds = %91
  %103 = load %struct.perf_header*, %struct.perf_header** %3, align 8
  %104 = getelementptr inbounds %struct.perf_header, %struct.perf_header* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load i64, i64* %11, align 8
  %109 = call i64 @bswap_32(i64 %108)
  store i64 %109, i64* %11, align 8
  %110 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %111 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %110, i32 0, i32 1
  store i32 1, i32* %111, align 8
  br label %112

112:                                              ; preds = %107, %102
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.perf_header*, %struct.perf_header** %3, align 8
  %115 = call i32 @do_read_string(i32 %113, %struct.perf_header* %114)
  %116 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %117 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 8
  %118 = load i64, i64* %11, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %112
  br label %163

121:                                              ; preds = %112
  %122 = load i64, i64* %11, align 8
  %123 = call i8* @calloc(i64 %122, i32 8)
  %124 = bitcast i8* %123 to i64*
  store i64* %124, i64** %7, align 8
  %125 = load i64*, i64** %7, align 8
  %126 = icmp ne i64* %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %121
  br label %177

128:                                              ; preds = %121
  %129 = load i64, i64* %11, align 8
  %130 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %131 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %130, i32 0, i32 2
  store i64 %129, i64* %131, align 8
  %132 = load i64*, i64** %7, align 8
  %133 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %134 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %133, i32 0, i32 3
  store i64* %132, i64** %134, align 8
  store i64 0, i64* %13, align 8
  br label %135

135:                                              ; preds = %159, %128
  %136 = load i64, i64* %13, align 8
  %137 = load i64, i64* %11, align 8
  %138 = icmp ult i64 %136, %137
  br i1 %138, label %139, label %162

139:                                              ; preds = %135
  %140 = load i32, i32* %4, align 4
  %141 = load i64*, i64** %7, align 8
  %142 = call i64 @read(i32 %140, i64* %141, i32 8)
  store i64 %142, i64* %14, align 8
  %143 = load i64, i64* %14, align 8
  %144 = icmp ne i64 %143, 8
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %177

146:                                              ; preds = %139
  %147 = load %struct.perf_header*, %struct.perf_header** %3, align 8
  %148 = getelementptr inbounds %struct.perf_header, %struct.perf_header* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load i64*, i64** %7, align 8
  %153 = load i64, i64* %152, align 8
  %154 = call i64 @bswap_64(i64 %153)
  %155 = load i64*, i64** %7, align 8
  store i64 %154, i64* %155, align 8
  br label %156

156:                                              ; preds = %151, %146
  %157 = load i64*, i64** %7, align 8
  %158 = getelementptr inbounds i64, i64* %157, i32 1
  store i64* %158, i64** %7, align 8
  br label %159

159:                                              ; preds = %156
  %160 = load i64, i64* %13, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %13, align 8
  br label %135

162:                                              ; preds = %135
  br label %163

163:                                              ; preds = %162, %120
  %164 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %165 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %164, i32 1
  store %struct.perf_evsel* %165, %struct.perf_evsel** %5, align 8
  %166 = load i64, i64* %12, align 8
  %167 = add i64 %166, 1
  store i64 %167, i64* %12, align 8
  br label %65

168:                                              ; preds = %65
  br label %169

169:                                              ; preds = %183, %168
  %170 = load i8*, i8** %8, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i8*, i8** %8, align 8
  %174 = call i32 @free(i8* %173)
  br label %175

175:                                              ; preds = %172, %169
  %176 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  ret %struct.perf_evsel* %176

177:                                              ; preds = %145, %127, %101, %82, %56, %48, %34, %20
  %178 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %179 = icmp ne %struct.perf_evsel* %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %182 = call i32 @free_event_desc(%struct.perf_evsel* %181)
  br label %183

183:                                              ; preds = %180, %177
  store %struct.perf_evsel* null, %struct.perf_evsel** %6, align 8
  br label %169
}

declare dso_local i64 @read(i32, i64*, i32) #1

declare dso_local i64 @bswap_32(i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i8* @calloc(i64, i32) #1

declare dso_local i32 @perf_event__attr_swap(i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @do_read_string(i32, %struct.perf_header*) #1

declare dso_local i64 @bswap_64(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @free_event_desc(%struct.perf_evsel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
