; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bitmap.c_bitmap_xor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bitmap.c_bitmap_xor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__*, i32, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32*, %struct.TYPE_14__* }

@BITMAP_ELEMENT_WORDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitmap_xor(%struct.TYPE_15__* %0, %struct.TYPE_15__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %7, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %8, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %10, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = icmp ne %struct.TYPE_15__* %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %30 = icmp ne %struct.TYPE_15__* %28, %29
  br label %31

31:                                               ; preds = %27, %3
  %32 = phi i1 [ false, %3 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @gcc_assert(i32 %33)
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %37 = icmp eq %struct.TYPE_15__* %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %40 = call i32 @bitmap_clear(%struct.TYPE_15__* %39)
  br label %211

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %179, %41
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %44 = icmp ne %struct.TYPE_14__* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %47 = icmp ne %struct.TYPE_14__* %46, null
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i1 [ true, %42 ], [ %47, %45 ]
  br i1 %49, label %50, label %180

50:                                               ; preds = %48
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %52 = icmp ne %struct.TYPE_14__* %51, null
  br i1 %52, label %53, label %127

53:                                               ; preds = %50
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %55 = icmp ne %struct.TYPE_14__* %54, null
  br i1 %55, label %56, label %127

56:                                               ; preds = %53
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %127

64:                                               ; preds = %56
  store i32 0, i32* %12, align 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %66 = icmp ne %struct.TYPE_14__* %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %64
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call %struct.TYPE_14__* @bitmap_elt_insert_after(%struct.TYPE_15__* %68, %struct.TYPE_14__* %69, i64 %72)
  store %struct.TYPE_14__* %73, %struct.TYPE_14__** %7, align 8
  br label %80

74:                                               ; preds = %64
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %74, %67
  %81 = load i32, i32* @BITMAP_ELEMENT_WORDS, align 4
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %86, %80
  %83 = load i32, i32* %11, align 4
  %84 = add i32 %83, -1
  store i32 %84, i32* %11, align 4
  %85 = icmp ne i32 %83, 0
  br i1 %85, label %86, label %112

86:                                               ; preds = %82
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = xor i32 %93, %100
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %12, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %13, align 4
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %105, i32* %111, align 4
  br label %82

112:                                              ; preds = %82
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  store %struct.TYPE_14__* %115, %struct.TYPE_14__** %8, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  store %struct.TYPE_14__* %118, %struct.TYPE_14__** %9, align 8
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %112
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %122, %struct.TYPE_14__** %10, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %124, align 8
  store %struct.TYPE_14__* %125, %struct.TYPE_14__** %7, align 8
  br label %126

126:                                              ; preds = %121, %112
  br label %179

127:                                              ; preds = %56, %53, %50
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %129 = icmp ne %struct.TYPE_14__* %128, null
  br i1 %129, label %130, label %141

130:                                              ; preds = %127
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %132 = icmp ne %struct.TYPE_14__* %131, null
  br i1 %132, label %133, label %146

133:                                              ; preds = %130
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp slt i64 %136, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %133, %127
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__* %142, %struct.TYPE_14__** %14, align 8
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %144, align 8
  store %struct.TYPE_14__* %145, %struct.TYPE_14__** %8, align 8
  br label %151

146:                                              ; preds = %133, %130
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %147, %struct.TYPE_14__** %14, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %149, align 8
  store %struct.TYPE_14__* %150, %struct.TYPE_14__** %9, align 8
  br label %151

151:                                              ; preds = %146, %141
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %153 = icmp ne %struct.TYPE_14__* %152, null
  br i1 %153, label %161, label %154

154:                                              ; preds = %151
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call %struct.TYPE_14__* @bitmap_elt_insert_after(%struct.TYPE_15__* %155, %struct.TYPE_14__* %156, i64 %159)
  store %struct.TYPE_14__* %160, %struct.TYPE_14__** %7, align 8
  br label %167

161:                                              ; preds = %151
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  store i64 %164, i64* %166, align 8
  br label %167

167:                                              ; preds = %161, %154
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = call i32 @memcpy(i32* %170, i32* %173, i32 8)
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %175, %struct.TYPE_14__** %10, align 8
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %177, align 8
  store %struct.TYPE_14__* %178, %struct.TYPE_14__** %7, align 8
  br label %179

179:                                              ; preds = %167, %126
  br label %42

180:                                              ; preds = %48
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %183 = call i32 @bitmap_elt_clear_from(%struct.TYPE_15__* %181, %struct.TYPE_14__* %182)
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %185, align 8
  %187 = icmp ne %struct.TYPE_13__* %186, null
  %188 = xor i1 %187, true
  %189 = zext i1 %188 to i32
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 2
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %191, align 8
  %193 = icmp ne %struct.TYPE_14__* %192, null
  %194 = xor i1 %193, true
  %195 = zext i1 %194 to i32
  %196 = icmp eq i32 %189, %195
  %197 = zext i1 %196 to i32
  %198 = call i32 @gcc_assert(i32 %197)
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %200, align 8
  %202 = icmp ne %struct.TYPE_13__* %201, null
  br i1 %202, label %203, label %211

203:                                              ; preds = %180
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 1
  store i32 %208, i32* %210, align 8
  br label %211

211:                                              ; preds = %38, %203, %180
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @bitmap_clear(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_14__* @bitmap_elt_insert_after(%struct.TYPE_15__*, %struct.TYPE_14__*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @bitmap_elt_clear_from(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
