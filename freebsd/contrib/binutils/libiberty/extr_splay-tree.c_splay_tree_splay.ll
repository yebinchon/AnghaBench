; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_splay-tree.c_splay_tree_splay.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_splay-tree.c_splay_tree_splay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 (i32, i32)* }
%struct.TYPE_10__ = type { %struct.TYPE_10__*, %struct.TYPE_10__*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32)* @splay_tree_splay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @splay_tree_splay(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %184

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %183, %14
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %7, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load i32 (i32, i32)*, i32 (i32, i32)** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %22(i32 %23, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %15
  br label %184

31:                                               ; preds = %15
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %8, align 8
  br label %42

38:                                               ; preds = %31
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %8, align 8
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %44 = icmp ne %struct.TYPE_10__* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  br label %184

46:                                               ; preds = %42
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i32 (i32, i32)*, i32 (i32, i32)** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 %49(i32 %50, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %73, label %57

57:                                               ; preds = %46
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = icmp ne %struct.TYPE_10__* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %60, %57
  %66 = load i32, i32* %6, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %65
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = icmp ne %struct.TYPE_10__* %71, null
  br i1 %72, label %91, label %73

73:                                               ; preds = %68, %60, %46
  %74 = load i32, i32* %5, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = bitcast i64* %78 to %struct.TYPE_10__**
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %82 = call i32 @rotate_left(%struct.TYPE_10__** %79, %struct.TYPE_10__* %80, %struct.TYPE_10__* %81)
  br label %90

83:                                               ; preds = %73
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = bitcast i64* %85 to %struct.TYPE_10__**
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %89 = call i32 @rotate_right(%struct.TYPE_10__** %86, %struct.TYPE_10__* %87, %struct.TYPE_10__* %88)
  br label %90

90:                                               ; preds = %83, %76
  br label %184

91:                                               ; preds = %68, %65
  %92 = load i32, i32* %5, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %91
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %113

97:                                               ; preds = %94
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = call i32 @rotate_left(%struct.TYPE_10__** %99, %struct.TYPE_10__* %100, %struct.TYPE_10__* %103)
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = bitcast i64* %106 to %struct.TYPE_10__**
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = call i32 @rotate_left(%struct.TYPE_10__** %107, %struct.TYPE_10__* %108, %struct.TYPE_10__* %111)
  br label %182

113:                                              ; preds = %94, %91
  %114 = load i32, i32* %5, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %135

116:                                              ; preds = %113
  %117 = load i32, i32* %6, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %135

119:                                              ; preds = %116
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = call i32 @rotate_right(%struct.TYPE_10__** %121, %struct.TYPE_10__* %122, %struct.TYPE_10__* %125)
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = bitcast i64* %128 to %struct.TYPE_10__**
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = call i32 @rotate_right(%struct.TYPE_10__** %129, %struct.TYPE_10__* %130, %struct.TYPE_10__* %133)
  br label %181

135:                                              ; preds = %116, %113
  %136 = load i32, i32* %5, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %157

138:                                              ; preds = %135
  %139 = load i32, i32* %6, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %157

141:                                              ; preds = %138
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = call i32 @rotate_right(%struct.TYPE_10__** %143, %struct.TYPE_10__* %144, %struct.TYPE_10__* %147)
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = bitcast i64* %150 to %struct.TYPE_10__**
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %154, align 8
  %156 = call i32 @rotate_left(%struct.TYPE_10__** %151, %struct.TYPE_10__* %152, %struct.TYPE_10__* %155)
  br label %180

157:                                              ; preds = %138, %135
  %158 = load i32, i32* %5, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %179

160:                                              ; preds = %157
  %161 = load i32, i32* %6, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %179

163:                                              ; preds = %160
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %168, align 8
  %170 = call i32 @rotate_left(%struct.TYPE_10__** %165, %struct.TYPE_10__* %166, %struct.TYPE_10__* %169)
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = bitcast i64* %172 to %struct.TYPE_10__**
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %176, align 8
  %178 = call i32 @rotate_right(%struct.TYPE_10__** %173, %struct.TYPE_10__* %174, %struct.TYPE_10__* %177)
  br label %179

179:                                              ; preds = %163, %160, %157
  br label %180

180:                                              ; preds = %179, %141
  br label %181

181:                                              ; preds = %180, %119
  br label %182

182:                                              ; preds = %181, %97
  br label %183

183:                                              ; preds = %182
  br i1 true, label %15, label %184

184:                                              ; preds = %13, %30, %45, %90, %183
  ret void
}

declare dso_local i32 @rotate_left(%struct.TYPE_10__**, %struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @rotate_right(%struct.TYPE_10__**, %struct.TYPE_10__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
