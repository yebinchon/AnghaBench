; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/c67x00/extr_c67x00-ll-hpi.c_c67x00_ll_write_mem_le16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/c67x00/extr_c67x00-ll-hpi.c_c67x00_ll_write_mem_le16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c67x00_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Trying to write beyond writable region!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c67x00_ll_write_mem_le16(%struct.c67x00_device* %0, i32 %1, i8* %2, i32 %3) #0 {
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
  %15 = load i32, i32* %8, align 4
  %16 = add nsw i32 %14, %15
  %17 = icmp sgt i32 %16, 65535
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load %struct.c67x00_device*, %struct.c67x00_device** %5, align 8
  %20 = getelementptr inbounds %struct.c67x00_device, %struct.c67x00_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %82

24:                                               ; preds = %4
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = load %struct.c67x00_device*, %struct.c67x00_device** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %30, 1
  %32 = call i32 @hpi_read_word(%struct.c67x00_device* %29, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, 255
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %9, align 8
  %37 = load i32, i32* %35, align 4
  %38 = shl i32 %37, 8
  %39 = or i32 %34, %38
  store i32 %39, i32* %10, align 4
  %40 = load %struct.c67x00_device*, %struct.c67x00_device** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sub nsw i32 %41, 1
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @hpi_write_word(%struct.c67x00_device* %40, i32 %42, i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %28, %24
  %50 = load %struct.c67x00_device*, %struct.c67x00_device** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sdiv i32 %53, 2
  %55 = call i32 @hpi_write_words_le16(%struct.c67x00_device* %50, i32 %51, i32* %52, i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, -2
  %58 = load i32*, i32** %9, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32* %60, i32** %9, align 8
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, -2
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %8, align 4
  %66 = and i32 %65, 1
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %49
  %70 = load %struct.c67x00_device*, %struct.c67x00_device** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @hpi_read_word(%struct.c67x00_device* %70, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = and i32 %73, 65280
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %74, %76
  store i32 %77, i32* %11, align 4
  %78 = load %struct.c67x00_device*, %struct.c67x00_device** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @hpi_write_word(%struct.c67x00_device* %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %18, %69, %49
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @hpi_read_word(%struct.c67x00_device*, i32) #1

declare dso_local i32 @hpi_write_word(%struct.c67x00_device*, i32, i32) #1

declare dso_local i32 @hpi_write_words_le16(%struct.c67x00_device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
