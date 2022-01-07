; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/libfdt/extr_fdt_ro.c_fdt_path_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/libfdt/extr_fdt_ro.c_fdt_path_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDT_ERR_BADPATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_path_offset(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @FDT_CHECK_HEADER(i8* %16)
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 47
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @FDT_ERR_BADPATH, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %71

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %67, %25
  %27 = load i8*, i8** %7, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %69

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %36, %30
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 47
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %7, align 8
  br label %31

39:                                               ; preds = %31
  %40 = load i8*, i8** %7, align 8
  %41 = load i8, i8* %40, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %71

45:                                               ; preds = %39
  %46 = load i8*, i8** %7, align 8
  %47 = call i8* @strchr(i8* %46, i8 signext 47)
  store i8* %47, i8** %9, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = load i8*, i8** %6, align 8
  store i8* %51, i8** %9, align 8
  br label %52

52:                                               ; preds = %50, %45
  %53 = load i8*, i8** %4, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @fdt_subnode_offset_namelen(i8* %53, i32 %54, i8* %55, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %52
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %71

67:                                               ; preds = %52
  %68 = load i8*, i8** %9, align 8
  store i8* %68, i8** %7, align 8
  br label %26

69:                                               ; preds = %26
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %65, %43, %22
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @FDT_CHECK_HEADER(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @fdt_subnode_offset_namelen(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
