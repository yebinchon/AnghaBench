; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/gcov/extr_gcc_3_4.c_gcov_iter_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/gcov/extr_gcc_3_4.c_gcov_iter_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_iterator = type { i32, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.seq_file = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32* }
%struct.TYPE_7__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GCOV_DATA_MAGIC = common dso_local global i32 0, align 4
@GCOV_TAG_FUNCTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gcov_iter_write(%struct.gcov_iterator* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.gcov_iterator*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i32, align 4
  store %struct.gcov_iterator* %0, %struct.gcov_iterator** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %9 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %97 [
    i32 134, label %11
    i32 129, label %15
    i32 128, label %23
    i32 131, label %31
    i32 130, label %35
    i32 132, label %38
    i32 133, label %45
    i32 135, label %52
    i32 136, label %60
    i32 137, label %73
  ]

11:                                               ; preds = %2
  %12 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %13 = load i32, i32* @GCOV_DATA_MAGIC, align 4
  %14 = call i32 @seq_write_gcov_u32(%struct.seq_file* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  br label %97

15:                                               ; preds = %2
  %16 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %17 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %18 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %17, i32 0, i32 3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @seq_write_gcov_u32(%struct.seq_file* %16, i32 %21)
  store i32 %22, i32* %5, align 4
  br label %97

23:                                               ; preds = %2
  %24 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %25 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %26 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %25, i32 0, i32 3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @seq_write_gcov_u32(%struct.seq_file* %24, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %97

31:                                               ; preds = %2
  %32 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %33 = load i32, i32* @GCOV_TAG_FUNCTION, align 4
  %34 = call i32 @seq_write_gcov_u32(%struct.seq_file* %32, i32 %33)
  store i32 %34, i32* %5, align 4
  br label %97

35:                                               ; preds = %2
  %36 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %37 = call i32 @seq_write_gcov_u32(%struct.seq_file* %36, i32 2)
  store i32 %37, i32* %5, align 4
  br label %97

38:                                               ; preds = %2
  %39 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %40 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %41 = call %struct.TYPE_8__* @get_func(%struct.gcov_iterator* %40)
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @seq_write_gcov_u32(%struct.seq_file* %39, i32 %43)
  store i32 %44, i32* %5, align 4
  br label %97

45:                                               ; preds = %2
  %46 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %47 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %48 = call %struct.TYPE_8__* @get_func(%struct.gcov_iterator* %47)
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @seq_write_gcov_u32(%struct.seq_file* %46, i32 %50)
  store i32 %51, i32* %5, align 4
  br label %97

52:                                               ; preds = %2
  %53 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %54 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %55 = call %struct.TYPE_7__* @get_type(%struct.gcov_iterator* %54)
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @GCOV_TAG_FOR_COUNTER(i32 %57)
  %59 = call i32 @seq_write_gcov_u32(%struct.seq_file* %53, i32 %58)
  store i32 %59, i32* %5, align 4
  br label %97

60:                                               ; preds = %2
  %61 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %62 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %63 = call %struct.TYPE_8__* @get_func(%struct.gcov_iterator* %62)
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %67 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %70, 2
  %72 = call i32 @seq_write_gcov_u32(%struct.seq_file* %61, i32 %71)
  store i32 %72, i32* %5, align 4
  br label %97

73:                                               ; preds = %2
  %74 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %75 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %76 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %75, i32 0, i32 3
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %81 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %87 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %90 = call %struct.TYPE_7__* @get_type(%struct.gcov_iterator* %89)
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %88, %92
  %94 = getelementptr inbounds i32, i32* %85, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @seq_write_gcov_u64(%struct.seq_file* %74, i32 %95)
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %2, %73, %60, %52, %45, %38, %35, %31, %23, %15, %11
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @seq_write_gcov_u32(%struct.seq_file*, i32) #1

declare dso_local %struct.TYPE_8__* @get_func(%struct.gcov_iterator*) #1

declare dso_local i32 @GCOV_TAG_FOR_COUNTER(i32) #1

declare dso_local %struct.TYPE_7__* @get_type(%struct.gcov_iterator*) #1

declare dso_local i32 @seq_write_gcov_u64(%struct.seq_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
