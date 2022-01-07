; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_ieee_write_debug_part.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_ieee_write_debug_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i64, i32, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_19__ = type { %struct.TYPE_19__*, %struct.TYPE_20__* }

@OBS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@output_ptr = common dso_local global i8* null, align 8
@output_ptr_start = common dso_local global i8* null, align 8
@output_ptr_end = common dso_local global i8* null, align 8
@output_bfd = common dso_local global %struct.TYPE_20__* null, align 8
@SEC_DEBUGGING = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*)* @ieee_write_debug_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ieee_write_debug_part(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %15 = call %struct.TYPE_18__* @IEEE_DATA(%struct.TYPE_20__* %14)
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %4, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %5, align 8
  %19 = load i32, i32* @OBS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %6, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %7, align 8
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* %8, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %25 = call i8* @bfd_tell(%struct.TYPE_20__* %24)
  store i8* %25, i8** %9, align 8
  store i8* %22, i8** @output_ptr, align 8
  store i8* %22, i8** @output_ptr_start, align 8
  %26 = load i32, i32* @OBS, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %22, i64 %27
  store i8* %28, i8** @output_ptr_end, align 8
  store i8* %22, i8** @output_ptr, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_20__* %29, %struct.TYPE_20__** @output_bfd, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %31 = icmp eq %struct.TYPE_19__* %30, null
  br i1 %31, label %32, label %82

32:                                               ; preds = %1
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %34, align 8
  store %struct.TYPE_21__* %35, %struct.TYPE_21__** %10, align 8
  br label %36

36:                                               ; preds = %48, %32
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %38 = icmp ne %struct.TYPE_21__* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @SEC_DEBUGGING, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %52

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %50, align 8
  store %struct.TYPE_21__* %51, %struct.TYPE_21__** %10, align 8
  br label %36

52:                                               ; preds = %46, %36
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %54 = icmp eq %struct.TYPE_21__* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  store i8* null, i8** %59, align 8
  %60 = load i64, i64* @TRUE, align 8
  store i64 %60, i64* %2, align 8
  store i32 1, i32* %11, align 4
  br label %136

61:                                               ; preds = %52
  %62 = load i8*, i8** %9, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  store i8* %62, i8** %66, align 8
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %74 = call i64 @bfd_bwrite(i32 %69, i64 %72, %struct.TYPE_20__* %73)
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %61
  %80 = load i64, i64* @FALSE, align 8
  store i64 %80, i64* %2, align 8
  store i32 1, i32* %11, align 4
  br label %136

81:                                               ; preds = %61
  br label %134

82:                                               ; preds = %1
  br label %83

83:                                               ; preds = %114, %82
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %85 = icmp ne %struct.TYPE_19__* %84, null
  br i1 %85, label %86, label %118

86:                                               ; preds = %83
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %88, align 8
  store %struct.TYPE_20__* %89, %struct.TYPE_20__** %12, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %91 = call %struct.TYPE_18__* @IEEE_DATA(%struct.TYPE_20__* %90)
  store %struct.TYPE_18__* %91, %struct.TYPE_18__** %13, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %114

98:                                               ; preds = %86
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* @SEEK_SET, align 4
  %106 = call i64 @bfd_seek(%struct.TYPE_20__* %99, i8* %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %98
  %109 = load i64, i64* @FALSE, align 8
  store i64 %109, i64* %2, align 8
  store i32 1, i32* %11, align 4
  br label %136

110:                                              ; preds = %98
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %113 = call i32 @relocate_debug(%struct.TYPE_20__* %111, %struct.TYPE_20__* %112)
  br label %114

114:                                              ; preds = %110, %86
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %116, align 8
  store %struct.TYPE_19__* %117, %struct.TYPE_19__** %5, align 8
  br label %83

118:                                              ; preds = %83
  %119 = load i64, i64* %8, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load i8*, i8** %9, align 8
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  store i8* %122, i8** %126, align 8
  br label %132

127:                                              ; preds = %118
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  store i8* null, i8** %131, align 8
  br label %132

132:                                              ; preds = %127, %121
  %133 = call i32 (...) @flush()
  br label %134

134:                                              ; preds = %132, %81
  %135 = load i64, i64* @TRUE, align 8
  store i64 %135, i64* %2, align 8
  store i32 1, i32* %11, align 4
  br label %136

136:                                              ; preds = %134, %108, %79, %55
  %137 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %137)
  %138 = load i64, i64* %2, align 8
  ret i64 %138
}

declare dso_local %struct.TYPE_18__* @IEEE_DATA(%struct.TYPE_20__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @bfd_tell(%struct.TYPE_20__*) #1

declare dso_local i64 @bfd_bwrite(i32, i64, %struct.TYPE_20__*) #1

declare dso_local i64 @bfd_seek(%struct.TYPE_20__*, i8*, i32) #1

declare dso_local i32 @relocate_debug(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @flush(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
