; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/libfdt/extr_fdt_overlay.c_overlay_fixup_one_phandle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/libfdt/extr_fdt_overlay.c_overlay_fixup_one_phandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDT_ERR_NOTFOUND = common dso_local global i32 0, align 4
@FDT_ERR_BADOVERLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i8*, i64, i8*, i64, i32, i8*)* @overlay_fixup_one_phandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @overlay_fixup_one_phandle(i8* %0, i8* %1, i32 %2, i8* %3, i64 %4, i8* %5, i64 %6, i32 %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store i64 %4, i64* %15, align 8
  store i8* %5, i8** %16, align 8
  store i64 %6, i64* %17, align 8
  store i32 %7, i32* %18, align 4
  store i8* %8, i8** %19, align 8
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %9
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %10, align 4
  br label %81

29:                                               ; preds = %9
  %30 = load i8*, i8** %11, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load i8*, i8** %19, align 8
  %33 = call i8* @fdt_getprop(i8* %30, i32 %31, i8* %32, i32* %24)
  store i8* %33, i8** %20, align 8
  %34 = load i8*, i8** %20, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %24, align 4
  store i32 %37, i32* %10, align 4
  br label %81

38:                                               ; preds = %29
  %39 = load i8*, i8** %11, align 8
  %40 = load i8*, i8** %20, align 8
  %41 = call i32 @fdt_path_offset(i8* %39, i8* %40)
  store i32 %41, i32* %22, align 4
  %42 = load i32, i32* %22, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %22, align 4
  store i32 %45, i32* %10, align 4
  br label %81

46:                                               ; preds = %38
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %22, align 4
  %49 = call i64 @fdt_get_phandle(i8* %47, i32 %48)
  store i64 %49, i64* %21, align 8
  %50 = load i64, i64* %21, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* @FDT_ERR_NOTFOUND, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %10, align 4
  br label %81

55:                                               ; preds = %46
  %56 = load i8*, i8** %12, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = load i64, i64* %15, align 8
  %59 = call i32 @fdt_path_offset_namelen(i8* %56, i8* %57, i64 %58)
  store i32 %59, i32* %23, align 4
  %60 = load i32, i32* %23, align 4
  %61 = load i32, i32* @FDT_ERR_NOTFOUND, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load i32, i32* @FDT_ERR_BADOVERLAY, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %10, align 4
  br label %81

67:                                               ; preds = %55
  %68 = load i32, i32* %23, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* %23, align 4
  store i32 %71, i32* %10, align 4
  br label %81

72:                                               ; preds = %67
  %73 = load i64, i64* %21, align 8
  %74 = call i64 @cpu_to_fdt32(i64 %73)
  store i64 %74, i64* %21, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = load i32, i32* %23, align 4
  %77 = load i8*, i8** %16, align 8
  %78 = load i64, i64* %17, align 8
  %79 = load i32, i32* %18, align 4
  %80 = call i32 @fdt_setprop_inplace_namelen_partial(i8* %75, i32 %76, i8* %77, i64 %78, i32 %79, i64* %21, i32 8)
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %72, %70, %64, %52, %44, %36, %27
  %82 = load i32, i32* %10, align 4
  ret i32 %82
}

declare dso_local i8* @fdt_getprop(i8*, i32, i8*, i32*) #1

declare dso_local i32 @fdt_path_offset(i8*, i8*) #1

declare dso_local i64 @fdt_get_phandle(i8*, i32) #1

declare dso_local i32 @fdt_path_offset_namelen(i8*, i8*, i64) #1

declare dso_local i64 @cpu_to_fdt32(i64) #1

declare dso_local i32 @fdt_setprop_inplace_namelen_partial(i8*, i32, i8*, i64, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
