; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp_videoenc_verify_cmd.c_pmem_fixup_high_low.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp_videoenc_verify_cmd.c_pmem_fixup_high_low.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_adsp_module = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"virt %x %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"ah%x al%x sh%x sl%x addr %x size %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"phys %x %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16*, i16*, i16, i16, %struct.msm_adsp_module*, i64*, i64*)* @pmem_fixup_high_low to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmem_fixup_high_low(i16* %0, i16* %1, i16 zeroext %2, i16 zeroext %3, %struct.msm_adsp_module* %4, i64* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i16*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca %struct.msm_adsp_module*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i16* %0, i16** %9, align 8
  store i16* %1, i16** %10, align 8
  store i16 %2, i16* %11, align 2
  store i16 %3, i16* %12, align 2
  store %struct.msm_adsp_module* %4, %struct.msm_adsp_module** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  %19 = load i16*, i16** %9, align 8
  %20 = load i16, i16* %19, align 2
  %21 = load i16*, i16** %10, align 8
  %22 = load i16, i16* %21, align 2
  %23 = call i8* @high_low_short_to_ptr(i16 zeroext %20, i16 zeroext %22)
  store i8* %23, i8** %16, align 8
  %24 = load i16, i16* %11, align 2
  %25 = load i16, i16* %12, align 2
  %26 = call i8* @high_low_short_to_ptr(i16 zeroext %24, i16 zeroext %25)
  %27 = ptrtoint i8* %26 to i64
  store i64 %27, i64* %17, align 8
  %28 = load i8*, i8** %16, align 8
  %29 = load i64, i64* %17, align 8
  %30 = call i32 (i8*, i8*, i64, ...) @DLOG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %28, i64 %29)
  %31 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %13, align 8
  %32 = load i64, i64* %17, align 8
  %33 = call i64 @adsp_pmem_fixup_kvaddr(%struct.msm_adsp_module* %31, i8** %16, i64* %18, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %7
  %36 = load i16*, i16** %9, align 8
  %37 = load i16, i16* %36, align 2
  %38 = zext i16 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = load i16*, i16** %10, align 8
  %41 = load i16, i16* %40, align 2
  %42 = zext i16 %41 to i64
  %43 = load i16, i16* %11, align 2
  %44 = zext i16 %43 to i32
  %45 = load i16, i16* %12, align 2
  %46 = zext i16 %45 to i32
  %47 = load i8*, i8** %16, align 8
  %48 = load i64, i64* %17, align 8
  %49 = call i32 (i8*, i8*, i64, ...) @DLOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %39, i64 %42, i32 %44, i32 %46, i8* %47, i64 %48)
  store i32 -1, i32* %8, align 4
  br label %70

50:                                               ; preds = %7
  %51 = load i8*, i8** %16, align 8
  %52 = load i16*, i16** %9, align 8
  %53 = load i16*, i16** %10, align 8
  %54 = call i32 @ptr_to_high_low_short(i8* %51, i16* %52, i16* %53)
  %55 = load i8*, i8** %16, align 8
  %56 = load i64, i64* %17, align 8
  %57 = call i32 (i8*, i8*, i64, ...) @DLOG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %55, i64 %56)
  %58 = load i64*, i64** %14, align 8
  %59 = icmp ne i64* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load i64, i64* %18, align 8
  %62 = load i64*, i64** %14, align 8
  store i64 %61, i64* %62, align 8
  br label %63

63:                                               ; preds = %60, %50
  %64 = load i64*, i64** %15, align 8
  %65 = icmp ne i64* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i64, i64* %17, align 8
  %68 = load i64*, i64** %15, align 8
  store i64 %67, i64* %68, align 8
  br label %69

69:                                               ; preds = %66, %63
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %69, %35
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local i8* @high_low_short_to_ptr(i16 zeroext, i16 zeroext) #1

declare dso_local i32 @DLOG(i8*, i8*, i64, ...) #1

declare dso_local i64 @adsp_pmem_fixup_kvaddr(%struct.msm_adsp_module*, i8**, i64*, i64) #1

declare dso_local i32 @ptr_to_high_low_short(i8*, i16*, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
