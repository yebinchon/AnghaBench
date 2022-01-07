; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bfdio.c_bfd_bwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bfdio.c_bfd_bwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__*, %struct.bfd_in_memory* }
%struct.TYPE_5__ = type { i64 (%struct.TYPE_6__*, i8*, i32)* }
%struct.bfd_in_memory = type { i32, i64 }

@BFD_IN_MEMORY = common dso_local global i32 0, align 4
@bfd_error_system_call = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_bwrite(i8* %0, i32 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bfd_in_memory*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @BFD_IN_MEMORY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %91

18:                                               ; preds = %3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %21 = load %struct.bfd_in_memory*, %struct.bfd_in_memory** %20, align 8
  store %struct.bfd_in_memory* %21, %struct.bfd_in_memory** %9, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %6, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %27, %28
  %30 = load %struct.bfd_in_memory*, %struct.bfd_in_memory** %9, align 8
  %31 = getelementptr inbounds %struct.bfd_in_memory, %struct.bfd_in_memory* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %34, label %72

34:                                               ; preds = %18
  %35 = load %struct.bfd_in_memory*, %struct.bfd_in_memory** %9, align 8
  %36 = getelementptr inbounds %struct.bfd_in_memory, %struct.bfd_in_memory* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 127
  %39 = and i32 %38, -128
  store i32 %39, i32* %11, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %42, %43
  %45 = load %struct.bfd_in_memory*, %struct.bfd_in_memory** %9, align 8
  %46 = getelementptr inbounds %struct.bfd_in_memory, %struct.bfd_in_memory* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.bfd_in_memory*, %struct.bfd_in_memory** %9, align 8
  %48 = getelementptr inbounds %struct.bfd_in_memory, %struct.bfd_in_memory* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 127
  %51 = and i32 %50, -128
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %34
  %56 = load %struct.bfd_in_memory*, %struct.bfd_in_memory** %9, align 8
  %57 = getelementptr inbounds %struct.bfd_in_memory, %struct.bfd_in_memory* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i64 @bfd_realloc(i64 %58, i32 %59)
  %61 = load %struct.bfd_in_memory*, %struct.bfd_in_memory** %9, align 8
  %62 = getelementptr inbounds %struct.bfd_in_memory, %struct.bfd_in_memory* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load %struct.bfd_in_memory*, %struct.bfd_in_memory** %9, align 8
  %64 = getelementptr inbounds %struct.bfd_in_memory, %struct.bfd_in_memory* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %55
  %68 = load %struct.bfd_in_memory*, %struct.bfd_in_memory** %9, align 8
  %69 = getelementptr inbounds %struct.bfd_in_memory, %struct.bfd_in_memory* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  store i32 0, i32* %4, align 4
  br label %129

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70, %34
  br label %72

72:                                               ; preds = %71, %18
  %73 = load %struct.bfd_in_memory*, %struct.bfd_in_memory** %9, align 8
  %74 = getelementptr inbounds %struct.bfd_in_memory, %struct.bfd_in_memory* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %75, %79
  %81 = load i8*, i8** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = call i32 @memcpy(i64 %80, i8* %81, i64 %83)
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %4, align 4
  br label %129

91:                                               ; preds = %3
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = icmp ne %struct.TYPE_5__* %94, null
  br i1 %95, label %96, label %106

96:                                               ; preds = %91
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64 (%struct.TYPE_6__*, i8*, i32)*, i64 (%struct.TYPE_6__*, i8*, i32)** %100, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %103 = load i8*, i8** %5, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call i64 %101(%struct.TYPE_6__* %102, i8* %103, i32 %104)
  store i64 %105, i64* %8, align 8
  br label %107

106:                                              ; preds = %91
  store i64 0, i64* %8, align 8
  br label %107

107:                                              ; preds = %106, %96
  %108 = load i64, i64* %8, align 8
  %109 = icmp ne i64 %108, -1
  br i1 %109, label %110, label %118

110:                                              ; preds = %107
  %111 = load i64, i64* %8, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = add i64 %115, %111
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %113, align 4
  br label %118

118:                                              ; preds = %110, %107
  %119 = load i64, i64* %8, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = icmp ne i64 %119, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i32, i32* @bfd_error_system_call, align 4
  %125 = call i32 @bfd_set_error(i32 %124)
  br label %126

126:                                              ; preds = %123, %118
  %127 = load i64, i64* %8, align 8
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %126, %72, %67
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i64 @bfd_realloc(i64, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @bfd_set_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
