; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_compute_local_properties.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_compute_local_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_table = type { i32, i64, %struct.expr** }
%struct.expr = type { i32, i64, %struct.occr*, %struct.occr*, i32, %struct.expr* }
%struct.occr = type { i64, i32, %struct.occr*, i64 }

@last_basic_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, %struct.hash_table*)* @compute_local_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_local_properties(i32* %0, i32* %1, i32* %2, %struct.hash_table* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hash_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.expr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.occr*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.hash_table* %3, %struct.hash_table** %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %4
  %16 = load %struct.hash_table*, %struct.hash_table** %8, align 8
  %17 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @last_basic_block, align 4
  %23 = call i32 @sbitmap_vector_zero(i32* %21, i32 %22)
  br label %28

24:                                               ; preds = %15
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @last_basic_block, align 4
  %27 = call i32 @sbitmap_vector_ones(i32* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %20
  br label %29

29:                                               ; preds = %28, %4
  %30 = load i32*, i32** %6, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* @last_basic_block, align 4
  %35 = call i32 @sbitmap_vector_zero(i32* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i32*, i32** %7, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* @last_basic_block, align 4
  %42 = call i32 @sbitmap_vector_zero(i32* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %36
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %139, %43
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.hash_table*, %struct.hash_table** %8, align 8
  %47 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ult i32 %45, %48
  br i1 %49, label %50, label %142

50:                                               ; preds = %44
  %51 = load %struct.hash_table*, %struct.hash_table** %8, align 8
  %52 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %51, i32 0, i32 2
  %53 = load %struct.expr**, %struct.expr*** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.expr*, %struct.expr** %53, i64 %55
  %57 = load %struct.expr*, %struct.expr** %56, align 8
  store %struct.expr* %57, %struct.expr** %10, align 8
  br label %58

58:                                               ; preds = %134, %50
  %59 = load %struct.expr*, %struct.expr** %10, align 8
  %60 = icmp ne %struct.expr* %59, null
  br i1 %60, label %61, label %138

61:                                               ; preds = %58
  %62 = load %struct.expr*, %struct.expr** %10, align 8
  %63 = getelementptr inbounds %struct.expr, %struct.expr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %11, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = load %struct.expr*, %struct.expr** %10, align 8
  %69 = getelementptr inbounds %struct.expr, %struct.expr* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = load %struct.hash_table*, %struct.hash_table** %8, align 8
  %74 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @compute_transp(i32 %70, i32 %71, i32* %72, i64 %75)
  br label %77

77:                                               ; preds = %67, %61
  %78 = load i32*, i32** %7, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %104

80:                                               ; preds = %77
  %81 = load %struct.expr*, %struct.expr** %10, align 8
  %82 = getelementptr inbounds %struct.expr, %struct.expr* %81, i32 0, i32 3
  %83 = load %struct.occr*, %struct.occr** %82, align 8
  store %struct.occr* %83, %struct.occr** %12, align 8
  br label %84

84:                                               ; preds = %99, %80
  %85 = load %struct.occr*, %struct.occr** %12, align 8
  %86 = icmp ne %struct.occr* %85, null
  br i1 %86, label %87, label %103

87:                                               ; preds = %84
  %88 = load i32*, i32** %7, align 8
  %89 = load %struct.occr*, %struct.occr** %12, align 8
  %90 = getelementptr inbounds %struct.occr, %struct.occr* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @BLOCK_NUM(i32 %91)
  %93 = getelementptr inbounds i32, i32* %88, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @SET_BIT(i32 %94, i32 %95)
  %97 = load %struct.occr*, %struct.occr** %12, align 8
  %98 = getelementptr inbounds %struct.occr, %struct.occr* %97, i32 0, i32 3
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %87
  %100 = load %struct.occr*, %struct.occr** %12, align 8
  %101 = getelementptr inbounds %struct.occr, %struct.occr* %100, i32 0, i32 2
  %102 = load %struct.occr*, %struct.occr** %101, align 8
  store %struct.occr* %102, %struct.occr** %12, align 8
  br label %84

103:                                              ; preds = %84
  br label %104

104:                                              ; preds = %103, %77
  %105 = load i32*, i32** %6, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %131

107:                                              ; preds = %104
  %108 = load %struct.expr*, %struct.expr** %10, align 8
  %109 = getelementptr inbounds %struct.expr, %struct.expr* %108, i32 0, i32 2
  %110 = load %struct.occr*, %struct.occr** %109, align 8
  store %struct.occr* %110, %struct.occr** %12, align 8
  br label %111

111:                                              ; preds = %126, %107
  %112 = load %struct.occr*, %struct.occr** %12, align 8
  %113 = icmp ne %struct.occr* %112, null
  br i1 %113, label %114, label %130

114:                                              ; preds = %111
  %115 = load i32*, i32** %6, align 8
  %116 = load %struct.occr*, %struct.occr** %12, align 8
  %117 = getelementptr inbounds %struct.occr, %struct.occr* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @BLOCK_NUM(i32 %118)
  %120 = getelementptr inbounds i32, i32* %115, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @SET_BIT(i32 %121, i32 %122)
  %124 = load %struct.occr*, %struct.occr** %12, align 8
  %125 = getelementptr inbounds %struct.occr, %struct.occr* %124, i32 0, i32 0
  store i64 0, i64* %125, align 8
  br label %126

126:                                              ; preds = %114
  %127 = load %struct.occr*, %struct.occr** %12, align 8
  %128 = getelementptr inbounds %struct.occr, %struct.occr* %127, i32 0, i32 2
  %129 = load %struct.occr*, %struct.occr** %128, align 8
  store %struct.occr* %129, %struct.occr** %12, align 8
  br label %111

130:                                              ; preds = %111
  br label %131

131:                                              ; preds = %130, %104
  %132 = load %struct.expr*, %struct.expr** %10, align 8
  %133 = getelementptr inbounds %struct.expr, %struct.expr* %132, i32 0, i32 1
  store i64 0, i64* %133, align 8
  br label %134

134:                                              ; preds = %131
  %135 = load %struct.expr*, %struct.expr** %10, align 8
  %136 = getelementptr inbounds %struct.expr, %struct.expr* %135, i32 0, i32 5
  %137 = load %struct.expr*, %struct.expr** %136, align 8
  store %struct.expr* %137, %struct.expr** %10, align 8
  br label %58

138:                                              ; preds = %58
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %9, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %9, align 4
  br label %44

142:                                              ; preds = %44
  ret void
}

declare dso_local i32 @sbitmap_vector_zero(i32*, i32) #1

declare dso_local i32 @sbitmap_vector_ones(i32*, i32) #1

declare dso_local i32 @compute_transp(i32, i32, i32*, i64) #1

declare dso_local i32 @SET_BIT(i32, i32) #1

declare dso_local i64 @BLOCK_NUM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
