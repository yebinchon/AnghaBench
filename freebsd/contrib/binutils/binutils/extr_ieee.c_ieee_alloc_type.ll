; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_alloc_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_alloc_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ieee_type* }
%struct.ieee_type = type { i32*, i8** }

@DEBUG_TYPE_NULL = common dso_local global i8* null, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ieee_info*, i32, i64)* @ieee_alloc_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ieee_alloc_type(%struct.ieee_info* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ieee_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee_type*, align 8
  %10 = alloca %struct.ieee_type*, align 8
  store %struct.ieee_info* %0, %struct.ieee_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %13 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp uge i32 %11, %15
  br i1 %16, label %17, label %101

17:                                               ; preds = %3
  %18 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %19 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 4, i32* %8, align 4
  br label %25

25:                                               ; preds = %24, %17
  br label %26

26:                                               ; preds = %30, %25
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp uge i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = mul i32 %31, 2
  store i32 %32, i32* %8, align 4
  br label %26

33:                                               ; preds = %26
  %34 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %35 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load %struct.ieee_type*, %struct.ieee_type** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = mul i64 %39, 16
  %41 = trunc i64 %40 to i32
  %42 = call i64 @xrealloc(%struct.ieee_type* %37, i32 %41)
  %43 = inttoptr i64 %42 to %struct.ieee_type*
  %44 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %45 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store %struct.ieee_type* %43, %struct.ieee_type** %46, align 8
  %47 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %48 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load %struct.ieee_type*, %struct.ieee_type** %49, align 8
  %51 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %52 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.ieee_type, %struct.ieee_type* %50, i64 %55
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %59 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub i32 %57, %61
  %63 = zext i32 %62 to i64
  %64 = mul i64 %63, 16
  %65 = trunc i64 %64 to i32
  %66 = call i32 @memset(%struct.ieee_type* %56, i32 0, i32 %65)
  %67 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %68 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load %struct.ieee_type*, %struct.ieee_type** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.ieee_type, %struct.ieee_type* %70, i64 %72
  store %struct.ieee_type* %73, %struct.ieee_type** %10, align 8
  %74 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %75 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load %struct.ieee_type*, %struct.ieee_type** %76, align 8
  %78 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %79 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.ieee_type, %struct.ieee_type* %77, i64 %82
  store %struct.ieee_type* %83, %struct.ieee_type** %9, align 8
  br label %84

84:                                               ; preds = %93, %33
  %85 = load %struct.ieee_type*, %struct.ieee_type** %9, align 8
  %86 = load %struct.ieee_type*, %struct.ieee_type** %10, align 8
  %87 = icmp ult %struct.ieee_type* %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load i8*, i8** @DEBUG_TYPE_NULL, align 8
  %90 = bitcast i8* %89 to i32*
  %91 = load %struct.ieee_type*, %struct.ieee_type** %9, align 8
  %92 = getelementptr inbounds %struct.ieee_type, %struct.ieee_type* %91, i32 0, i32 0
  store i32* %90, i32** %92, align 8
  br label %93

93:                                               ; preds = %88
  %94 = load %struct.ieee_type*, %struct.ieee_type** %9, align 8
  %95 = getelementptr inbounds %struct.ieee_type, %struct.ieee_type* %94, i32 1
  store %struct.ieee_type* %95, %struct.ieee_type** %9, align 8
  br label %84

96:                                               ; preds = %84
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %99 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 8
  br label %101

101:                                              ; preds = %96, %3
  %102 = load i64, i64* %7, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %142

104:                                              ; preds = %101
  %105 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %106 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load %struct.ieee_type*, %struct.ieee_type** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.ieee_type, %struct.ieee_type* %108, i64 %110
  store %struct.ieee_type* %111, %struct.ieee_type** %9, align 8
  %112 = load %struct.ieee_type*, %struct.ieee_type** %9, align 8
  %113 = getelementptr inbounds %struct.ieee_type, %struct.ieee_type* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %141

116:                                              ; preds = %104
  %117 = call i64 @xmalloc(i32 8)
  %118 = inttoptr i64 %117 to i8**
  %119 = load %struct.ieee_type*, %struct.ieee_type** %9, align 8
  %120 = getelementptr inbounds %struct.ieee_type, %struct.ieee_type* %119, i32 0, i32 1
  store i8** %118, i8*** %120, align 8
  %121 = load i8*, i8** @DEBUG_TYPE_NULL, align 8
  %122 = load %struct.ieee_type*, %struct.ieee_type** %9, align 8
  %123 = getelementptr inbounds %struct.ieee_type, %struct.ieee_type* %122, i32 0, i32 1
  %124 = load i8**, i8*** %123, align 8
  store i8* %121, i8** %124, align 8
  %125 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %126 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.ieee_type*, %struct.ieee_type** %9, align 8
  %129 = getelementptr inbounds %struct.ieee_type, %struct.ieee_type* %128, i32 0, i32 1
  %130 = load i8**, i8*** %129, align 8
  %131 = call i32* @debug_make_indirect_type(i32 %127, i8** %130, i8* null)
  %132 = load %struct.ieee_type*, %struct.ieee_type** %9, align 8
  %133 = getelementptr inbounds %struct.ieee_type, %struct.ieee_type* %132, i32 0, i32 0
  store i32* %131, i32** %133, align 8
  %134 = load %struct.ieee_type*, %struct.ieee_type** %9, align 8
  %135 = getelementptr inbounds %struct.ieee_type, %struct.ieee_type* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %116
  %139 = load i64, i64* @FALSE, align 8
  store i64 %139, i64* %4, align 8
  br label %144

140:                                              ; preds = %116
  br label %141

141:                                              ; preds = %140, %104
  br label %142

142:                                              ; preds = %141, %101
  %143 = load i64, i64* @TRUE, align 8
  store i64 %143, i64* %4, align 8
  br label %144

144:                                              ; preds = %142, %138
  %145 = load i64, i64* %4, align 8
  ret i64 %145
}

declare dso_local i64 @xrealloc(%struct.ieee_type*, i32) #1

declare dso_local i32 @memset(%struct.ieee_type*, i32, i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32* @debug_make_indirect_type(i32, i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
