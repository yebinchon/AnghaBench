; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_epson1355fb.c_epson1355fb_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_epson1355fb.c_epson1355fb_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fb_info*, i8*, i64, i64*)* @epson1355fb_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @epson1355fb_read(%struct.fb_info* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.fb_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load i64*, i64** %9, align 8
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp uge i64 %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %76

21:                                               ; preds = %4
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %24 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp uge i64 %22, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %8, align 8
  br label %33

33:                                               ; preds = %28, %21
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %10, align 8
  %36 = add i64 %34, %35
  %37 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ugt i64 %36, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %44 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = sub i64 %46, %47
  store i64 %48, i64* %8, align 8
  br label %49

49:                                               ; preds = %42, %33
  %50 = load i64, i64* %8, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %74

52:                                               ; preds = %49
  %53 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %54 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %11, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i64, i64* %8, align 8
  %61 = call i64 @copy_to_user16(i8* %56, i8* %59, i64 %60)
  %62 = load i64, i64* %8, align 8
  %63 = sub i64 %62, %61
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %8, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %52
  %67 = load i64, i64* @EFAULT, align 8
  %68 = sub i64 0, %67
  store i64 %68, i64* %5, align 8
  br label %76

69:                                               ; preds = %52
  %70 = load i64, i64* %8, align 8
  %71 = load i64*, i64** %9, align 8
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, %70
  store i64 %73, i64* %71, align 8
  br label %74

74:                                               ; preds = %69, %49
  %75 = load i64, i64* %8, align 8
  store i64 %75, i64* %5, align 8
  br label %76

76:                                               ; preds = %74, %66, %20
  %77 = load i64, i64* %5, align 8
  ret i64 %77
}

declare dso_local i64 @copy_to_user16(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
