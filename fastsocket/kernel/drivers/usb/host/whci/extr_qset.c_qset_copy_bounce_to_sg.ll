; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_qset.c_qset_copy_bounce_to_sg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_qset.c_qset_copy_bounce_to_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whc = type { i32 }
%struct.whc_std = type { i64, i64, %struct.scatterlist*, i8* }
%struct.scatterlist = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.whc*, %struct.whc_std*)* @qset_copy_bounce_to_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qset_copy_bounce_to_sg(%struct.whc* %0, %struct.whc_std* %1) #0 {
  %3 = alloca %struct.whc*, align 8
  %4 = alloca %struct.whc_std*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.whc* %0, %struct.whc** %3, align 8
  store %struct.whc_std* %1, %struct.whc_std** %4, align 8
  %10 = load %struct.whc_std*, %struct.whc_std** %4, align 8
  %11 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %10, i32 0, i32 3
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = load %struct.whc_std*, %struct.whc_std** %4, align 8
  %14 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.whc_std*, %struct.whc_std** %4, align 8
  %17 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %16, i32 0, i32 2
  %18 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  store %struct.scatterlist* %18, %struct.scatterlist** %5, align 8
  %19 = load %struct.whc_std*, %struct.whc_std** %4, align 8
  %20 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  br label %22

22:                                               ; preds = %57, %2
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %22
  %26 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %27 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = sub i64 %28, %29
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @min(i64 %30, i64 %31)
  store i64 %32, i64* %9, align 8
  %33 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %34 = call i64 @sg_virt(%struct.scatterlist* %33)
  %35 = load i64, i64* %8, align 8
  %36 = add i64 %34, %35
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @memcpy(i64 %36, i8* %37, i64 %38)
  %40 = load i64, i64* %9, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr i8, i8* %41, i64 %40
  store i8* %42, i8** %6, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %7, align 8
  %45 = sub i64 %44, %43
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %51 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp uge i64 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %25
  %55 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %56 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %55)
  store %struct.scatterlist* %56, %struct.scatterlist** %5, align 8
  store i64 0, i64* %8, align 8
  br label %57

57:                                               ; preds = %54, %25
  br label %22

58:                                               ; preds = %22
  ret void
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i64 @sg_virt(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
