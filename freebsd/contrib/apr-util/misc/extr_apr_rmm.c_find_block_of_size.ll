; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/misc/extr_apr_rmm.c_find_block_of_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/misc/extr_apr_rmm.c_find_block_of_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.rmm_block_t = type { i64, i64, i64 }

@RMM_BLOCK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i64)* @find_block_of_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_block_of_size(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rmm_block_t*, align 8
  %10 = alloca %struct.rmm_block_t*, align 8
  %11 = alloca %struct.rmm_block_t*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %17

17:                                               ; preds = %56, %2
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %60

20:                                               ; preds = %17
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = bitcast %struct.TYPE_4__* %23 to i8*
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = bitcast i8* %26 to %struct.rmm_block_t*
  store %struct.rmm_block_t* %27, %struct.rmm_block_t** %9, align 8
  %28 = load %struct.rmm_block_t*, %struct.rmm_block_t** %9, align 8
  %29 = getelementptr inbounds %struct.rmm_block_t, %struct.rmm_block_t* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %20
  %34 = load i64, i64* %6, align 8
  store i64 %34, i64* %3, align 8
  br label %128

35:                                               ; preds = %20
  %36 = load %struct.rmm_block_t*, %struct.rmm_block_t** %9, align 8
  %37 = getelementptr inbounds %struct.rmm_block_t, %struct.rmm_block_t* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %35
  %42 = load i64, i64* %8, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.rmm_block_t*, %struct.rmm_block_t** %9, align 8
  %46 = getelementptr inbounds %struct.rmm_block_t, %struct.rmm_block_t* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44, %41
  %51 = load %struct.rmm_block_t*, %struct.rmm_block_t** %9, align 8
  %52 = getelementptr inbounds %struct.rmm_block_t, %struct.rmm_block_t* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %6, align 8
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %50, %44
  br label %56

56:                                               ; preds = %55, %35
  %57 = load %struct.rmm_block_t*, %struct.rmm_block_t** %9, align 8
  %58 = getelementptr inbounds %struct.rmm_block_t, %struct.rmm_block_t* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %6, align 8
  br label %17

60:                                               ; preds = %17
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @RMM_BLOCK_SIZE, align 8
  %63 = load i64, i64* %5, align 8
  %64 = add nsw i64 %62, %63
  %65 = icmp sgt i64 %61, %64
  br i1 %65, label %66, label %126

66:                                               ; preds = %60
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = bitcast %struct.TYPE_4__* %69 to i8*
  %71 = load i64, i64* %7, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = bitcast i8* %72 to %struct.rmm_block_t*
  store %struct.rmm_block_t* %73, %struct.rmm_block_t** %10, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = bitcast %struct.TYPE_4__* %76 to i8*
  %78 = load i64, i64* %7, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  %80 = load i64, i64* %5, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  %82 = bitcast i8* %81 to %struct.rmm_block_t*
  store %struct.rmm_block_t* %82, %struct.rmm_block_t** %11, align 8
  %83 = load %struct.rmm_block_t*, %struct.rmm_block_t** %10, align 8
  %84 = getelementptr inbounds %struct.rmm_block_t, %struct.rmm_block_t* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %5, align 8
  %87 = sub nsw i64 %85, %86
  %88 = load %struct.rmm_block_t*, %struct.rmm_block_t** %11, align 8
  %89 = getelementptr inbounds %struct.rmm_block_t, %struct.rmm_block_t* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.rmm_block_t*, %struct.rmm_block_t** %10, align 8
  %91 = getelementptr inbounds %struct.rmm_block_t, %struct.rmm_block_t* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.rmm_block_t*, %struct.rmm_block_t** %11, align 8
  %94 = getelementptr inbounds %struct.rmm_block_t, %struct.rmm_block_t* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  %95 = load i64, i64* %7, align 8
  %96 = load %struct.rmm_block_t*, %struct.rmm_block_t** %11, align 8
  %97 = getelementptr inbounds %struct.rmm_block_t, %struct.rmm_block_t* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  %98 = load i64, i64* %5, align 8
  %99 = load %struct.rmm_block_t*, %struct.rmm_block_t** %10, align 8
  %100 = getelementptr inbounds %struct.rmm_block_t, %struct.rmm_block_t* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* %5, align 8
  %103 = add nsw i64 %101, %102
  %104 = load %struct.rmm_block_t*, %struct.rmm_block_t** %10, align 8
  %105 = getelementptr inbounds %struct.rmm_block_t, %struct.rmm_block_t* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  %106 = load %struct.rmm_block_t*, %struct.rmm_block_t** %11, align 8
  %107 = getelementptr inbounds %struct.rmm_block_t, %struct.rmm_block_t* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %66
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = bitcast %struct.TYPE_4__* %113 to i8*
  %115 = load %struct.rmm_block_t*, %struct.rmm_block_t** %11, align 8
  %116 = getelementptr inbounds %struct.rmm_block_t, %struct.rmm_block_t* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  %119 = bitcast i8* %118 to %struct.rmm_block_t*
  store %struct.rmm_block_t* %119, %struct.rmm_block_t** %10, align 8
  %120 = load i64, i64* %7, align 8
  %121 = load i64, i64* %5, align 8
  %122 = add nsw i64 %120, %121
  %123 = load %struct.rmm_block_t*, %struct.rmm_block_t** %10, align 8
  %124 = getelementptr inbounds %struct.rmm_block_t, %struct.rmm_block_t* %123, i32 0, i32 2
  store i64 %122, i64* %124, align 8
  br label %125

125:                                              ; preds = %110, %66
  br label %126

126:                                              ; preds = %125, %60
  %127 = load i64, i64* %7, align 8
  store i64 %127, i64* %3, align 8
  br label %128

128:                                              ; preds = %126, %33
  %129 = load i64, i64* %3, align 8
  ret i64 %129
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
