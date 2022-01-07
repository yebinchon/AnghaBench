; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/libfdt/extr_fdt_overlay.c_overlay_phandle_add_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/libfdt/extr_fdt_overlay.c_overlay_phandle_add_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDT_ERR_BADPHANDLE = common dso_local global i32 0, align 4
@FDT_ERR_NOPHANDLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @overlay_phandle_add_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @overlay_phandle_add_offset(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = call i64* @fdt_getprop(i8* %13, i32 %14, i8* %15, i32* %12)
  store i64* %16, i64** %10, align 8
  %17 = load i64*, i64** %10, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %55

21:                                               ; preds = %4
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ne i64 %23, 8
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @FDT_ERR_BADPHANDLE, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %55

28:                                               ; preds = %21
  %29 = load i64*, i64** %10, align 8
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @fdt32_to_cpu(i64 %30)
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %9, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i64, i64* %11, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i32, i32* @FDT_ERR_NOPHANDLES, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %55

40:                                               ; preds = %28
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %11, align 8
  %43 = add nsw i64 %42, %41
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = icmp eq i64 %44, -1
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @FDT_ERR_NOPHANDLES, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %55

49:                                               ; preds = %40
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @fdt_setprop_inplace_u32(i8* %50, i32 %51, i8* %52, i64 %53)
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %49, %46, %37, %25, %19
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i64* @fdt_getprop(i8*, i32, i8*, i32*) #1

declare dso_local i64 @fdt32_to_cpu(i64) #1

declare dso_local i32 @fdt_setprop_inplace_u32(i8*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
