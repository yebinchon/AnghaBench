; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_place_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_place_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i64, i64, i32, %struct.TYPE_6__* }
%struct.dwarf2_debug = type { i32, %struct.loadable_section* }
%struct.loadable_section = type { i32, %struct.TYPE_6__* }

@SEC_LOAD = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.dwarf2_debug*)* @place_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @place_sections(%struct.TYPE_5__* %0, %struct.dwarf2_debug* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.dwarf2_debug*, align 8
  %6 = alloca %struct.loadable_section*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.loadable_section*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.dwarf2_debug* %1, %struct.dwarf2_debug** %5, align 8
  %14 = load %struct.dwarf2_debug*, %struct.dwarf2_debug** %5, align 8
  %15 = getelementptr inbounds %struct.dwarf2_debug, %struct.dwarf2_debug* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %2
  %19 = load %struct.dwarf2_debug*, %struct.dwarf2_debug** %5, align 8
  %20 = getelementptr inbounds %struct.dwarf2_debug, %struct.dwarf2_debug* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  %22 = load %struct.dwarf2_debug*, %struct.dwarf2_debug** %5, align 8
  %23 = getelementptr inbounds %struct.dwarf2_debug, %struct.dwarf2_debug* %22, i32 0, i32 1
  %24 = load %struct.loadable_section*, %struct.loadable_section** %23, align 8
  store %struct.loadable_section* %24, %struct.loadable_section** %6, align 8
  br label %25

25:                                               ; preds = %36, %18
  %26 = load i32, i32* %7, align 4
  %27 = icmp ugt i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = load %struct.loadable_section*, %struct.loadable_section** %6, align 8
  %30 = getelementptr inbounds %struct.loadable_section, %struct.loadable_section* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.loadable_section*, %struct.loadable_section** %6, align 8
  %33 = getelementptr inbounds %struct.loadable_section, %struct.loadable_section* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 8
  br label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %7, align 4
  %38 = add i32 %37, -1
  store i32 %38, i32* %7, align 4
  %39 = load %struct.loadable_section*, %struct.loadable_section** %6, align 8
  %40 = getelementptr inbounds %struct.loadable_section, %struct.loadable_section* %39, i32 1
  store %struct.loadable_section* %40, %struct.loadable_section** %6, align 8
  br label %25

41:                                               ; preds = %25
  br label %188

42:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %8, align 8
  br label %46

46:                                               ; preds = %83, %42
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = icmp ne %struct.TYPE_6__* %47, null
  br i1 %48, label %49, label %87

49:                                               ; preds = %46
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %49
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SEC_LOAD, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54, %49
  br label %83

62:                                               ; preds = %54
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  br label %75

71:                                               ; preds = %62
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  br label %75

75:                                               ; preds = %71, %67
  %76 = phi i64 [ %70, %67 ], [ %74, %71 ]
  store i64 %76, i64* %12, align 8
  %77 = load i64, i64* %12, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %83

80:                                               ; preds = %75
  %81 = load i32, i32* %7, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %80, %79, %61
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 5
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  store %struct.TYPE_6__* %86, %struct.TYPE_6__** %8, align 8
  br label %46

87:                                               ; preds = %46
  %88 = load i32, i32* %7, align 4
  %89 = zext i32 %88 to i64
  %90 = mul i64 %89, 16
  store i64 %90, i64* %10, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %92 = load i64, i64* %10, align 8
  %93 = call i64 @bfd_zalloc(%struct.TYPE_5__* %91, i64 %92)
  %94 = inttoptr i64 %93 to %struct.loadable_section*
  store %struct.loadable_section* %94, %struct.loadable_section** %11, align 8
  %95 = load %struct.loadable_section*, %struct.loadable_section** %11, align 8
  %96 = icmp ne %struct.loadable_section* %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %87
  %98 = load i32, i32* @FALSE, align 4
  store i32 %98, i32* %3, align 4
  br label %190

99:                                               ; preds = %87
  %100 = load %struct.loadable_section*, %struct.loadable_section** %11, align 8
  %101 = load %struct.dwarf2_debug*, %struct.dwarf2_debug** %5, align 8
  %102 = getelementptr inbounds %struct.dwarf2_debug, %struct.dwarf2_debug* %101, i32 0, i32 1
  store %struct.loadable_section* %100, %struct.loadable_section** %102, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.dwarf2_debug*, %struct.dwarf2_debug** %5, align 8
  %105 = getelementptr inbounds %struct.dwarf2_debug, %struct.dwarf2_debug* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  store %struct.TYPE_6__* %108, %struct.TYPE_6__** %8, align 8
  br label %109

109:                                              ; preds = %183, %99
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %111 = icmp ne %struct.TYPE_6__* %110, null
  br i1 %111, label %112, label %187

112:                                              ; preds = %109
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %112
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @SEC_LOAD, align 4
  %122 = and i32 %120, %121
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %117, %112
  br label %183

125:                                              ; preds = %117
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  br label %138

134:                                              ; preds = %125
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  br label %138

138:                                              ; preds = %134, %130
  %139 = phi i64 [ %133, %130 ], [ %137, %134 ]
  store i64 %139, i64* %13, align 8
  %140 = load i64, i64* %13, align 8
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  br label %183

143:                                              ; preds = %138
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %145 = load %struct.loadable_section*, %struct.loadable_section** %11, align 8
  %146 = getelementptr inbounds %struct.loadable_section, %struct.loadable_section* %145, i32 0, i32 1
  store %struct.TYPE_6__* %144, %struct.TYPE_6__** %146, align 8
  %147 = load i32, i32* %9, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %165

149:                                              ; preds = %143
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = shl i32 -1, %153
  %155 = xor i32 %154, -1
  %156 = add nsw i32 %150, %155
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = shl i32 -1, %159
  %161 = and i32 %156, %160
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  br label %165

165:                                              ; preds = %149, %143
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.loadable_section*, %struct.loadable_section** %11, align 8
  %170 = getelementptr inbounds %struct.loadable_section, %struct.loadable_section* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = load i64, i64* %13, align 8
  %176 = add nsw i64 %174, %175
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %178, %176
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %9, align 4
  %181 = load %struct.loadable_section*, %struct.loadable_section** %11, align 8
  %182 = getelementptr inbounds %struct.loadable_section, %struct.loadable_section* %181, i32 1
  store %struct.loadable_section* %182, %struct.loadable_section** %11, align 8
  br label %183

183:                                              ; preds = %165, %142, %124
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 5
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  store %struct.TYPE_6__* %186, %struct.TYPE_6__** %8, align 8
  br label %109

187:                                              ; preds = %109
  br label %188

188:                                              ; preds = %187, %41
  %189 = load i32, i32* @TRUE, align 4
  store i32 %189, i32* %3, align 4
  br label %190

190:                                              ; preds = %188, %97
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i64 @bfd_zalloc(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
