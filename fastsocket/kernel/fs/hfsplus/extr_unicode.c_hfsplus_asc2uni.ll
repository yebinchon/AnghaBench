; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_unicode.c_hfsplus_asc2uni.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_unicode.c_hfsplus_asc2uni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.hfsplus_unistr = type { i8*, i8** }
%struct.TYPE_2__ = type { i32 }

@HFSPLUS_SB_NODECOMPOSE = common dso_local global i32 0, align 4
@HFSPLUS_MAX_STRLEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfsplus_asc2uni(%struct.super_block* %0, %struct.hfsplus_unistr* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.hfsplus_unistr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_2__, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.hfsplus_unistr* %1, %struct.hfsplus_unistr** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %14, align 8
  %17 = load %struct.super_block*, %struct.super_block** %6, align 8
  %18 = call i32 @HFSPLUS_SB(%struct.super_block* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @HFSPLUS_SB_NODECOMPOSE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %12, align 4
  br label %27

27:                                               ; preds = %81, %4
  %28 = load i64, i64* %14, align 8
  %29 = load i64, i64* @HFSPLUS_MAX_STRLEN, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* %9, align 4
  %33 = icmp sgt i32 %32, 0
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i1 [ false, %27 ], [ %33, %31 ]
  br i1 %35, label %36, label %89

36:                                               ; preds = %34
  %37 = load %struct.super_block*, %struct.super_block** %6, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @asc2unichar(%struct.super_block* %37, i8* %38, i32 %39, i64* %15)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %72

43:                                               ; preds = %36
  %44 = load i64, i64* %15, align 8
  %45 = call i64* @decompose_unichar(i64 %44, i32* %11)
  store i64* %45, i64** %13, align 8
  %46 = icmp ne i64* %45, null
  br i1 %46, label %47, label %72

47:                                               ; preds = %43
  %48 = load i64, i64* %14, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = load i64, i64* @HFSPLUS_MAX_STRLEN, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %89

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %67, %55
  %57 = load i64*, i64** %13, align 8
  %58 = getelementptr inbounds i64, i64* %57, i32 1
  store i64* %58, i64** %13, align 8
  %59 = load i64, i64* %57, align 8
  %60 = call i8* @cpu_to_be16(i64 %59)
  %61 = load %struct.hfsplus_unistr*, %struct.hfsplus_unistr** %7, align 8
  %62 = getelementptr inbounds %struct.hfsplus_unistr, %struct.hfsplus_unistr* %61, i32 0, i32 1
  %63 = load i8**, i8*** %62, align 8
  %64 = load i64, i64* %14, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %14, align 8
  %66 = getelementptr inbounds i8*, i8** %63, i64 %64
  store i8* %60, i8** %66, align 8
  br label %67

67:                                               ; preds = %56
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %11, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %56, label %71

71:                                               ; preds = %67
  br label %81

72:                                               ; preds = %43, %36
  %73 = load i64, i64* %15, align 8
  %74 = call i8* @cpu_to_be16(i64 %73)
  %75 = load %struct.hfsplus_unistr*, %struct.hfsplus_unistr** %7, align 8
  %76 = getelementptr inbounds %struct.hfsplus_unistr, %struct.hfsplus_unistr* %75, i32 0, i32 1
  %77 = load i8**, i8*** %76, align 8
  %78 = load i64, i64* %14, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %14, align 8
  %80 = getelementptr inbounds i8*, i8** %77, i64 %78
  store i8* %74, i8** %80, align 8
  br label %81

81:                                               ; preds = %72, %71
  %82 = load i32, i32* %10, align 4
  %83 = load i8*, i8** %8, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %8, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %9, align 4
  %88 = sub nsw i32 %87, %86
  store i32 %88, i32* %9, align 4
  br label %27

89:                                               ; preds = %54, %34
  %90 = load i64, i64* %14, align 8
  %91 = call i8* @cpu_to_be16(i64 %90)
  %92 = load %struct.hfsplus_unistr*, %struct.hfsplus_unistr** %7, align 8
  %93 = getelementptr inbounds %struct.hfsplus_unistr, %struct.hfsplus_unistr* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* %9, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = load i32, i32* @ENAMETOOLONG, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %5, align 4
  br label %100

99:                                               ; preds = %89
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %99, %96
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @HFSPLUS_SB(%struct.super_block*) #1

declare dso_local i32 @asc2unichar(%struct.super_block*, i8*, i32, i64*) #1

declare dso_local i64* @decompose_unichar(i64, i32*) #1

declare dso_local i8* @cpu_to_be16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
