; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_data.c_data_copy_escape_string.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_data.c_data_copy_escape_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { i8*, i32 }

@empty_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i8*, i32 } @data_copy_escape_string(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.data, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.data, align 8
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @empty_data, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @strlen(i8* %11)
  %13 = add nsw i64 %12, 1
  %14 = call { i8*, i32 } @data_grow_for(i32 %10, i64 %13)
  %15 = bitcast %struct.data* %8 to { i8*, i32 }*
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %15, i32 0, i32 0
  %17 = extractvalue { i8*, i32 } %14, 0
  store i8* %17, i8** %16, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %15, i32 0, i32 1
  %19 = extractvalue { i8*, i32 } %14, 1
  store i32 %19, i32* %18, align 8
  %20 = bitcast %struct.data* %3 to i8*
  %21 = bitcast %struct.data* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false)
  %22 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %7, align 8
  br label %24

24:                                               ; preds = %134, %38, %2
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %135

28:                                               ; preds = %24
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %9, align 1
  %35 = load i8, i8* %9, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 92
  br i1 %37, label %38, label %46

38:                                               ; preds = %28
  %39 = load i8, i8* %9, align 1
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %40, i64 %44
  store i8 %39, i8* %45, align 1
  br label %24

46:                                               ; preds = %28
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = load i8, i8* %51, align 1
  store i8 %52, i8* %9, align 1
  %53 = load i8, i8* %9, align 1
  %54 = call i32 @assert(i8 signext %53)
  %55 = load i8, i8* %9, align 1
  %56 = sext i8 %55 to i32
  switch i32 %56, label %126 [
    i32 97, label %57
    i32 98, label %64
    i32 116, label %71
    i32 110, label %78
    i32 118, label %85
    i32 102, label %92
    i32 114, label %99
    i32 48, label %106
    i32 49, label %106
    i32 50, label %106
    i32 51, label %106
    i32 52, label %106
    i32 53, label %106
    i32 54, label %106
    i32 55, label %106
    i32 120, label %117
  ]

57:                                               ; preds = %46
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  store i8 7, i8* %63, align 1
  br label %134

64:                                               ; preds = %46
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8, i8* %65, i64 %69
  store i8 8, i8* %70, align 1
  br label %134

71:                                               ; preds = %46
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %72, i64 %76
  store i8 9, i8* %77, align 1
  br label %134

78:                                               ; preds = %46
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %79, i64 %83
  store i8 10, i8* %84, align 1
  br label %134

85:                                               ; preds = %46
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %86, i64 %90
  store i8 11, i8* %91, align 1
  br label %134

92:                                               ; preds = %46
  %93 = load i8*, i8** %7, align 8
  %94 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i8, i8* %93, i64 %97
  store i8 12, i8* %98, align 1
  br label %134

99:                                               ; preds = %46
  %100 = load i8*, i8** %7, align 8
  %101 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8, i8* %100, i64 %104
  store i8 13, i8* %105, align 1
  br label %134

106:                                              ; preds = %46, %46, %46, %46, %46, %46, %46, %46
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %6, align 4
  %109 = load i8*, i8** %4, align 8
  %110 = call signext i8 @get_oct_char(i8* %109, i32* %6)
  %111 = load i8*, i8** %7, align 8
  %112 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %111, i64 %115
  store i8 %110, i8* %116, align 1
  br label %134

117:                                              ; preds = %46
  %118 = load i8*, i8** %4, align 8
  %119 = call signext i8 @get_hex_char(i8* %118, i32* %6)
  %120 = load i8*, i8** %7, align 8
  %121 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i8, i8* %120, i64 %124
  store i8 %119, i8* %125, align 1
  br label %134

126:                                              ; preds = %46
  %127 = load i8, i8* %9, align 1
  %128 = load i8*, i8** %7, align 8
  %129 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i8, i8* %128, i64 %132
  store i8 %127, i8* %133, align 1
  br label %134

134:                                              ; preds = %126, %117, %106, %99, %92, %85, %78, %71, %64, %57
  br label %24

135:                                              ; preds = %24
  %136 = load i8*, i8** %7, align 8
  %137 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %136, i64 %140
  store i8 0, i8* %141, align 1
  %142 = bitcast %struct.data* %3 to { i8*, i32 }*
  %143 = load { i8*, i32 }, { i8*, i32 }* %142, align 8
  ret { i8*, i32 } %143
}

declare dso_local { i8*, i32 } @data_grow_for(i32, i64) #1

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @assert(i8 signext) #1

declare dso_local signext i8 @get_oct_char(i8*, i32*) #1

declare dso_local signext i8 @get_hex_char(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
