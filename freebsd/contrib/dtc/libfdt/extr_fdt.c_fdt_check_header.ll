; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/libfdt/extr_fdt.c_fdt_check_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/libfdt/extr_fdt.c_fdt_check_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDT_MAGIC = common dso_local global i64 0, align 8
@FDT_FIRST_SUPPORTED_VERSION = common dso_local global i64 0, align 8
@FDT_ERR_BADVERSION = common dso_local global i32 0, align 4
@FDT_LAST_SUPPORTED_VERSION = common dso_local global i64 0, align 8
@FDT_SW_MAGIC = common dso_local global i64 0, align 8
@FDT_ERR_BADSTATE = common dso_local global i32 0, align 4
@FDT_ERR_BADMAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_check_header(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @fdt_magic(i8* %4)
  %6 = load i64, i64* @FDT_MAGIC, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @fdt_version(i8* %9)
  %11 = load i64, i64* @FDT_FIRST_SUPPORTED_VERSION, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32, i32* @FDT_ERR_BADVERSION, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %43

16:                                               ; preds = %8
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @fdt_last_comp_version(i8* %17)
  %19 = load i64, i64* @FDT_LAST_SUPPORTED_VERSION, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @FDT_ERR_BADVERSION, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %43

24:                                               ; preds = %16
  br label %42

25:                                               ; preds = %1
  %26 = load i8*, i8** %3, align 8
  %27 = call i64 @fdt_magic(i8* %26)
  %28 = load i64, i64* @FDT_SW_MAGIC, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i8*, i8** %3, align 8
  %32 = call i64 @fdt_size_dt_struct(i8* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @FDT_ERR_BADSTATE, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %43

37:                                               ; preds = %30
  br label %41

38:                                               ; preds = %25
  %39 = load i32, i32* @FDT_ERR_BADMAGIC, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %43

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %41, %24
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %38, %34, %21, %13
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @fdt_magic(i8*) #1

declare dso_local i64 @fdt_version(i8*) #1

declare dso_local i64 @fdt_last_comp_version(i8*) #1

declare dso_local i64 @fdt_size_dt_struct(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
