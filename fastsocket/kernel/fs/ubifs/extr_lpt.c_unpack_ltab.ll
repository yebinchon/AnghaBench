; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_unpack_ltab.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_unpack_ltab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@UBIFS_LPT_CRC_BYTES = common dso_local global i32 0, align 4
@UBIFS_LPT_LTAB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i8*)* @unpack_ltab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_ltab(%struct.ubifs_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr i8, i8* %12, i64 %14
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %17 = load i32, i32* @UBIFS_LPT_LTAB, align 4
  %18 = call i32 @check_lpt_type(i32** %6, i32* %8, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %3, align 4
  br label %108

23:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %98, %23
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %27 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %101

30:                                               ; preds = %24
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %32 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ubifs_unpack_bits(i32** %6, i32* %8, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %36 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ubifs_unpack_bits(i32** %6, i32* %8, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %64, label %41

41:                                               ; preds = %30
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %44 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %42, %45
  br i1 %46, label %64, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %64, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %53 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %51, %54
  br i1 %55, label %64, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %57, %58
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %61 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %56, %50, %47, %41, %30
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %108

67:                                               ; preds = %56
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %70 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %69, i32 0, i32 3
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 %68, i32* %75, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %78 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %77, i32 0, i32 3
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i32 %76, i32* %83, align 4
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %85 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %84, i32 0, i32 3
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  store i64 0, i64* %90, align 8
  %91 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %92 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %91, i32 0, i32 3
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %67
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %24

101:                                              ; preds = %24
  %102 = load i8*, i8** %5, align 8
  %103 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %104 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @check_lpt_crc(i8* %102, i32 %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %101, %64, %21
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @check_lpt_type(i32**, i32*, i32) #1

declare dso_local i32 @ubifs_unpack_bits(i32**, i32*, i32) #1

declare dso_local i32 @check_lpt_crc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
