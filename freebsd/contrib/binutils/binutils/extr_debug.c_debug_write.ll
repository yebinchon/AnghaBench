; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_write_fns = type { i32 (i8*, i32)*, i32 (i8*, i32)* }
%struct.debug_handle = type { i64, i32, %struct.debug_unit*, i32*, i32, i32, i32 }
%struct.debug_unit = type { %struct.debug_file*, i32, %struct.debug_unit* }
%struct.debug_file = type { %struct.TYPE_2__*, i32, %struct.debug_file* }
%struct.TYPE_2__ = type { %struct.debug_name* }
%struct.debug_name = type { %struct.debug_name* }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @debug_write(i8* %0, %struct.debug_write_fns* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.debug_write_fns*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.debug_handle*, align 8
  %9 = alloca %struct.debug_unit*, align 8
  %10 = alloca %struct.debug_file*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.debug_name*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.debug_write_fns* %1, %struct.debug_write_fns** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.debug_handle*
  store %struct.debug_handle* %14, %struct.debug_handle** %8, align 8
  %15 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %16 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %20 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %23 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %25 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %24, i32 0, i32 3
  store i32* null, i32** %25, align 8
  %26 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %27 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %26, i32 0, i32 2
  %28 = load %struct.debug_unit*, %struct.debug_unit** %27, align 8
  store %struct.debug_unit* %28, %struct.debug_unit** %9, align 8
  br label %29

29:                                               ; preds = %122, %3
  %30 = load %struct.debug_unit*, %struct.debug_unit** %9, align 8
  %31 = icmp ne %struct.debug_unit* %30, null
  br i1 %31, label %32, label %126

32:                                               ; preds = %29
  %33 = load %struct.debug_unit*, %struct.debug_unit** %9, align 8
  %34 = getelementptr inbounds %struct.debug_unit, %struct.debug_unit* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %37 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %39 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.debug_write_fns*, %struct.debug_write_fns** %6, align 8
  %41 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %40, i32 0, i32 1
  %42 = load i32 (i8*, i32)*, i32 (i8*, i32)** %41, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.debug_unit*, %struct.debug_unit** %9, align 8
  %45 = getelementptr inbounds %struct.debug_unit, %struct.debug_unit* %44, i32 0, i32 0
  %46 = load %struct.debug_file*, %struct.debug_file** %45, align 8
  %47 = getelementptr inbounds %struct.debug_file, %struct.debug_file* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 %42(i8* %43, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %32
  %52 = load i64, i64* @FALSE, align 8
  store i64 %52, i64* %4, align 8
  br label %128

53:                                               ; preds = %32
  %54 = load i64, i64* @TRUE, align 8
  store i64 %54, i64* %11, align 8
  %55 = load %struct.debug_unit*, %struct.debug_unit** %9, align 8
  %56 = getelementptr inbounds %struct.debug_unit, %struct.debug_unit* %55, i32 0, i32 0
  %57 = load %struct.debug_file*, %struct.debug_file** %56, align 8
  store %struct.debug_file* %57, %struct.debug_file** %10, align 8
  br label %58

58:                                               ; preds = %109, %53
  %59 = load %struct.debug_file*, %struct.debug_file** %10, align 8
  %60 = icmp ne %struct.debug_file* %59, null
  br i1 %60, label %61, label %113

61:                                               ; preds = %58
  %62 = load i64, i64* %11, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i64, i64* @FALSE, align 8
  store i64 %65, i64* %11, align 8
  br label %79

66:                                               ; preds = %61
  %67 = load %struct.debug_write_fns*, %struct.debug_write_fns** %6, align 8
  %68 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %67, i32 0, i32 0
  %69 = load i32 (i8*, i32)*, i32 (i8*, i32)** %68, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = load %struct.debug_file*, %struct.debug_file** %10, align 8
  %72 = getelementptr inbounds %struct.debug_file, %struct.debug_file* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 %69(i8* %70, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %66
  %77 = load i64, i64* @FALSE, align 8
  store i64 %77, i64* %4, align 8
  br label %128

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78, %64
  %80 = load %struct.debug_file*, %struct.debug_file** %10, align 8
  %81 = getelementptr inbounds %struct.debug_file, %struct.debug_file* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = icmp ne %struct.TYPE_2__* %82, null
  br i1 %83, label %84, label %108

84:                                               ; preds = %79
  %85 = load %struct.debug_file*, %struct.debug_file** %10, align 8
  %86 = getelementptr inbounds %struct.debug_file, %struct.debug_file* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load %struct.debug_name*, %struct.debug_name** %88, align 8
  store %struct.debug_name* %89, %struct.debug_name** %12, align 8
  br label %90

90:                                               ; preds = %103, %84
  %91 = load %struct.debug_name*, %struct.debug_name** %12, align 8
  %92 = icmp ne %struct.debug_name* %91, null
  br i1 %92, label %93, label %107

93:                                               ; preds = %90
  %94 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %95 = load %struct.debug_write_fns*, %struct.debug_write_fns** %6, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = load %struct.debug_name*, %struct.debug_name** %12, align 8
  %98 = call i32 @debug_write_name(%struct.debug_handle* %94, %struct.debug_write_fns* %95, i8* %96, %struct.debug_name* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %93
  %101 = load i64, i64* @FALSE, align 8
  store i64 %101, i64* %4, align 8
  br label %128

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %102
  %104 = load %struct.debug_name*, %struct.debug_name** %12, align 8
  %105 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %104, i32 0, i32 0
  %106 = load %struct.debug_name*, %struct.debug_name** %105, align 8
  store %struct.debug_name* %106, %struct.debug_name** %12, align 8
  br label %90

107:                                              ; preds = %90
  br label %108

108:                                              ; preds = %107, %79
  br label %109

109:                                              ; preds = %108
  %110 = load %struct.debug_file*, %struct.debug_file** %10, align 8
  %111 = getelementptr inbounds %struct.debug_file, %struct.debug_file* %110, i32 0, i32 2
  %112 = load %struct.debug_file*, %struct.debug_file** %111, align 8
  store %struct.debug_file* %112, %struct.debug_file** %10, align 8
  br label %58

113:                                              ; preds = %58
  %114 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %115 = load %struct.debug_write_fns*, %struct.debug_write_fns** %6, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = call i32 @debug_write_linenos(%struct.debug_handle* %114, %struct.debug_write_fns* %115, i8* %116, i32 -1)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %113
  %120 = load i64, i64* @FALSE, align 8
  store i64 %120, i64* %4, align 8
  br label %128

121:                                              ; preds = %113
  br label %122

122:                                              ; preds = %121
  %123 = load %struct.debug_unit*, %struct.debug_unit** %9, align 8
  %124 = getelementptr inbounds %struct.debug_unit, %struct.debug_unit* %123, i32 0, i32 2
  %125 = load %struct.debug_unit*, %struct.debug_unit** %124, align 8
  store %struct.debug_unit* %125, %struct.debug_unit** %9, align 8
  br label %29

126:                                              ; preds = %29
  %127 = load i64, i64* @TRUE, align 8
  store i64 %127, i64* %4, align 8
  br label %128

128:                                              ; preds = %126, %119, %100, %76, %51
  %129 = load i64, i64* %4, align 8
  ret i64 %129
}

declare dso_local i32 @debug_write_name(%struct.debug_handle*, %struct.debug_write_fns*, i8*, %struct.debug_name*) #1

declare dso_local i32 @debug_write_linenos(%struct.debug_handle*, %struct.debug_write_fns*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
