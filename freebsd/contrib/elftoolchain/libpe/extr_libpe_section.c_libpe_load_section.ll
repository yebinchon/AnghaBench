; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libpe/extr_libpe_section.c_libpe_load_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libpe/extr_libpe_section.c_libpe_load_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8* }

@LIBPE_F_LOAD_SECTION = common dso_local global i32 0, align 4
@LIBPE_F_SPECIAL_FILE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libpe_load_section(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [4 x i8], align 1
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = icmp ne %struct.TYPE_14__* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %14 = icmp ne %struct.TYPE_13__* %13, null
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi i1 [ false, %2 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @LIBPE_F_LOAD_SECTION, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 2
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %6, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %15
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = call %struct.TYPE_12__* @libpe_alloc_buffer(%struct.TYPE_13__* %34, i64 0)
  %36 = load i32, i32* @LIBPE_F_LOAD_SECTION, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  store i32 0, i32* %3, align 4
  br label %137

41:                                               ; preds = %15
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @LIBPE_F_SPECIAL_FILE, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %41
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* @SEEK_SET, align 4
  %57 = call i64 @lseek(i32 %51, i32 %55, i32 %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* @EIO, align 4
  store i32 %60, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %137

61:                                               ; preds = %48
  br label %62

62:                                               ; preds = %61, %41
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call %struct.TYPE_12__* @libpe_alloc_buffer(%struct.TYPE_13__* %63, i64 %66)
  store %struct.TYPE_12__* %67, %struct.TYPE_12__** %7, align 8
  %68 = icmp eq %struct.TYPE_12__* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i32 -1, i32* %3, align 4
  br label %137

70:                                               ; preds = %62
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @read(i32 %73, i8* %77, i64 %80)
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %81, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %70
  %87 = load i32, i32* @EIO, align 4
  store i32 %87, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %137

88:                                               ; preds = %70
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %131

93:                                               ; preds = %88
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %98 = call i64 @read(i32 %96, i8* %97, i64 4)
  %99 = icmp ne i64 %98, 4
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i32, i32* @EIO, align 4
  store i32 %101, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %137

102:                                              ; preds = %93
  %103 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %104 = call i64 @le32dec(i8* %103)
  store i64 %104, i64* %8, align 8
  %105 = load i64, i64* %8, align 8
  %106 = icmp ugt i64 %105, 4
  br i1 %106, label %107, label %130

107:                                              ; preds = %102
  %108 = load i64, i64* %8, align 8
  %109 = sub i64 %108, 4
  store i64 %109, i64* %8, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %111 = load i64, i64* %8, align 8
  %112 = call %struct.TYPE_12__* @libpe_alloc_buffer(%struct.TYPE_13__* %110, i64 %111)
  store %struct.TYPE_12__* %112, %struct.TYPE_12__** %7, align 8
  %113 = icmp eq %struct.TYPE_12__* %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  store i32 -1, i32* %3, align 4
  br label %137

115:                                              ; preds = %107
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = load i64, i64* %8, align 8
  %124 = call i64 @read(i32 %118, i8* %122, i64 %123)
  %125 = load i64, i64* %8, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %115
  %128 = load i32, i32* @EIO, align 4
  store i32 %128, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %137

129:                                              ; preds = %115
  br label %130

130:                                              ; preds = %129, %102
  br label %131

131:                                              ; preds = %130, %88
  %132 = load i32, i32* @LIBPE_F_LOAD_SECTION, align 4
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %131, %127, %114, %100, %86, %69, %59, %33
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_12__* @libpe_alloc_buffer(%struct.TYPE_13__*, i64) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i64 @le32dec(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
