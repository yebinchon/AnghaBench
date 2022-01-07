; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_dump_seek.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_dump_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.file*, i64, i32)* }

@no_llseek = common dso_local global i64 0, align 8
@SEEK_CUR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dump_seek(%struct.file* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 1, i32* %6, align 4
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i64, i32)** %12, align 8
  %14 = icmp ne i64 (%struct.file*, i64, i32)* %13, null
  br i1 %14, label %15, label %40

15:                                               ; preds = %2
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i64, i32)** %19, align 8
  %21 = load i64, i64* @no_llseek, align 8
  %22 = inttoptr i64 %21 to i64 (%struct.file*, i64, i32)*
  %23 = icmp ne i64 (%struct.file*, i64, i32)* %20, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %15
  %25 = call i64 (...) @dump_interrupted()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %24
  %28 = load %struct.file*, %struct.file** %4, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i64, i32)** %31, align 8
  %33 = load %struct.file*, %struct.file** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i32, i32* @SEEK_CUR, align 4
  %36 = call i64 %32(%struct.file* %33, i64 %34, i32 %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27, %24
  store i32 0, i32* %3, align 4
  br label %75

39:                                               ; preds = %27
  br label %73

40:                                               ; preds = %15, %2
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i64 @get_zeroed_page(i32 %41)
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %7, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %75

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %65, %47
  %49 = load i64, i64* %5, align 8
  %50 = icmp ugt i64 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %48
  %52 = load i64, i64* %5, align 8
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* @PAGE_SIZE, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %57, i64* %8, align 8
  br label %58

58:                                               ; preds = %56, %51
  %59 = load %struct.file*, %struct.file** %4, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @dump_write(%struct.file* %59, i8* %60, i64 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %69

65:                                               ; preds = %58
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %5, align 8
  %68 = sub i64 %67, %66
  store i64 %68, i64* %5, align 8
  br label %48

69:                                               ; preds = %64, %48
  %70 = load i8*, i8** %7, align 8
  %71 = ptrtoint i8* %70 to i64
  %72 = call i32 @free_page(i64 %71)
  br label %73

73:                                               ; preds = %69, %39
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %46, %38
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @dump_interrupted(...) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @dump_write(%struct.file*, i8*, i64) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
