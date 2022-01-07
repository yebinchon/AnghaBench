; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_find_line_in_linetable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_find_line_in_linetable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linetable = type { i32, %struct.linetable_entry* }
%struct.linetable_entry = type { i64, i32 }
%struct.symbol = type { i32 }

@LOC_BLOCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.linetable*, i32, %struct.symbol**, i32, i32*)* @find_line_in_linetable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_line_in_linetable(%struct.linetable* %0, i32 %1, %struct.symbol** %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.linetable*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.symbol**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.linetable_entry*, align 8
  store %struct.linetable* %0, %struct.linetable** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.symbol** %2, %struct.symbol*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load %struct.linetable*, %struct.linetable** %7, align 8
  %22 = icmp eq %struct.linetable* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %5
  store i32 -1, i32* %6, align 4
  br label %125

24:                                               ; preds = %20
  %25 = load %struct.linetable*, %struct.linetable** %7, align 8
  %26 = getelementptr inbounds %struct.linetable, %struct.linetable* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %28

28:                                               ; preds = %119, %24
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %122

32:                                               ; preds = %28
  %33 = load %struct.linetable*, %struct.linetable** %7, align 8
  %34 = getelementptr inbounds %struct.linetable, %struct.linetable* %33, i32 0, i32 1
  %35 = load %struct.linetable_entry*, %struct.linetable_entry** %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %35, i64 %37
  store %struct.linetable_entry* %38, %struct.linetable_entry** %17, align 8
  store i32 0, i32* %16, align 4
  br label %39

39:                                               ; preds = %85, %32
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %88

43:                                               ; preds = %39
  %44 = load %struct.symbol**, %struct.symbol*** %9, align 8
  %45 = load i32, i32* %16, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.symbol*, %struct.symbol** %44, i64 %46
  %48 = load %struct.symbol*, %struct.symbol** %47, align 8
  %49 = icmp ne %struct.symbol* %48, null
  br i1 %49, label %50, label %84

50:                                               ; preds = %43
  %51 = load %struct.symbol**, %struct.symbol*** %9, align 8
  %52 = load i32, i32* %16, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.symbol*, %struct.symbol** %51, i64 %53
  %55 = load %struct.symbol*, %struct.symbol** %54, align 8
  %56 = call i64 @SYMBOL_CLASS(%struct.symbol* %55)
  %57 = load i64, i64* @LOC_BLOCK, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %84

59:                                               ; preds = %50
  %60 = load %struct.linetable_entry*, %struct.linetable_entry** %17, align 8
  %61 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.symbol**, %struct.symbol*** %9, align 8
  %64 = load i32, i32* %16, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.symbol*, %struct.symbol** %63, i64 %65
  %67 = load %struct.symbol*, %struct.symbol** %66, align 8
  %68 = call i32 @SYMBOL_BLOCK_VALUE(%struct.symbol* %67)
  %69 = call i64 @BLOCK_START(i32 %68)
  %70 = icmp sge i64 %62, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %59
  %72 = load %struct.linetable_entry*, %struct.linetable_entry** %17, align 8
  %73 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.symbol**, %struct.symbol*** %9, align 8
  %76 = load i32, i32* %16, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.symbol*, %struct.symbol** %75, i64 %77
  %79 = load %struct.symbol*, %struct.symbol** %78, align 8
  %80 = call i32 @SYMBOL_BLOCK_VALUE(%struct.symbol* %79)
  %81 = call i64 @BLOCK_END(i32 %80)
  %82 = icmp slt i64 %74, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  br label %89

84:                                               ; preds = %71, %59, %50, %43
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %16, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %16, align 4
  br label %39

88:                                               ; preds = %39
  br label %119

89:                                               ; preds = %83
  %90 = load %struct.linetable_entry*, %struct.linetable_entry** %17, align 8
  %91 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i32*, i32** %11, align 8
  store i32 1, i32* %96, align 4
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %6, align 4
  br label %125

98:                                               ; preds = %89
  %99 = load %struct.linetable_entry*, %struct.linetable_entry** %17, align 8
  %100 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %118

104:                                              ; preds = %98
  %105 = load i32, i32* %15, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = load %struct.linetable_entry*, %struct.linetable_entry** %17, align 8
  %109 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %15, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %107, %104
  %114 = load %struct.linetable_entry*, %struct.linetable_entry** %17, align 8
  %115 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %12, align 4
  store i32 %117, i32* %14, align 4
  br label %118

118:                                              ; preds = %113, %107, %98
  br label %119

119:                                              ; preds = %118, %88
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %12, align 4
  br label %28

122:                                              ; preds = %28
  %123 = load i32*, i32** %11, align 8
  store i32 0, i32* %123, align 4
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %122, %95, %23
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i64 @SYMBOL_CLASS(%struct.symbol*) #1

declare dso_local i64 @BLOCK_START(i32) #1

declare dso_local i32 @SYMBOL_BLOCK_VALUE(%struct.symbol*) #1

declare dso_local i64 @BLOCK_END(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
