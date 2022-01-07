; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_epson1355fb.c_epson1355fb_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_epson1355fb.c_epson1355fb_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ENOSPC = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fb_info*, i8*, i64, i64*)* @epson1355fb_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @epson1355fb_write(%struct.fb_info* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.fb_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i64*, i64** %9, align 8
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ugt i64 %15, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i64, i64* @ENOSPC, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %5, align 8
  br label %84

24:                                               ; preds = %4
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp uge i64 %25, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %8, align 8
  br label %36

36:                                               ; preds = %31, %24
  store i32 0, i32* %11, align 4
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %10, align 8
  %39 = add i64 %37, %38
  %40 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ugt i64 %39, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %36
  %46 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = sub i64 %49, %50
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* @ENOSPC, align 8
  %53 = sub i64 0, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %45, %36
  %56 = load i64, i64* %8, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %55
  %59 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %60 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %12, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i8*, i8** %7, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i64 @copy_from_user16(i8* %64, i8* %65, i64 %66)
  %68 = load i64, i64* %8, align 8
  %69 = sub i64 %68, %67
  store i64 %69, i64* %8, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i64*, i64** %9, align 8
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, %70
  store i64 %73, i64* %71, align 8
  %74 = load i32, i32* @EFAULT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %58, %55
  %77 = load i64, i64* %8, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i64, i64* %8, align 8
  store i64 %80, i64* %5, align 8
  br label %84

81:                                               ; preds = %76
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %5, align 8
  br label %84

84:                                               ; preds = %81, %79, %21
  %85 = load i64, i64* %5, align 8
  ret i64 %85
}

declare dso_local i64 @copy_from_user16(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
