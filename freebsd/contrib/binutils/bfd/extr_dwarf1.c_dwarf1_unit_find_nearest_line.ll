; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf1.c_dwarf1_unit_find_nearest_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf1.c_dwarf1_unit_find_nearest_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwarf1_debug = type { i32 }
%struct.dwarf1_unit = type { i64, i64, i64, i8*, %struct.dwarf1_func*, %struct.TYPE_2__*, i64 }
%struct.dwarf1_func = type { i64, i64, i8*, %struct.dwarf1_func* }
%struct.TYPE_2__ = type { i64, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwarf1_debug*, %struct.dwarf1_unit*, i64, i8**, i8**, i32*)* @dwarf1_unit_find_nearest_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwarf1_unit_find_nearest_line(%struct.dwarf1_debug* %0, %struct.dwarf1_unit* %1, i64 %2, i8** %3, i8** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dwarf1_debug*, align 8
  %9 = alloca %struct.dwarf1_unit*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.dwarf1_func*, align 8
  store %struct.dwarf1_debug* %0, %struct.dwarf1_debug** %8, align 8
  store %struct.dwarf1_unit* %1, %struct.dwarf1_unit** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8** %3, i8*** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %15, align 4
  %20 = load %struct.dwarf1_unit*, %struct.dwarf1_unit** %9, align 8
  %21 = getelementptr inbounds %struct.dwarf1_unit, %struct.dwarf1_unit* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp ule i64 %22, %23
  br i1 %24, label %25, label %140

25:                                               ; preds = %6
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.dwarf1_unit*, %struct.dwarf1_unit** %9, align 8
  %28 = getelementptr inbounds %struct.dwarf1_unit, %struct.dwarf1_unit* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %140

31:                                               ; preds = %25
  %32 = load %struct.dwarf1_unit*, %struct.dwarf1_unit** %9, align 8
  %33 = getelementptr inbounds %struct.dwarf1_unit, %struct.dwarf1_unit* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %139

36:                                               ; preds = %31
  %37 = load %struct.dwarf1_unit*, %struct.dwarf1_unit** %9, align 8
  %38 = getelementptr inbounds %struct.dwarf1_unit, %struct.dwarf1_unit* %37, i32 0, i32 5
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = icmp ne %struct.TYPE_2__* %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %36
  %42 = load %struct.dwarf1_debug*, %struct.dwarf1_debug** %8, align 8
  %43 = load %struct.dwarf1_unit*, %struct.dwarf1_unit** %9, align 8
  %44 = call i32 @parse_line_table(%struct.dwarf1_debug* %42, %struct.dwarf1_unit* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %7, align 4
  br label %149

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %36
  %50 = load %struct.dwarf1_unit*, %struct.dwarf1_unit** %9, align 8
  %51 = getelementptr inbounds %struct.dwarf1_unit, %struct.dwarf1_unit* %50, i32 0, i32 4
  %52 = load %struct.dwarf1_func*, %struct.dwarf1_func** %51, align 8
  %53 = icmp ne %struct.dwarf1_func* %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %49
  %55 = load %struct.dwarf1_debug*, %struct.dwarf1_debug** %8, align 8
  %56 = load %struct.dwarf1_unit*, %struct.dwarf1_unit** %9, align 8
  %57 = call i32 @parse_functions_in_unit(%struct.dwarf1_debug* %55, %struct.dwarf1_unit* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %7, align 4
  br label %149

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %49
  store i64 0, i64* %16, align 8
  br label %63

63:                                               ; preds = %105, %62
  %64 = load i64, i64* %16, align 8
  %65 = load %struct.dwarf1_unit*, %struct.dwarf1_unit** %9, align 8
  %66 = getelementptr inbounds %struct.dwarf1_unit, %struct.dwarf1_unit* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ult i64 %64, %67
  br i1 %68, label %69, label %108

69:                                               ; preds = %63
  %70 = load %struct.dwarf1_unit*, %struct.dwarf1_unit** %9, align 8
  %71 = getelementptr inbounds %struct.dwarf1_unit, %struct.dwarf1_unit* %70, i32 0, i32 5
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i64, i64* %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %10, align 8
  %78 = icmp ule i64 %76, %77
  br i1 %78, label %79, label %104

79:                                               ; preds = %69
  %80 = load i64, i64* %10, align 8
  %81 = load %struct.dwarf1_unit*, %struct.dwarf1_unit** %9, align 8
  %82 = getelementptr inbounds %struct.dwarf1_unit, %struct.dwarf1_unit* %81, i32 0, i32 5
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i64, i64* %16, align 8
  %85 = add i64 %84, 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ult i64 %80, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %79
  %91 = load %struct.dwarf1_unit*, %struct.dwarf1_unit** %9, align 8
  %92 = getelementptr inbounds %struct.dwarf1_unit, %struct.dwarf1_unit* %91, i32 0, i32 3
  %93 = load i8*, i8** %92, align 8
  %94 = load i8**, i8*** %11, align 8
  store i8* %93, i8** %94, align 8
  %95 = load %struct.dwarf1_unit*, %struct.dwarf1_unit** %9, align 8
  %96 = getelementptr inbounds %struct.dwarf1_unit, %struct.dwarf1_unit* %95, i32 0, i32 5
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i64, i64* %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32*, i32** %13, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* @TRUE, align 4
  store i32 %103, i32* %14, align 4
  br label %108

104:                                              ; preds = %79, %69
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %16, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %16, align 8
  br label %63

108:                                              ; preds = %90, %63
  %109 = load %struct.dwarf1_unit*, %struct.dwarf1_unit** %9, align 8
  %110 = getelementptr inbounds %struct.dwarf1_unit, %struct.dwarf1_unit* %109, i32 0, i32 4
  %111 = load %struct.dwarf1_func*, %struct.dwarf1_func** %110, align 8
  store %struct.dwarf1_func* %111, %struct.dwarf1_func** %17, align 8
  br label %112

112:                                              ; preds = %134, %108
  %113 = load %struct.dwarf1_func*, %struct.dwarf1_func** %17, align 8
  %114 = icmp ne %struct.dwarf1_func* %113, null
  br i1 %114, label %115, label %138

115:                                              ; preds = %112
  %116 = load %struct.dwarf1_func*, %struct.dwarf1_func** %17, align 8
  %117 = getelementptr inbounds %struct.dwarf1_func, %struct.dwarf1_func* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %10, align 8
  %120 = icmp ule i64 %118, %119
  br i1 %120, label %121, label %133

121:                                              ; preds = %115
  %122 = load i64, i64* %10, align 8
  %123 = load %struct.dwarf1_func*, %struct.dwarf1_func** %17, align 8
  %124 = getelementptr inbounds %struct.dwarf1_func, %struct.dwarf1_func* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ult i64 %122, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = load %struct.dwarf1_func*, %struct.dwarf1_func** %17, align 8
  %129 = getelementptr inbounds %struct.dwarf1_func, %struct.dwarf1_func* %128, i32 0, i32 2
  %130 = load i8*, i8** %129, align 8
  %131 = load i8**, i8*** %12, align 8
  store i8* %130, i8** %131, align 8
  %132 = load i32, i32* @TRUE, align 4
  store i32 %132, i32* %15, align 4
  br label %138

133:                                              ; preds = %121, %115
  br label %134

134:                                              ; preds = %133
  %135 = load %struct.dwarf1_func*, %struct.dwarf1_func** %17, align 8
  %136 = getelementptr inbounds %struct.dwarf1_func, %struct.dwarf1_func* %135, i32 0, i32 3
  %137 = load %struct.dwarf1_func*, %struct.dwarf1_func** %136, align 8
  store %struct.dwarf1_func* %137, %struct.dwarf1_func** %17, align 8
  br label %112

138:                                              ; preds = %127, %112
  br label %139

139:                                              ; preds = %138, %31
  br label %140

140:                                              ; preds = %139, %25, %6
  %141 = load i32, i32* %14, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* %15, align 4
  %145 = icmp ne i32 %144, 0
  br label %146

146:                                              ; preds = %143, %140
  %147 = phi i1 [ true, %140 ], [ %145, %143 ]
  %148 = zext i1 %147 to i32
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %146, %59, %46
  %150 = load i32, i32* %7, align 4
  ret i32 %150
}

declare dso_local i32 @parse_line_table(%struct.dwarf1_debug*, %struct.dwarf1_unit*) #1

declare dso_local i32 @parse_functions_in_unit(%struct.dwarf1_debug*, %struct.dwarf1_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
