; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bitmap.c_bitmap_compl_and_into.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bitmap.c_bitmap_compl_and_into.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_15__*, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i64, i32*, %struct.TYPE_16__*, %struct.TYPE_16__* }

@BITMAP_ELEMENT_WORDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitmap_compl_and_into(%struct.TYPE_17__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %5, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %7, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %21 = icmp ne %struct.TYPE_17__* %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @gcc_assert(i32 %22)
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %25 = call i64 @bitmap_empty_p(%struct.TYPE_17__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = call i32 @bitmap_copy(%struct.TYPE_17__* %28, %struct.TYPE_17__* %29)
  br label %195

31:                                               ; preds = %2
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %33 = call i64 @bitmap_empty_p(%struct.TYPE_17__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %37 = call i32 @bitmap_clear(%struct.TYPE_17__* %36)
  br label %195

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %160, %38
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %41 = icmp ne %struct.TYPE_16__* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %44 = icmp ne %struct.TYPE_16__* %43, null
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi i1 [ true, %39 ], [ %44, %42 ]
  br i1 %46, label %47, label %161

47:                                               ; preds = %45
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %49 = icmp ne %struct.TYPE_16__* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %52 = icmp ne %struct.TYPE_16__* %51, null
  br i1 %52, label %53, label %72

53:                                               ; preds = %50
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %53, %47
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  store %struct.TYPE_16__* %64, %struct.TYPE_16__** %8, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  store %struct.TYPE_16__* %67, %struct.TYPE_16__** %7, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %70 = call i32 @bitmap_element_free(%struct.TYPE_17__* %68, %struct.TYPE_16__* %69)
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %71, %struct.TYPE_16__** %5, align 8
  br label %160

72:                                               ; preds = %53, %50
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %74 = icmp ne %struct.TYPE_16__* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %78, %81
  br i1 %82, label %83, label %101

83:                                               ; preds = %75, %72
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call %struct.TYPE_16__* @bitmap_elt_insert_after(%struct.TYPE_17__* %84, %struct.TYPE_16__* %85, i64 %88)
  store %struct.TYPE_16__* %89, %struct.TYPE_16__** %8, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @memcpy(i32* %92, i32* %95, i32 8)
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %97, %struct.TYPE_16__** %7, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %99, align 8
  store %struct.TYPE_16__* %100, %struct.TYPE_16__** %6, align 8
  br label %159

101:                                              ; preds = %75
  store i32 0, i32* %10, align 4
  %102 = load i32, i32* @BITMAP_ELEMENT_WORDS, align 4
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %107, %101
  %104 = load i32, i32* %9, align 4
  %105 = add i32 %104, -1
  store i32 %105, i32* %9, align 4
  %106 = icmp ne i32 %104, 0
  br i1 %106, label %107, label %142

107:                                              ; preds = %103
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %114, %121
  store i32 %122, i32* %11, align 4
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %11, align 4
  %131 = xor i32 %129, %130
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %132, i32* %138, align 4
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %10, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %10, align 4
  br label %103

142:                                              ; preds = %103
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %144, align 8
  store %struct.TYPE_16__* %145, %struct.TYPE_16__** %8, align 8
  %146 = load i32, i32* %10, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %142
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %151 = call i32 @bitmap_element_free(%struct.TYPE_17__* %149, %struct.TYPE_16__* %150)
  br label %154

152:                                              ; preds = %142
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %153, %struct.TYPE_16__** %7, align 8
  br label %154

154:                                              ; preds = %152, %148
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %155, %struct.TYPE_16__** %5, align 8
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %157, align 8
  store %struct.TYPE_16__* %158, %struct.TYPE_16__** %6, align 8
  br label %159

159:                                              ; preds = %154, %83
  br label %160

160:                                              ; preds = %159, %61
  br label %39

161:                                              ; preds = %45
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %163, align 8
  %165 = icmp ne %struct.TYPE_15__* %164, null
  %166 = xor i1 %165, true
  %167 = zext i1 %166 to i32
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %169, align 8
  %171 = icmp ne %struct.TYPE_16__* %170, null
  %172 = xor i1 %171, true
  %173 = zext i1 %172 to i32
  %174 = icmp eq i32 %167, %173
  %175 = zext i1 %174 to i32
  %176 = call i32 @gcc_assert(i32 %175)
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %178, align 8
  %180 = icmp ne %struct.TYPE_15__* %179, null
  br i1 %180, label %181, label %191

181:                                              ; preds = %161
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp eq i64 %184, %189
  br label %191

191:                                              ; preds = %181, %161
  %192 = phi i1 [ true, %161 ], [ %190, %181 ]
  %193 = zext i1 %192 to i32
  %194 = call i32 @gcc_assert(i32 %193)
  br label %195

195:                                              ; preds = %191, %35, %27
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @bitmap_empty_p(%struct.TYPE_17__*) #1

declare dso_local i32 @bitmap_copy(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @bitmap_clear(%struct.TYPE_17__*) #1

declare dso_local i32 @bitmap_element_free(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @bitmap_elt_insert_after(%struct.TYPE_17__*, %struct.TYPE_16__*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
