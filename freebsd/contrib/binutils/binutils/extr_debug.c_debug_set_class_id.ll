; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_set_class_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_set_class_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_handle = type { i64, i64, %struct.debug_class_id* }
%struct.debug_class_id = type { i8*, %struct.debug_class_id*, %struct.debug_type* }
%struct.debug_type = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.debug_class_type* }
%struct.debug_class_type = type { i64 }

@DEBUG_KIND_STRUCT = common dso_local global i64 0, align 8
@DEBUG_KIND_UNION = common dso_local global i64 0, align 8
@DEBUG_KIND_CLASS = common dso_local global i64 0, align 8
@DEBUG_KIND_UNION_CLASS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.debug_handle*, i8*, %struct.debug_type*)* @debug_set_class_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_set_class_id(%struct.debug_handle* %0, i8* %1, %struct.debug_type* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.debug_handle*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.debug_type*, align 8
  %8 = alloca %struct.debug_class_type*, align 8
  %9 = alloca %struct.debug_class_id*, align 8
  store %struct.debug_handle* %0, %struct.debug_handle** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.debug_type* %2, %struct.debug_type** %7, align 8
  %10 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %11 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DEBUG_KIND_STRUCT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %33, label %15

15:                                               ; preds = %3
  %16 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %17 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DEBUG_KIND_UNION, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %33, label %21

21:                                               ; preds = %15
  %22 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %23 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DEBUG_KIND_CLASS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %29 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DEBUG_KIND_UNION_CLASS, align 8
  %32 = icmp eq i64 %30, %31
  br label %33

33:                                               ; preds = %27, %21, %15, %3
  %34 = phi i1 [ true, %21 ], [ true, %15 ], [ true, %3 ], [ %32, %27 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %38 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.debug_class_type*, %struct.debug_class_type** %39, align 8
  store %struct.debug_class_type* %40, %struct.debug_class_type** %8, align 8
  %41 = load %struct.debug_class_type*, %struct.debug_class_type** %8, align 8
  %42 = getelementptr inbounds %struct.debug_class_type, %struct.debug_class_type* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %45 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %4, align 4
  br label %158

50:                                               ; preds = %33
  %51 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %52 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %51, i32 0, i32 2
  %53 = load %struct.debug_class_id*, %struct.debug_class_id** %52, align 8
  store %struct.debug_class_id* %53, %struct.debug_class_id** %9, align 8
  br label %54

54:                                               ; preds = %125, %50
  %55 = load %struct.debug_class_id*, %struct.debug_class_id** %9, align 8
  %56 = icmp ne %struct.debug_class_id* %55, null
  br i1 %56, label %57, label %129

57:                                               ; preds = %54
  %58 = load %struct.debug_class_id*, %struct.debug_class_id** %9, align 8
  %59 = getelementptr inbounds %struct.debug_class_id, %struct.debug_class_id* %58, i32 0, i32 2
  %60 = load %struct.debug_type*, %struct.debug_type** %59, align 8
  %61 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %64 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %125

68:                                               ; preds = %57
  %69 = load i8*, i8** %6, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load %struct.debug_class_id*, %struct.debug_class_id** %9, align 8
  %73 = getelementptr inbounds %struct.debug_class_id, %struct.debug_class_id* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %125

77:                                               ; preds = %71
  br label %104

78:                                               ; preds = %68
  %79 = load %struct.debug_class_id*, %struct.debug_class_id** %9, align 8
  %80 = getelementptr inbounds %struct.debug_class_id, %struct.debug_class_id* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %102, label %83

83:                                               ; preds = %78
  %84 = load %struct.debug_class_id*, %struct.debug_class_id** %9, align 8
  %85 = getelementptr inbounds %struct.debug_class_id, %struct.debug_class_id* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = load i8*, i8** %6, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %89, %93
  br i1 %94, label %102, label %95

95:                                               ; preds = %83
  %96 = load %struct.debug_class_id*, %struct.debug_class_id** %9, align 8
  %97 = getelementptr inbounds %struct.debug_class_id, %struct.debug_class_id* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = call i64 @strcmp(i8* %98, i8* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95, %83, %78
  br label %125

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103, %77
  %105 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %106 = load %struct.debug_class_id*, %struct.debug_class_id** %9, align 8
  %107 = getelementptr inbounds %struct.debug_class_id, %struct.debug_class_id* %106, i32 0, i32 2
  %108 = load %struct.debug_type*, %struct.debug_type** %107, align 8
  %109 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %110 = call i64 @debug_type_samep(%struct.debug_handle* %105, %struct.debug_type* %108, %struct.debug_type* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %104
  %113 = load %struct.debug_class_id*, %struct.debug_class_id** %9, align 8
  %114 = getelementptr inbounds %struct.debug_class_id, %struct.debug_class_id* %113, i32 0, i32 2
  %115 = load %struct.debug_type*, %struct.debug_type** %114, align 8
  %116 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load %struct.debug_class_type*, %struct.debug_class_type** %117, align 8
  %119 = getelementptr inbounds %struct.debug_class_type, %struct.debug_class_type* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.debug_class_type*, %struct.debug_class_type** %8, align 8
  %122 = getelementptr inbounds %struct.debug_class_type, %struct.debug_class_type* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load i32, i32* @TRUE, align 4
  store i32 %123, i32* %4, align 4
  br label %158

124:                                              ; preds = %104
  br label %125

125:                                              ; preds = %124, %102, %76, %67
  %126 = load %struct.debug_class_id*, %struct.debug_class_id** %9, align 8
  %127 = getelementptr inbounds %struct.debug_class_id, %struct.debug_class_id* %126, i32 0, i32 1
  %128 = load %struct.debug_class_id*, %struct.debug_class_id** %127, align 8
  store %struct.debug_class_id* %128, %struct.debug_class_id** %9, align 8
  br label %54

129:                                              ; preds = %54
  %130 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %131 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %131, align 8
  %134 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %135 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.debug_class_type*, %struct.debug_class_type** %8, align 8
  %138 = getelementptr inbounds %struct.debug_class_type, %struct.debug_class_type* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  %139 = call i64 @xmalloc(i32 24)
  %140 = inttoptr i64 %139 to %struct.debug_class_id*
  store %struct.debug_class_id* %140, %struct.debug_class_id** %9, align 8
  %141 = load %struct.debug_class_id*, %struct.debug_class_id** %9, align 8
  %142 = call i32 @memset(%struct.debug_class_id* %141, i32 0, i32 24)
  %143 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %144 = load %struct.debug_class_id*, %struct.debug_class_id** %9, align 8
  %145 = getelementptr inbounds %struct.debug_class_id, %struct.debug_class_id* %144, i32 0, i32 2
  store %struct.debug_type* %143, %struct.debug_type** %145, align 8
  %146 = load i8*, i8** %6, align 8
  %147 = load %struct.debug_class_id*, %struct.debug_class_id** %9, align 8
  %148 = getelementptr inbounds %struct.debug_class_id, %struct.debug_class_id* %147, i32 0, i32 0
  store i8* %146, i8** %148, align 8
  %149 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %150 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %149, i32 0, i32 2
  %151 = load %struct.debug_class_id*, %struct.debug_class_id** %150, align 8
  %152 = load %struct.debug_class_id*, %struct.debug_class_id** %9, align 8
  %153 = getelementptr inbounds %struct.debug_class_id, %struct.debug_class_id* %152, i32 0, i32 1
  store %struct.debug_class_id* %151, %struct.debug_class_id** %153, align 8
  %154 = load %struct.debug_class_id*, %struct.debug_class_id** %9, align 8
  %155 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %156 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %155, i32 0, i32 2
  store %struct.debug_class_id* %154, %struct.debug_class_id** %156, align 8
  %157 = load i32, i32* @TRUE, align 4
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %129, %112, %48
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @debug_type_samep(%struct.debug_handle*, %struct.debug_type*, %struct.debug_type*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.debug_class_id*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
