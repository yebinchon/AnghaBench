; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_decompress.c_decompress_method.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_decompress.c_decompress_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compress_format = type { i8*, i32*, i32 }

@compressed_formats = common dso_local global %struct.compress_format* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @decompress_method(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.compress_format*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %43

12:                                               ; preds = %3
  %13 = load %struct.compress_format*, %struct.compress_format** @compressed_formats, align 8
  store %struct.compress_format* %13, %struct.compress_format** %8, align 8
  br label %14

14:                                               ; preds = %28, %12
  %15 = load %struct.compress_format*, %struct.compress_format** %8, align 8
  %16 = getelementptr inbounds %struct.compress_format, %struct.compress_format* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.compress_format*, %struct.compress_format** %8, align 8
  %22 = getelementptr inbounds %struct.compress_format, %struct.compress_format* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @memcmp(i8* %20, i32 %23, i32 2)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %31

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.compress_format*, %struct.compress_format** %8, align 8
  %30 = getelementptr inbounds %struct.compress_format, %struct.compress_format* %29, i32 1
  store %struct.compress_format* %30, %struct.compress_format** %8, align 8
  br label %14

31:                                               ; preds = %26, %14
  %32 = load i8**, i8*** %7, align 8
  %33 = icmp ne i8** %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.compress_format*, %struct.compress_format** %8, align 8
  %36 = getelementptr inbounds %struct.compress_format, %struct.compress_format* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i8**, i8*** %7, align 8
  store i8* %37, i8** %38, align 8
  br label %39

39:                                               ; preds = %34, %31
  %40 = load %struct.compress_format*, %struct.compress_format** %8, align 8
  %41 = getelementptr inbounds %struct.compress_format, %struct.compress_format* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %4, align 8
  br label %43

43:                                               ; preds = %39, %11
  %44 = load i32*, i32** %4, align 8
  ret i32* %44
}

declare dso_local i32 @memcmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
