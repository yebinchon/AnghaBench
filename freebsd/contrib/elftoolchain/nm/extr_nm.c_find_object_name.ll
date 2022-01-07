; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_find_object_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_find_object_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DW_AT_name = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@DW_AT_specification = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @find_object_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_object_name(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @DW_AT_name, align 4
  %14 = call i64 @dwarf_attrval_string(i32 %12, i32 %13, i8** %10, i32* %9)
  %15 = load i64, i64* @DW_DLV_OK, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load i8*, i8** %10, align 8
  %19 = call i8* @strdup(i8* %18)
  store i8* %19, i8** %11, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %49

23:                                               ; preds = %17
  %24 = load i8*, i8** %11, align 8
  store i8* %24, i8** %3, align 8
  br label %49

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @DW_AT_specification, align 4
  %28 = call i64 @dwarf_attr(i32 %26, i32 %27, i32* %7, i32* %9)
  %29 = load i64, i64* @DW_DLV_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i8* null, i8** %3, align 8
  br label %49

32:                                               ; preds = %25
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @dwarf_global_formref(i32 %33, i32* %8, i32* %9)
  %35 = load i64, i64* @DW_DLV_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i8* null, i8** %3, align 8
  br label %49

38:                                               ; preds = %32
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @dwarf_offdie(i32 %39, i32 %40, i32* %6, i32* %9)
  %42 = load i64, i64* @DW_DLV_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i8* null, i8** %3, align 8
  br label %49

45:                                               ; preds = %38
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i8* @find_object_name(i32 %46, i32 %47)
  store i8* %48, i8** %3, align 8
  br label %49

49:                                               ; preds = %45, %44, %37, %31, %23, %21
  %50 = load i8*, i8** %3, align 8
  ret i8* %50
}

declare dso_local i64 @dwarf_attrval_string(i32, i32, i8**, i32*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @dwarf_attr(i32, i32, i32*, i32*) #1

declare dso_local i64 @dwarf_global_formref(i32, i32*, i32*) #1

declare dso_local i64 @dwarf_offdie(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
