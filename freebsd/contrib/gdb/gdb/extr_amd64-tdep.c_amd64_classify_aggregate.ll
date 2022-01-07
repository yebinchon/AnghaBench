; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_amd64-tdep.c_amd64_classify_aggregate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_amd64-tdep.c_amd64_classify_aggregate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@AMD64_MEMORY = common dso_local global i32 0, align 4
@AMD64_NO_CLASS = common dso_local global i32 0, align 4
@TYPE_CODE_ARRAY = common dso_local global i64 0, align 8
@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@TYPE_CODE_UNION = common dso_local global i64 0, align 8
@AMD64_SSEUP = common dso_local global i32 0, align 4
@AMD64_SSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, i32*)* @amd64_classify_aggregate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd64_classify_aggregate(%struct.type* %0, i32* %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.type*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  store %struct.type* %0, %struct.type** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.type*, %struct.type** %3, align 8
  %12 = call i32 @TYPE_LENGTH(%struct.type* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 16
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load %struct.type*, %struct.type** %3, align 8
  %17 = call i64 @amd64_non_pod_p(%struct.type* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15, %2
  %20 = load i32, i32* @AMD64_MEMORY, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 %20, i32* %22, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %20, i32* %24, align 4
  br label %175

25:                                               ; preds = %15
  %26 = load i32, i32* @AMD64_NO_CLASS, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 %26, i32* %28, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %26, i32* %30, align 4
  %31 = load %struct.type*, %struct.type** %3, align 8
  %32 = call i64 @TYPE_CODE(%struct.type* %31)
  %33 = load i64, i64* @TYPE_CODE_ARRAY, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %25
  %36 = load %struct.type*, %struct.type** %3, align 8
  %37 = call i32 @TYPE_TARGET_TYPE(%struct.type* %36)
  %38 = call %struct.type* @check_typedef(i32 %37)
  store %struct.type* %38, %struct.type** %6, align 8
  %39 = load %struct.type*, %struct.type** %6, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @amd64_classify(%struct.type* %39, i32* %40)
  %42 = load i32, i32* %5, align 4
  %43 = icmp sgt i32 %42, 8
  br i1 %43, label %44, label %56

44:                                               ; preds = %35
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @AMD64_NO_CLASS, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load i32*, i32** %4, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %50, %44, %35
  br label %131

57:                                               ; preds = %25
  %58 = load %struct.type*, %struct.type** %3, align 8
  %59 = call i64 @TYPE_CODE(%struct.type* %58)
  %60 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load %struct.type*, %struct.type** %3, align 8
  %64 = call i64 @TYPE_CODE(%struct.type* %63)
  %65 = load i64, i64* @TYPE_CODE_UNION, align 8
  %66 = icmp eq i64 %64, %65
  br label %67

67:                                               ; preds = %62, %57
  %68 = phi i1 [ true, %57 ], [ %66, %62 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @gdb_assert(i32 %69)
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %127, %67
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.type*, %struct.type** %3, align 8
  %74 = call i32 @TYPE_NFIELDS(%struct.type* %73)
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %130

76:                                               ; preds = %71
  %77 = load %struct.type*, %struct.type** %3, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @TYPE_FIELD_TYPE(%struct.type* %77, i32 %78)
  %80 = call %struct.type* @check_typedef(i32 %79)
  store %struct.type* %80, %struct.type** %8, align 8
  %81 = load %struct.type*, %struct.type** %3, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %81, i32 %82)
  %84 = sdiv i32 %83, 64
  store i32 %84, i32* %9, align 4
  %85 = load %struct.type*, %struct.type** %3, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i64 @TYPE_FIELD_STATIC(%struct.type* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %76
  br label %127

90:                                               ; preds = %76
  %91 = load i32, i32* %9, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %9, align 4
  %95 = icmp eq i32 %94, 1
  br label %96

96:                                               ; preds = %93, %90
  %97 = phi i1 [ true, %90 ], [ %95, %93 ]
  %98 = zext i1 %97 to i32
  %99 = call i32 @gdb_assert(i32 %98)
  %100 = load %struct.type*, %struct.type** %8, align 8
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %102 = call i32 @amd64_classify(%struct.type* %100, i32* %101)
  %103 = load i32*, i32** %4, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @amd64_merge_classes(i32 %107, i32 %109)
  %111 = load i32*, i32** %4, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %110, i32* %114, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %96
  %118 = load i32*, i32** %4, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @amd64_merge_classes(i32 %120, i32 %122)
  %124 = load i32*, i32** %4, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %117, %96
  br label %127

127:                                              ; preds = %126, %89
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %7, align 4
  br label %71

130:                                              ; preds = %71
  br label %131

131:                                              ; preds = %130, %56
  %132 = load i32*, i32** %4, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @AMD64_MEMORY, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %143, label %137

137:                                              ; preds = %131
  %138 = load i32*, i32** %4, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @AMD64_MEMORY, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %137, %131
  %144 = load i32, i32* @AMD64_MEMORY, align 4
  %145 = load i32*, i32** %4, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  store i32 %144, i32* %146, align 4
  %147 = load i32*, i32** %4, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  store i32 %144, i32* %148, align 4
  br label %149

149:                                              ; preds = %143, %137
  %150 = load i32*, i32** %4, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @AMD64_SSEUP, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %149
  %156 = load i32, i32* @AMD64_SSE, align 4
  %157 = load i32*, i32** %4, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  store i32 %156, i32* %158, align 4
  br label %159

159:                                              ; preds = %155, %149
  %160 = load i32*, i32** %4, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @AMD64_SSEUP, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %175

165:                                              ; preds = %159
  %166 = load i32*, i32** %4, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @AMD64_SSE, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %165
  %172 = load i32, i32* @AMD64_SSE, align 4
  %173 = load i32*, i32** %4, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  store i32 %172, i32* %174, align 4
  br label %175

175:                                              ; preds = %19, %171, %165, %159
  ret void
}

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i64 @amd64_non_pod_p(%struct.type*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @amd64_classify(%struct.type*, i32*) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i32 @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local i32 @TYPE_FIELD_BITPOS(%struct.type*, i32) #1

declare dso_local i64 @TYPE_FIELD_STATIC(%struct.type*, i32) #1

declare dso_local i32 @amd64_merge_classes(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
