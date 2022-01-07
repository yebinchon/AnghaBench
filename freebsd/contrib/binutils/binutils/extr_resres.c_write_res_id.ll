; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resres.c_write_res_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resres.c_write_res_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }
%struct.bin_res_id = type { %struct.bin_res_id*, %struct.bin_res_id* }

@BIN_RES_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_7__*)* @write_res_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_res_id(i32* %0, i32 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bin_res_id*, align 8
  %10 = alloca %struct.bin_res_id, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %91

15:                                               ; preds = %3
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %30

24:                                               ; preds = %15
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  br label %30

30:                                               ; preds = %24, %23
  %31 = phi i32 [ 0, %23 ], [ %29, %24 ]
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %83

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = call i64 @xmalloc(i32 %39)
  %41 = inttoptr i64 %40 to %struct.bin_res_id*
  store %struct.bin_res_id* %41, %struct.bin_res_id** %9, align 8
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %64, %35
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 %44, 1
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %42
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.bin_res_id*, %struct.bin_res_id** %9, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = getelementptr inbounds %struct.bin_res_id, %struct.bin_res_id* %49, i64 %52
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @windres_put_16(i32* %48, %struct.bin_res_id* %53, i32 %62)
  br label %64

64:                                               ; preds = %47
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %42

67:                                               ; preds = %42
  %68 = load i32*, i32** %4, align 8
  %69 = load %struct.bin_res_id*, %struct.bin_res_id** %9, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = getelementptr inbounds %struct.bin_res_id, %struct.bin_res_id* %69, i64 %72
  %74 = call i32 @windres_put_16(i32* %68, %struct.bin_res_id* %73, i32 0)
  %75 = load i32*, i32** %4, align 8
  %76 = load %struct.bin_res_id*, %struct.bin_res_id** %9, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 4
  %81 = trunc i64 %80 to i32
  %82 = call i32 @set_windres_bfd_content(i32* %75, %struct.bin_res_id* %76, i32 %77, i32 %81)
  br label %83

83:                                               ; preds = %67, %30
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 4
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = add i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %5, align 4
  br label %115

91:                                               ; preds = %3
  %92 = load i32*, i32** %4, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %111

94:                                               ; preds = %91
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds %struct.bin_res_id, %struct.bin_res_id* %10, i32 0, i32 1
  %97 = load %struct.bin_res_id*, %struct.bin_res_id** %96, align 8
  %98 = call i32 @windres_put_16(i32* %95, %struct.bin_res_id* %97, i32 65535)
  %99 = load i32*, i32** %4, align 8
  %100 = getelementptr inbounds %struct.bin_res_id, %struct.bin_res_id* %10, i32 0, i32 0
  %101 = load %struct.bin_res_id*, %struct.bin_res_id** %100, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @windres_put_16(i32* %99, %struct.bin_res_id* %101, i32 %105)
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @BIN_RES_ID, align 4
  %110 = call i32 @set_windres_bfd_content(i32* %107, %struct.bin_res_id* %10, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %94, %91
  %112 = load i32, i32* @BIN_RES_ID, align 4
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %111, %83
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @windres_put_16(i32*, %struct.bin_res_id*, i32) #1

declare dso_local i32 @set_windres_bfd_content(i32*, %struct.bin_res_id*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
