; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_usb.c_fill_inquiry_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_usb.c_fill_inquiry_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_inquiry_response(%struct.us_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ult i32 %9, 36
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %97

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 8
  %15 = call i32 @memset(i8* %14, i8 signext 32, i32 28)
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %90

23:                                               ; preds = %12
  %24 = load %struct.us_data*, %struct.us_data** %4, align 8
  %25 = getelementptr inbounds %struct.us_data, %struct.us_data* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le16_to_cpu(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.us_data*, %struct.us_data** %4, align 8
  %32 = getelementptr inbounds %struct.us_data, %struct.us_data* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strlen(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 8
  %39 = load %struct.us_data*, %struct.us_data** %4, align 8
  %40 = getelementptr inbounds %struct.us_data, %struct.us_data* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @min(i32 8, i32 %44)
  %46 = call i32 @memcpy(i8* %38, i32 %43, i32 %45)
  %47 = load %struct.us_data*, %struct.us_data** %4, align 8
  %48 = getelementptr inbounds %struct.us_data, %struct.us_data* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @strlen(i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 16
  %55 = load %struct.us_data*, %struct.us_data** %4, align 8
  %56 = getelementptr inbounds %struct.us_data, %struct.us_data* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @min(i32 16, i32 %60)
  %62 = call i32 @memcpy(i8* %54, i32 %59, i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = ashr i32 %63, 12
  %65 = and i32 %64, 15
  %66 = add nsw i32 48, %65
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 32
  store i8 %67, i8* %69, align 1
  %70 = load i32, i32* %7, align 4
  %71 = ashr i32 %70, 8
  %72 = and i32 %71, 15
  %73 = add nsw i32 48, %72
  %74 = trunc i32 %73 to i8
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 33
  store i8 %74, i8* %76, align 1
  %77 = load i32, i32* %7, align 4
  %78 = ashr i32 %77, 4
  %79 = and i32 %78, 15
  %80 = add nsw i32 48, %79
  %81 = trunc i32 %80 to i8
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 34
  store i8 %81, i8* %83, align 1
  %84 = load i32, i32* %7, align 4
  %85 = and i32 %84, 15
  %86 = add nsw i32 48, %85
  %87 = trunc i32 %86 to i8
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 35
  store i8 %87, i8* %89, align 1
  br label %90

90:                                               ; preds = %23, %22
  %91 = load i8*, i8** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.us_data*, %struct.us_data** %4, align 8
  %94 = getelementptr inbounds %struct.us_data, %struct.us_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @usb_stor_set_xfer_buf(i8* %91, i32 %92, i32 %95)
  br label %97

97:                                               ; preds = %90, %11
  ret void
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @usb_stor_set_xfer_buf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
