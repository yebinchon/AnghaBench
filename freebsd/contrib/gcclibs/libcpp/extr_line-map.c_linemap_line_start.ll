; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_line-map.c_linemap_line_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_line-map.c_linemap_line_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_maps = type { i32, i32, i32, i32, %struct.line_map* }
%struct.line_map = type { i32, i32, i32, i32, i32 }

@LC_RENAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linemap_line_start(%struct.line_maps* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.line_maps*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.line_map*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.line_maps* %0, %struct.line_maps** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.line_maps*, %struct.line_maps** %5, align 8
  %16 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %15, i32 0, i32 4
  %17 = load %struct.line_map*, %struct.line_map** %16, align 8
  %18 = load %struct.line_maps*, %struct.line_maps** %5, align 8
  %19 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.line_map, %struct.line_map* %17, i64 %22
  store %struct.line_map* %23, %struct.line_map** %8, align 8
  %24 = load %struct.line_maps*, %struct.line_maps** %5, align 8
  %25 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.line_map*, %struct.line_map** %8, align 8
  %28 = load %struct.line_maps*, %struct.line_maps** %5, align 8
  %29 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @SOURCE_LINE(%struct.line_map* %27, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %11, align 4
  %34 = sub i32 %32, %33
  store i32 %34, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %62, label %37

37:                                               ; preds = %3
  %38 = load i32, i32* %12, align 4
  %39 = icmp sgt i32 %38, 10
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.line_map*, %struct.line_map** %8, align 8
  %43 = getelementptr inbounds %struct.line_map, %struct.line_map* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  %46 = icmp sgt i32 %45, 1000
  br i1 %46, label %62, label %47

47:                                               ; preds = %40, %37
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.line_map*, %struct.line_map** %8, align 8
  %50 = getelementptr inbounds %struct.line_map, %struct.line_map* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 1, %51
  %53 = icmp uge i32 %48, %52
  br i1 %53, label %62, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* %7, align 4
  %56 = icmp ule i32 %55, 80
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.line_map*, %struct.line_map** %8, align 8
  %59 = getelementptr inbounds %struct.line_map, %struct.line_map* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sge i32 %60, 10
  br i1 %61, label %62, label %63

62:                                               ; preds = %57, %47, %40, %3
  store i32 1, i32* %13, align 4
  br label %67

63:                                               ; preds = %57, %54
  %64 = load %struct.line_maps*, %struct.line_maps** %5, align 8
  %65 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %63, %62
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %136

70:                                               ; preds = %67
  %71 = load i32, i32* %7, align 4
  %72 = icmp ugt i32 %71, 100000
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  %75 = icmp ugt i32 %74, -1073741824
  br i1 %75, label %76, label %81

76:                                               ; preds = %73, %70
  store i32 0, i32* %7, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ugt i32 %77, -268435456
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %166

80:                                               ; preds = %76
  store i32 0, i32* %14, align 4
  br label %93

81:                                               ; preds = %73
  store i32 7, i32* %14, align 4
  br label %82

82:                                               ; preds = %87, %81
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %14, align 4
  %85 = shl i32 1, %84
  %86 = icmp uge i32 %83, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  br label %82

90:                                               ; preds = %82
  %91 = load i32, i32* %14, align 4
  %92 = shl i32 1, %91
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %90, %80
  %94 = load i32, i32* %12, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %109, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.line_map*, %struct.line_map** %8, align 8
  %99 = getelementptr inbounds %struct.line_map, %struct.line_map* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %97, %100
  br i1 %101, label %109, label %102

102:                                              ; preds = %96
  %103 = load %struct.line_map*, %struct.line_map** %8, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @SOURCE_COLUMN(%struct.line_map* %103, i32 %104)
  %106 = load i32, i32* %14, align 4
  %107 = shl i32 1, %106
  %108 = icmp uge i32 %105, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %102, %96, %93
  %110 = load %struct.line_maps*, %struct.line_maps** %5, align 8
  %111 = load i32, i32* @LC_RENAME, align 4
  %112 = load %struct.line_map*, %struct.line_map** %8, align 8
  %113 = getelementptr inbounds %struct.line_map, %struct.line_map* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.line_map*, %struct.line_map** %8, align 8
  %116 = getelementptr inbounds %struct.line_map, %struct.line_map* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %6, align 4
  %119 = call i64 @linemap_add(%struct.line_maps* %110, i32 %111, i32 %114, i32 %117, i32 %118)
  %120 = inttoptr i64 %119 to %struct.line_map*
  store %struct.line_map* %120, %struct.line_map** %8, align 8
  br label %121

121:                                              ; preds = %109, %102
  %122 = load i32, i32* %14, align 4
  %123 = load %struct.line_map*, %struct.line_map** %8, align 8
  %124 = getelementptr inbounds %struct.line_map, %struct.line_map* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  %125 = load %struct.line_map*, %struct.line_map** %8, align 8
  %126 = getelementptr inbounds %struct.line_map, %struct.line_map* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.line_map*, %struct.line_map** %8, align 8
  %130 = getelementptr inbounds %struct.line_map, %struct.line_map* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = sub i32 %128, %131
  %133 = load i32, i32* %14, align 4
  %134 = shl i32 %132, %133
  %135 = add i32 %127, %134
  store i32 %135, i32* %10, align 4
  br label %148

136:                                              ; preds = %67
  %137 = load i32, i32* %9, align 4
  %138 = load %struct.line_map*, %struct.line_map** %8, align 8
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @SOURCE_COLUMN(%struct.line_map* %138, i32 %139)
  %141 = sub nsw i32 %137, %140
  %142 = load i32, i32* %12, align 4
  %143 = load %struct.line_map*, %struct.line_map** %8, align 8
  %144 = getelementptr inbounds %struct.line_map, %struct.line_map* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = shl i32 %142, %145
  %147 = add nsw i32 %141, %146
  store i32 %147, i32* %10, align 4
  br label %148

148:                                              ; preds = %136, %121
  %149 = load i32, i32* %10, align 4
  %150 = load %struct.line_maps*, %struct.line_maps** %5, align 8
  %151 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* %10, align 4
  %153 = load %struct.line_maps*, %struct.line_maps** %5, align 8
  %154 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp sgt i32 %152, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %148
  %158 = load i32, i32* %10, align 4
  %159 = load %struct.line_maps*, %struct.line_maps** %5, align 8
  %160 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  br label %161

161:                                              ; preds = %157, %148
  %162 = load i32, i32* %7, align 4
  %163 = load %struct.line_maps*, %struct.line_maps** %5, align 8
  %164 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %163, i32 0, i32 3
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* %10, align 4
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %161, %79
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i32 @SOURCE_LINE(%struct.line_map*, i32) #1

declare dso_local i32 @SOURCE_COLUMN(%struct.line_map*, i32) #1

declare dso_local i64 @linemap_add(%struct.line_maps*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
