; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_analyze_walk_wild_section_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_analyze_walk_wild_section_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.wildcard_list**, %struct.wildcard_list*, i32, i32* }
%struct.wildcard_list = type { %struct.TYPE_4__, %struct.wildcard_list* }
%struct.TYPE_4__ = type { i32* }

@walk_wild_section_general = common dso_local global i32 0, align 4
@walk_wild_section_specs1_wild0 = common dso_local global i32 0, align 4
@walk_wild_section_specs1_wild1 = common dso_local global i32 0, align 4
@walk_wild_section_specs2_wild1 = common dso_local global i32 0, align 4
@walk_wild_section_specs3_wild2 = common dso_local global i32 0, align 4
@walk_wild_section_specs4_wild2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @analyze_walk_wild_section_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analyze_walk_wild_section_handler(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.wildcard_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wildcard_list*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %9 = load i32, i32* @walk_wild_section_general, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.wildcard_list**, %struct.wildcard_list*** %13, align 8
  %15 = getelementptr inbounds %struct.wildcard_list*, %struct.wildcard_list** %14, i64 0
  store %struct.wildcard_list* null, %struct.wildcard_list** %15, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.wildcard_list**, %struct.wildcard_list*** %17, align 8
  %19 = getelementptr inbounds %struct.wildcard_list*, %struct.wildcard_list** %18, i64 1
  store %struct.wildcard_list* null, %struct.wildcard_list** %19, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.wildcard_list**, %struct.wildcard_list*** %21, align 8
  %23 = getelementptr inbounds %struct.wildcard_list*, %struct.wildcard_list** %22, i64 2
  store %struct.wildcard_list* null, %struct.wildcard_list** %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.wildcard_list**, %struct.wildcard_list*** %25, align 8
  %27 = getelementptr inbounds %struct.wildcard_list*, %struct.wildcard_list** %26, i64 3
  store %struct.wildcard_list* null, %struct.wildcard_list** %27, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load %struct.wildcard_list*, %struct.wildcard_list** %31, align 8
  store %struct.wildcard_list* %32, %struct.wildcard_list** %5, align 8
  br label %33

33:                                               ; preds = %64, %1
  %34 = load %struct.wildcard_list*, %struct.wildcard_list** %5, align 8
  %35 = icmp ne %struct.wildcard_list* %34, null
  br i1 %35, label %36, label %68

36:                                               ; preds = %33
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  %39 = load %struct.wildcard_list*, %struct.wildcard_list** %5, align 8
  %40 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %194

45:                                               ; preds = %36
  %46 = load %struct.wildcard_list*, %struct.wildcard_list** %5, align 8
  %47 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @wildcardp(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %45
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  %55 = load %struct.wildcard_list*, %struct.wildcard_list** %5, align 8
  %56 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @is_simple_wild(i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %52
  br label %194

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %45
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.wildcard_list*, %struct.wildcard_list** %5, align 8
  %66 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %65, i32 0, i32 1
  %67 = load %struct.wildcard_list*, %struct.wildcard_list** %66, align 8
  store %struct.wildcard_list* %67, %struct.wildcard_list** %5, align 8
  br label %33

68:                                               ; preds = %33
  %69 = load i32, i32* %3, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %3, align 4
  %73 = icmp sgt i32 %72, 4
  br i1 %73, label %74, label %75

74:                                               ; preds = %71, %68
  br label %194

75:                                               ; preds = %71
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load %struct.wildcard_list*, %struct.wildcard_list** %77, align 8
  store %struct.wildcard_list* %78, %struct.wildcard_list** %5, align 8
  br label %79

79:                                               ; preds = %107, %75
  %80 = load %struct.wildcard_list*, %struct.wildcard_list** %5, align 8
  %81 = icmp ne %struct.wildcard_list* %80, null
  br i1 %81, label %82, label %111

82:                                               ; preds = %79
  %83 = load %struct.wildcard_list*, %struct.wildcard_list** %5, align 8
  %84 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %83, i32 0, i32 1
  %85 = load %struct.wildcard_list*, %struct.wildcard_list** %84, align 8
  store %struct.wildcard_list* %85, %struct.wildcard_list** %8, align 8
  br label %86

86:                                               ; preds = %102, %82
  %87 = load %struct.wildcard_list*, %struct.wildcard_list** %8, align 8
  %88 = icmp ne %struct.wildcard_list* %87, null
  br i1 %88, label %89, label %106

89:                                               ; preds = %86
  %90 = load %struct.wildcard_list*, %struct.wildcard_list** %5, align 8
  %91 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.wildcard_list*, %struct.wildcard_list** %8, align 8
  %95 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = call i64 @wild_spec_can_overlap(i32* %93, i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  br label %194

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.wildcard_list*, %struct.wildcard_list** %8, align 8
  %104 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %103, i32 0, i32 1
  %105 = load %struct.wildcard_list*, %struct.wildcard_list** %104, align 8
  store %struct.wildcard_list* %105, %struct.wildcard_list** %8, align 8
  br label %86

106:                                              ; preds = %86
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.wildcard_list*, %struct.wildcard_list** %5, align 8
  %109 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %108, i32 0, i32 1
  %110 = load %struct.wildcard_list*, %struct.wildcard_list** %109, align 8
  store %struct.wildcard_list* %110, %struct.wildcard_list** %5, align 8
  br label %79

111:                                              ; preds = %79
  %112 = load i32, i32* %3, align 4
  %113 = shl i32 %112, 8
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %113, %114
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  switch i32 %116, label %137 [
    i32 256, label %117
    i32 257, label %121
    i32 513, label %125
    i32 770, label %129
    i32 1026, label %133
  ]

117:                                              ; preds = %111
  %118 = load i32, i32* @walk_wild_section_specs1_wild0, align 4
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  br label %138

121:                                              ; preds = %111
  %122 = load i32, i32* @walk_wild_section_specs1_wild1, align 4
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  br label %138

125:                                              ; preds = %111
  %126 = load i32, i32* @walk_wild_section_specs2_wild1, align 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 8
  br label %138

129:                                              ; preds = %111
  %130 = load i32, i32* @walk_wild_section_specs3_wild2, align 4
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  br label %138

133:                                              ; preds = %111
  %134 = load i32, i32* @walk_wild_section_specs4_wild2, align 4
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  br label %138

137:                                              ; preds = %111
  br label %194

138:                                              ; preds = %133, %129, %125, %121, %117
  store i32 0, i32* %7, align 4
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = load %struct.wildcard_list*, %struct.wildcard_list** %140, align 8
  store %struct.wildcard_list* %141, %struct.wildcard_list** %5, align 8
  br label %142

142:                                              ; preds = %162, %138
  %143 = load %struct.wildcard_list*, %struct.wildcard_list** %5, align 8
  %144 = icmp ne %struct.wildcard_list* %143, null
  br i1 %144, label %145, label %166

145:                                              ; preds = %142
  %146 = load %struct.wildcard_list*, %struct.wildcard_list** %5, align 8
  %147 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = call i64 @wildcardp(i32* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %161, label %152

152:                                              ; preds = %145
  %153 = load %struct.wildcard_list*, %struct.wildcard_list** %5, align 8
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load %struct.wildcard_list**, %struct.wildcard_list*** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %7, align 4
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds %struct.wildcard_list*, %struct.wildcard_list** %156, i64 %159
  store %struct.wildcard_list* %153, %struct.wildcard_list** %160, align 8
  br label %161

161:                                              ; preds = %152, %145
  br label %162

162:                                              ; preds = %161
  %163 = load %struct.wildcard_list*, %struct.wildcard_list** %5, align 8
  %164 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %163, i32 0, i32 1
  %165 = load %struct.wildcard_list*, %struct.wildcard_list** %164, align 8
  store %struct.wildcard_list* %165, %struct.wildcard_list** %5, align 8
  br label %142

166:                                              ; preds = %142
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  %169 = load %struct.wildcard_list*, %struct.wildcard_list** %168, align 8
  store %struct.wildcard_list* %169, %struct.wildcard_list** %5, align 8
  br label %170

170:                                              ; preds = %190, %166
  %171 = load %struct.wildcard_list*, %struct.wildcard_list** %5, align 8
  %172 = icmp ne %struct.wildcard_list* %171, null
  br i1 %172, label %173, label %194

173:                                              ; preds = %170
  %174 = load %struct.wildcard_list*, %struct.wildcard_list** %5, align 8
  %175 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = call i64 @wildcardp(i32* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %189

180:                                              ; preds = %173
  %181 = load %struct.wildcard_list*, %struct.wildcard_list** %5, align 8
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = load %struct.wildcard_list**, %struct.wildcard_list*** %183, align 8
  %185 = load i32, i32* %7, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %7, align 4
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds %struct.wildcard_list*, %struct.wildcard_list** %184, i64 %187
  store %struct.wildcard_list* %181, %struct.wildcard_list** %188, align 8
  br label %189

189:                                              ; preds = %180, %173
  br label %190

190:                                              ; preds = %189
  %191 = load %struct.wildcard_list*, %struct.wildcard_list** %5, align 8
  %192 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %191, i32 0, i32 1
  %193 = load %struct.wildcard_list*, %struct.wildcard_list** %192, align 8
  store %struct.wildcard_list* %193, %struct.wildcard_list** %5, align 8
  br label %170

194:                                              ; preds = %44, %61, %74, %100, %137, %170
  ret void
}

declare dso_local i64 @wildcardp(i32*) #1

declare dso_local i32 @is_simple_wild(i32*) #1

declare dso_local i64 @wild_spec_can_overlap(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
