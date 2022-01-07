; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/c67x00/extr_c67x00-ll-hpi.c_c67x00_ll_read_mem_le16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/c67x00/extr_c67x00-ll-hpi.c_c67x00_ll_read_mem_le16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c67x00_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c67x00_ll_read_mem_le16(%struct.c67x00_device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.c67x00_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.c67x00_device* %0, %struct.c67x00_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %4
  %18 = load %struct.c67x00_device*, %struct.c67x00_device** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sub nsw i32 %19, 1
  %21 = call i32 @hpi_read_word(%struct.c67x00_device* %18, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = ashr i32 %22, 8
  %24 = and i32 %23, 255
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %9, align 8
  store i32 %24, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %17, %4
  %32 = load %struct.c67x00_device*, %struct.c67x00_device** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sdiv i32 %35, 2
  %37 = call i32 @hpi_read_words_le16(%struct.c67x00_device* %32, i32 %33, i32* %34, i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, -2
  %40 = load i32*, i32** %9, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32* %42, i32** %9, align 8
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, -2
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, 1
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %31
  %52 = load %struct.c67x00_device*, %struct.c67x00_device** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @hpi_read_word(%struct.c67x00_device* %52, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = and i32 %55, 255
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %51, %31
  ret void
}

declare dso_local i32 @hpi_read_word(%struct.c67x00_device*, i32) #1

declare dso_local i32 @hpi_read_words_le16(%struct.c67x00_device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
