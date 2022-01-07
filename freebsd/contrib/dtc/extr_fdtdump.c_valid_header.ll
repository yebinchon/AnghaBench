; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_fdtdump.c_valid_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_fdtdump.c_valid_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDT_MAGIC = common dso_local global i64 0, align 8
@MAX_VERSION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @valid_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_header(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 4
  br i1 %8, label %39, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @fdt_magic(i8* %10)
  %12 = load i64, i64* @FDT_MAGIC, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %39, label %14

14:                                               ; preds = %9
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @fdt_version(i8* %15)
  %17 = load i64, i64* @MAX_VERSION, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %39, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @fdt_last_comp_version(i8* %20)
  %22 = load i64, i64* @MAX_VERSION, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %39, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @fdt_totalsize(i8* %25)
  %27 = load i32, i32* %5, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @fdt_off_dt_struct(i8* %30)
  %32 = load i32, i32* %5, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @fdt_off_dt_strings(i8* %35)
  %37 = load i32, i32* %5, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %29, %24, %19, %14, %9, %2
  store i32 0, i32* %3, align 4
  br label %41

40:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %39
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @fdt_magic(i8*) #1

declare dso_local i64 @fdt_version(i8*) #1

declare dso_local i64 @fdt_last_comp_version(i8*) #1

declare dso_local i32 @fdt_totalsize(i8*) #1

declare dso_local i32 @fdt_off_dt_struct(i8*) #1

declare dso_local i32 @fdt_off_dt_strings(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
