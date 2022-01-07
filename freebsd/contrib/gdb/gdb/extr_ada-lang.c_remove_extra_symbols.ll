; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_remove_extra_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_remove_extra_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.block = type { i32 }

@LOC_STATIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.symbol**, %struct.block**, i32)* @remove_extra_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_extra_symbols(%struct.symbol** %0, %struct.block** %1, i32 %2) #0 {
  %4 = alloca %struct.symbol**, align 8
  %5 = alloca %struct.block**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.symbol** %0, %struct.symbol*** %4, align 8
  store %struct.block** %1, %struct.block*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %142, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %143

14:                                               ; preds = %10
  %15 = load %struct.symbol**, %struct.symbol*** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.symbol*, %struct.symbol** %15, i64 %17
  %19 = load %struct.symbol*, %struct.symbol** %18, align 8
  %20 = call i32* @DEPRECATED_SYMBOL_NAME(%struct.symbol* %19)
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %139

22:                                               ; preds = %14
  %23 = load %struct.symbol**, %struct.symbol*** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.symbol*, %struct.symbol** %23, i64 %25
  %27 = load %struct.symbol*, %struct.symbol** %26, align 8
  %28 = call i64 @SYMBOL_CLASS(%struct.symbol* %27)
  %29 = load i64, i64* @LOC_STATIC, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %139

31:                                               ; preds = %22
  %32 = load %struct.symbol**, %struct.symbol*** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.symbol*, %struct.symbol** %32, i64 %34
  %36 = load %struct.symbol*, %struct.symbol** %35, align 8
  %37 = call i32 @SYMBOL_TYPE(%struct.symbol* %36)
  %38 = call i64 @is_nondebugging_type(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %139

40:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %135, %40
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %138

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %134

49:                                               ; preds = %45
  %50 = load %struct.symbol**, %struct.symbol*** %4, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.symbol*, %struct.symbol** %50, i64 %52
  %54 = load %struct.symbol*, %struct.symbol** %53, align 8
  %55 = call i32* @DEPRECATED_SYMBOL_NAME(%struct.symbol* %54)
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %134

57:                                               ; preds = %49
  %58 = load %struct.symbol**, %struct.symbol*** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.symbol*, %struct.symbol** %58, i64 %60
  %62 = load %struct.symbol*, %struct.symbol** %61, align 8
  %63 = call i32* @DEPRECATED_SYMBOL_NAME(%struct.symbol* %62)
  %64 = load %struct.symbol**, %struct.symbol*** %4, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.symbol*, %struct.symbol** %64, i64 %66
  %68 = load %struct.symbol*, %struct.symbol** %67, align 8
  %69 = call i32* @DEPRECATED_SYMBOL_NAME(%struct.symbol* %68)
  %70 = call i64 @DEPRECATED_STREQ(i32* %63, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %134

72:                                               ; preds = %57
  %73 = load %struct.symbol**, %struct.symbol*** %4, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.symbol*, %struct.symbol** %73, i64 %75
  %77 = load %struct.symbol*, %struct.symbol** %76, align 8
  %78 = call i64 @SYMBOL_CLASS(%struct.symbol* %77)
  %79 = load %struct.symbol**, %struct.symbol*** %4, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.symbol*, %struct.symbol** %79, i64 %81
  %83 = load %struct.symbol*, %struct.symbol** %82, align 8
  %84 = call i64 @SYMBOL_CLASS(%struct.symbol* %83)
  %85 = icmp eq i64 %78, %84
  br i1 %85, label %86, label %134

86:                                               ; preds = %72
  %87 = load %struct.symbol**, %struct.symbol*** %4, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.symbol*, %struct.symbol** %87, i64 %89
  %91 = load %struct.symbol*, %struct.symbol** %90, align 8
  %92 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.symbol* %91)
  %93 = load %struct.symbol**, %struct.symbol*** %4, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.symbol*, %struct.symbol** %93, i64 %95
  %97 = load %struct.symbol*, %struct.symbol** %96, align 8
  %98 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.symbol* %97)
  %99 = icmp eq i64 %92, %98
  br i1 %99, label %100, label %134

100:                                              ; preds = %86
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %128, %100
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %131

107:                                              ; preds = %103
  %108 = load %struct.symbol**, %struct.symbol*** %4, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.symbol*, %struct.symbol** %108, i64 %110
  %112 = load %struct.symbol*, %struct.symbol** %111, align 8
  %113 = load %struct.symbol**, %struct.symbol*** %4, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.symbol*, %struct.symbol** %113, i64 %116
  store %struct.symbol* %112, %struct.symbol** %117, align 8
  %118 = load %struct.block**, %struct.block*** %5, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.block*, %struct.block** %118, i64 %120
  %122 = load %struct.block*, %struct.block** %121, align 8
  %123 = load %struct.block**, %struct.block*** %5, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sub nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.block*, %struct.block** %123, i64 %126
  store %struct.block* %122, %struct.block** %127, align 8
  br label %128

128:                                              ; preds = %107
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %9, align 4
  br label %103

131:                                              ; preds = %103
  %132 = load i32, i32* %6, align 4
  %133 = sub nsw i32 %132, 1
  store i32 %133, i32* %6, align 4
  br label %142

134:                                              ; preds = %86, %72, %57, %49, %45
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %8, align 4
  br label %41

138:                                              ; preds = %41
  br label %139

139:                                              ; preds = %138, %31, %22, %14
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %139, %131
  br label %10

143:                                              ; preds = %10
  %144 = load i32, i32* %6, align 4
  ret i32 %144
}

declare dso_local i32* @DEPRECATED_SYMBOL_NAME(%struct.symbol*) #1

declare dso_local i64 @SYMBOL_CLASS(%struct.symbol*) #1

declare dso_local i64 @is_nondebugging_type(i32) #1

declare dso_local i32 @SYMBOL_TYPE(%struct.symbol*) #1

declare dso_local i64 @DEPRECATED_STREQ(i32*, i32*) #1

declare dso_local i64 @SYMBOL_VALUE_ADDRESS(%struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
