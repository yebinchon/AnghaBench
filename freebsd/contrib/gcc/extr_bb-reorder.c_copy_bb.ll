; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bb-reorder.c_copy_bb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bb-reorder.c_copy_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32, i32*, i32* }
%struct.TYPE_20__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }

@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Duplicated bb %d (created bb %d)\0A\00", align 1
@array_size = common dso_local global i32 0, align 4
@last_basic_block = common dso_local global i32 0, align 4
@bbd = common dso_local global %struct.TYPE_22__* null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Growing the dynamic array to %d elements.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_21__*, i32)* @copy_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @copy_bb(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1, %struct.TYPE_21__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %15 = call %struct.TYPE_21__* @duplicate_block(%struct.TYPE_21__* %12, %struct.TYPE_20__* %13, %struct.TYPE_21__* %14)
  store %struct.TYPE_21__* %15, %struct.TYPE_21__** %9, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %18 = call i32 @BB_COPY_PARTITION(%struct.TYPE_21__* %16, %struct.TYPE_21__* %17)
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %23 = icmp eq %struct.TYPE_21__* %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @gcc_assert(i32 %24)
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @gcc_assert(i32 %36)
  %38 = load i64, i64* @dump_file, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %4
  %41 = load i64, i64* @dump_file, align 8
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %40, %4
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  store i32 %50, i32* %55, align 4
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %57, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 1
  store %struct.TYPE_21__* %58, %struct.TYPE_21__** %60, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 1
  store %struct.TYPE_21__* %61, %struct.TYPE_21__** %63, align 8
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @array_size, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %49
  %70 = load i32, i32* @last_basic_block, align 4
  %71 = load i32, i32* @array_size, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %131

73:                                               ; preds = %69, %49
  %74 = load i32, i32* @last_basic_block, align 4
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  %79 = call i32 @MAX(i32 %74, i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @GET_ARRAY_SIZE(i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** @bbd, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 4
  %86 = trunc i64 %85 to i32
  %87 = call %struct.TYPE_22__* @xrealloc(%struct.TYPE_22__* %82, i32 %86)
  store %struct.TYPE_22__* %87, %struct.TYPE_22__** @bbd, align 8
  %88 = load i32, i32* @array_size, align 4
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %119, %73
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %122

93:                                               ; preds = %89
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** @bbd, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 0
  store i32 -1, i32* %98, align 8
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** @bbd, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 1
  store i32 -1, i32* %103, align 4
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** @bbd, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 2
  store i32 -1, i32* %108, align 8
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** @bbd, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 4
  store i32* null, i32** %113, align 8
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** @bbd, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 3
  store i32* null, i32** %118, align 8
  br label %119

119:                                              ; preds = %93
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %10, align 4
  br label %89

122:                                              ; preds = %89
  %123 = load i32, i32* %11, align 4
  store i32 %123, i32* @array_size, align 4
  %124 = load i64, i64* @dump_file, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i64, i64* @dump_file, align 8
  %128 = load i32, i32* @array_size, align 4
  %129 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %127, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %126, %122
  br label %131

131:                                              ; preds = %130, %69
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** @bbd, align 8
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 1
  store i32 %132, i32* %139, align 4
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  ret %struct.TYPE_21__* %140
}

declare dso_local %struct.TYPE_21__* @duplicate_block(%struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @BB_COPY_PARTITION(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @fprintf(i64, i8*, i32, ...) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @GET_ARRAY_SIZE(i32) #1

declare dso_local %struct.TYPE_22__* @xrealloc(%struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
