; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/zlib_deflate/extr_deflate.c_zlib_deflateInit2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/zlib_deflate/extr_deflate.c_zlib_deflateInit2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.internal_state*, i64, i32* }
%struct.internal_state = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32*, i32*, i32*, i32*, i32*, i64*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i32 }

@Z_STREAM_ERROR = common dso_local global i32 0, align 4
@Z_DEFAULT_COMPRESSION = common dso_local global i32 0, align 4
@MAX_MEM_LEVEL = common dso_local global i32 0, align 4
@Z_DEFLATED = common dso_local global i32 0, align 4
@Z_HUFFMAN_ONLY = common dso_local global i32 0, align 4
@MIN_MATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zlib_deflateInit2(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = icmp eq %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32, i32* @Z_STREAM_ERROR, align 4
  store i32 %21, i32* %7, align 4
  br label %196

22:                                               ; preds = %6
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  store i32* null, i32** %24, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @Z_DEFAULT_COMPRESSION, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 6, i32* %9, align 4
  br label %29

29:                                               ; preds = %28, %22
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %16, align 8
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  store i32 1, i32* %15, align 4
  %37 = load i32, i32* %11, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %36, %29
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %69, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @MAX_MEM_LEVEL, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %69, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @Z_DEFLATED, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %69, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 9
  br i1 %52, label %69, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %11, align 4
  %55 = icmp sgt i32 %54, 15
  br i1 %55, label %69, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %9, align 4
  %61 = icmp sgt i32 %60, 9
  br i1 %61, label %69, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %13, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @Z_HUFFMAN_ONLY, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65, %62, %59, %56, %53, %50, %46, %42, %39
  %70 = load i32, i32* @Z_STREAM_ERROR, align 4
  store i32 %70, i32* %7, align 4
  br label %196

71:                                               ; preds = %65
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 4
  %74 = bitcast i32* %73 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %74, %struct.TYPE_8__** %14, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %76 = bitcast %struct.TYPE_8__* %75 to %struct.internal_state*
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store %struct.internal_state* %76, %struct.internal_state** %78, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 19
  store %struct.TYPE_6__* %79, %struct.TYPE_6__** %81, align 8
  %82 = load i32, i32* %15, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 1, %90
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %96, 1
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 7
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = shl i32 1, %106
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %112, 1
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 6
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @MIN_MATCH, align 4
  %120 = add nsw i32 %118, %119
  %121 = sub nsw i32 %120, 1
  %122 = load i32, i32* @MIN_MATCH, align 4
  %123 = sdiv i32 %121, %122
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 7
  store i32 %123, i32* %125, align 4
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to i64*
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 18
  store i64* %129, i64** %131, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = inttoptr i64 %134 to i32*
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 17
  store i32* %135, i32** %137, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = inttoptr i64 %140 to i32*
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 16
  store i32* %141, i32** %143, align 8
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, 6
  %146 = shl i32 1, %145
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 8
  store i32 %146, i32* %148, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = inttoptr i64 %151 to i32*
  store i32* %152, i32** %17, align 8
  %153 = load i32*, i32** %17, align 8
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 13
  store i32* %153, i32** %155, align 8
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 8
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = mul i64 %159, 6
  %161 = trunc i64 %160 to i32
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 9
  store i32 %161, i32* %163, align 4
  %164 = load i32*, i32** %17, align 8
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 8
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = udiv i64 %168, 4
  %170 = getelementptr inbounds i32, i32* %164, i64 %169
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 15
  store i32* %170, i32** %172, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 13
  %175 = load i32*, i32** %174, align 8
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 8
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = mul i64 5, %179
  %181 = getelementptr inbounds i32, i32* %175, i64 %180
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 14
  store i32* %181, i32** %183, align 8
  %184 = load i32, i32* %9, align 4
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 10
  store i32 %184, i32* %186, align 8
  %187 = load i32, i32* %13, align 4
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 11
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 12
  store i64 %191, i64* %193, align 8
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %195 = call i32 @zlib_deflateReset(%struct.TYPE_6__* %194)
  store i32 %195, i32* %7, align 4
  br label %196

196:                                              ; preds = %71, %69, %20
  %197 = load i32, i32* %7, align 4
  ret i32 %197
}

declare dso_local i32 @zlib_deflateReset(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
