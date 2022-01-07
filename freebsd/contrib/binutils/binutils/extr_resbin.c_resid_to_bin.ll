; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_resid_to_bin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_resid_to_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.bin_res_id = type { %struct.bin_res_id*, %struct.bin_res_id* }

@BIN_RES_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_7__*)* @resid_to_bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resid_to_bin(i32* %0, i32 %1, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bin_res_id, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bin_res_id*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %36, label %13

13:                                               ; preds = %3
  %14 = load i32*, i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds %struct.bin_res_id, %struct.bin_res_id* %6, i32 0, i32 1
  %19 = load %struct.bin_res_id*, %struct.bin_res_id** %18, align 8
  %20 = call i32 @windres_put_16(i32* %17, %struct.bin_res_id* %19, i32 65535)
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds %struct.bin_res_id, %struct.bin_res_id* %6, i32 0, i32 0
  %23 = load %struct.bin_res_id*, %struct.bin_res_id** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @windres_put_16(i32* %21, %struct.bin_res_id* %23, i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @BIN_RES_ID, align 4
  %31 = call i32 @set_windres_bfd_content(i32* %28, %struct.bin_res_id* %6, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %16, %13
  %33 = load i32, i32* @BIN_RES_ID, align 4
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %109

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @unichar_len(i32* %46)
  br label %49

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %42
  %50 = phi i32 [ %47, %42 ], [ 0, %48 ]
  store i32 %50, i32* %7, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %101

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = trunc i64 %57 to i32
  %59 = call i64 @reswr_alloc(i32 %58)
  %60 = inttoptr i64 %59 to %struct.bin_res_id*
  store %struct.bin_res_id* %60, %struct.bin_res_id** %8, align 8
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %81, %53
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %61
  %66 = load i32*, i32** %4, align 8
  %67 = load %struct.bin_res_id*, %struct.bin_res_id** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 4
  %71 = getelementptr inbounds %struct.bin_res_id, %struct.bin_res_id* %67, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @windres_put_16(i32* %66, %struct.bin_res_id* %71, i32 %79)
  br label %81

81:                                               ; preds = %65
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %61

84:                                               ; preds = %61
  %85 = load i32*, i32** %4, align 8
  %86 = load %struct.bin_res_id*, %struct.bin_res_id** %8, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 4
  %90 = getelementptr inbounds %struct.bin_res_id, %struct.bin_res_id* %86, i64 %89
  %91 = call i32 @windres_put_16(i32* %85, %struct.bin_res_id* %90, i32 0)
  %92 = load i32*, i32** %4, align 8
  %93 = load %struct.bin_res_id*, %struct.bin_res_id** %8, align 8
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 4
  %99 = trunc i64 %98 to i32
  %100 = call i32 @set_windres_bfd_content(i32* %92, %struct.bin_res_id* %93, i32 %94, i32 %99)
  br label %101

101:                                              ; preds = %84, %49
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 4
  %106 = trunc i64 %105 to i32
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %101, %32
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @windres_put_16(i32*, %struct.bin_res_id*, i32) #1

declare dso_local i32 @set_windres_bfd_content(i32*, %struct.bin_res_id*, i32, i32) #1

declare dso_local i32 @unichar_len(i32*) #1

declare dso_local i64 @reswr_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
