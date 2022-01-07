; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_find_named_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_find_named_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_handle = type { %struct.TYPE_6__*, %struct.debug_block* }
%struct.TYPE_6__ = type { %struct.debug_file* }
%struct.debug_file = type { %struct.TYPE_7__*, %struct.debug_file* }
%struct.TYPE_7__ = type { %struct.debug_name* }
%struct.debug_name = type { i64, i8*, %struct.TYPE_8__, %struct.debug_name* }
%struct.TYPE_8__ = type { i32 }
%struct.debug_block = type { %struct.TYPE_5__*, %struct.debug_block* }
%struct.TYPE_5__ = type { %struct.debug_name* }

@.str = private unnamed_addr constant [51 x i8] c"debug_find_named_type: no current compilation unit\00", align 1
@DEBUG_TYPE_NULL = common dso_local global i32 0, align 4
@DEBUG_OBJECT_TYPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @debug_find_named_type(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.debug_handle*, align 8
  %7 = alloca %struct.debug_block*, align 8
  %8 = alloca %struct.debug_file*, align 8
  %9 = alloca %struct.debug_name*, align 8
  %10 = alloca %struct.debug_name*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.debug_handle*
  store %struct.debug_handle* %12, %struct.debug_handle** %6, align 8
  %13 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %14 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = icmp eq %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @debug_error(i32 %18)
  %20 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  store i32 %20, i32* %3, align 4
  br label %149

21:                                               ; preds = %2
  %22 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %23 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %22, i32 0, i32 1
  %24 = load %struct.debug_block*, %struct.debug_block** %23, align 8
  store %struct.debug_block* %24, %struct.debug_block** %7, align 8
  br label %25

25:                                               ; preds = %79, %21
  %26 = load %struct.debug_block*, %struct.debug_block** %7, align 8
  %27 = icmp ne %struct.debug_block* %26, null
  br i1 %27, label %28, label %83

28:                                               ; preds = %25
  %29 = load %struct.debug_block*, %struct.debug_block** %7, align 8
  %30 = getelementptr inbounds %struct.debug_block, %struct.debug_block* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  br i1 %32, label %33, label %78

33:                                               ; preds = %28
  %34 = load %struct.debug_block*, %struct.debug_block** %7, align 8
  %35 = getelementptr inbounds %struct.debug_block, %struct.debug_block* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.debug_name*, %struct.debug_name** %37, align 8
  store %struct.debug_name* %38, %struct.debug_name** %9, align 8
  br label %39

39:                                               ; preds = %73, %33
  %40 = load %struct.debug_name*, %struct.debug_name** %9, align 8
  %41 = icmp ne %struct.debug_name* %40, null
  br i1 %41, label %42, label %77

42:                                               ; preds = %39
  %43 = load %struct.debug_name*, %struct.debug_name** %9, align 8
  %44 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DEBUG_OBJECT_TYPE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %72

48:                                               ; preds = %42
  %49 = load %struct.debug_name*, %struct.debug_name** %9, align 8
  %50 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %54, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %48
  %61 = load %struct.debug_name*, %struct.debug_name** %9, align 8
  %62 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = call i64 @strcmp(i8* %63, i8* %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load %struct.debug_name*, %struct.debug_name** %9, align 8
  %69 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %3, align 4
  br label %149

72:                                               ; preds = %60, %48, %42
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.debug_name*, %struct.debug_name** %9, align 8
  %75 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %74, i32 0, i32 3
  %76 = load %struct.debug_name*, %struct.debug_name** %75, align 8
  store %struct.debug_name* %76, %struct.debug_name** %9, align 8
  br label %39

77:                                               ; preds = %39
  br label %78

78:                                               ; preds = %77, %28
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.debug_block*, %struct.debug_block** %7, align 8
  %81 = getelementptr inbounds %struct.debug_block, %struct.debug_block* %80, i32 0, i32 1
  %82 = load %struct.debug_block*, %struct.debug_block** %81, align 8
  store %struct.debug_block* %82, %struct.debug_block** %7, align 8
  br label %25

83:                                               ; preds = %25
  %84 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %85 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load %struct.debug_file*, %struct.debug_file** %87, align 8
  store %struct.debug_file* %88, %struct.debug_file** %8, align 8
  br label %89

89:                                               ; preds = %143, %83
  %90 = load %struct.debug_file*, %struct.debug_file** %8, align 8
  %91 = icmp ne %struct.debug_file* %90, null
  br i1 %91, label %92, label %147

92:                                               ; preds = %89
  %93 = load %struct.debug_file*, %struct.debug_file** %8, align 8
  %94 = getelementptr inbounds %struct.debug_file, %struct.debug_file* %93, i32 0, i32 0
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = icmp ne %struct.TYPE_7__* %95, null
  br i1 %96, label %97, label %142

97:                                               ; preds = %92
  %98 = load %struct.debug_file*, %struct.debug_file** %8, align 8
  %99 = getelementptr inbounds %struct.debug_file, %struct.debug_file* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load %struct.debug_name*, %struct.debug_name** %101, align 8
  store %struct.debug_name* %102, %struct.debug_name** %10, align 8
  br label %103

103:                                              ; preds = %137, %97
  %104 = load %struct.debug_name*, %struct.debug_name** %10, align 8
  %105 = icmp ne %struct.debug_name* %104, null
  br i1 %105, label %106, label %141

106:                                              ; preds = %103
  %107 = load %struct.debug_name*, %struct.debug_name** %10, align 8
  %108 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @DEBUG_OBJECT_TYPE, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %136

112:                                              ; preds = %106
  %113 = load %struct.debug_name*, %struct.debug_name** %10, align 8
  %114 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 0
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = load i8*, i8** %5, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %118, %122
  br i1 %123, label %124, label %136

124:                                              ; preds = %112
  %125 = load %struct.debug_name*, %struct.debug_name** %10, align 8
  %126 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = load i8*, i8** %5, align 8
  %129 = call i64 @strcmp(i8* %127, i8* %128)
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %124
  %132 = load %struct.debug_name*, %struct.debug_name** %10, align 8
  %133 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  store i32 %135, i32* %3, align 4
  br label %149

136:                                              ; preds = %124, %112, %106
  br label %137

137:                                              ; preds = %136
  %138 = load %struct.debug_name*, %struct.debug_name** %10, align 8
  %139 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %138, i32 0, i32 3
  %140 = load %struct.debug_name*, %struct.debug_name** %139, align 8
  store %struct.debug_name* %140, %struct.debug_name** %10, align 8
  br label %103

141:                                              ; preds = %103
  br label %142

142:                                              ; preds = %141, %92
  br label %143

143:                                              ; preds = %142
  %144 = load %struct.debug_file*, %struct.debug_file** %8, align 8
  %145 = getelementptr inbounds %struct.debug_file, %struct.debug_file* %144, i32 0, i32 1
  %146 = load %struct.debug_file*, %struct.debug_file** %145, align 8
  store %struct.debug_file* %146, %struct.debug_file** %8, align 8
  br label %89

147:                                              ; preds = %89
  %148 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %147, %131, %67, %17
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @debug_error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
