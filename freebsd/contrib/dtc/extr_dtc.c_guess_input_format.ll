; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_dtc.c_guess_input_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_dtc.c_guess_input_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@FDT_MAGIC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"dtb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @guess_input_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @guess_input_format(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @stat(i8* %9, %struct.stat* %6)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %3, align 8
  br label %55

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @S_ISDIR(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %55

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @S_ISREG(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  store i8* %26, i8** %3, align 8
  br label %55

27:                                               ; preds = %20
  %28 = load i8*, i8** %4, align 8
  %29 = call i32* @fopen(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i8*, i8** %5, align 8
  store i8* %33, i8** %3, align 8
  br label %55

34:                                               ; preds = %27
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @fread(i64* %7, i32 4, i32 1, i32* %35)
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @fclose(i32* %39)
  %41 = load i8*, i8** %5, align 8
  store i8* %41, i8** %3, align 8
  br label %55

42:                                               ; preds = %34
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @fclose(i32* %43)
  %45 = load i64, i64* %7, align 8
  %46 = call i64 @fdt32_to_cpu(i64 %45)
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @FDT_MAGIC, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %55

51:                                               ; preds = %42
  %52 = load i8*, i8** %4, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i8* @guess_type_by_name(i8* %52, i8* %53)
  store i8* %54, i8** %3, align 8
  br label %55

55:                                               ; preds = %51, %50, %38, %32, %25, %19, %12
  %56 = load i8*, i8** %3, align 8
  ret i8* %56
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fread(i64*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @fdt32_to_cpu(i64) #1

declare dso_local i8* @guess_type_by_name(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
