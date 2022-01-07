; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_spcp8x5.c_get_ringbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_spcp8x5.c_get_ringbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ringbuf = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ringbuf*, i8*, i32)* @get_ringbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ringbuf(%struct.ringbuf* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ringbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ringbuf* %0, %struct.ringbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ringbuf*, %struct.ringbuf** %5, align 8
  %10 = icmp eq %struct.ringbuf* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %3
  store i32 0, i32* %4, align 4
  br label %94

15:                                               ; preds = %11
  %16 = load %struct.ringbuf*, %struct.ringbuf** %5, align 8
  %17 = call i32 @ringbuf_avail_data(%struct.ringbuf* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ugt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %21, %15
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %94

27:                                               ; preds = %23
  %28 = load %struct.ringbuf*, %struct.ringbuf** %5, align 8
  %29 = getelementptr inbounds %struct.ringbuf, %struct.ringbuf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ringbuf*, %struct.ringbuf** %5, align 8
  %32 = getelementptr inbounds %struct.ringbuf, %struct.ringbuf* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add i32 %30, %33
  %35 = load %struct.ringbuf*, %struct.ringbuf** %5, align 8
  %36 = getelementptr inbounds %struct.ringbuf, %struct.ringbuf* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = sub i32 %34, %37
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ugt i32 %39, %40
  br i1 %41, label %42, label %69

42:                                               ; preds = %27
  %43 = load i8*, i8** %6, align 8
  %44 = load %struct.ringbuf*, %struct.ringbuf** %5, align 8
  %45 = getelementptr inbounds %struct.ringbuf, %struct.ringbuf* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @memcpy(i8* %43, i32 %46, i32 %47)
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load %struct.ringbuf*, %struct.ringbuf** %5, align 8
  %54 = getelementptr inbounds %struct.ringbuf, %struct.ringbuf* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = sub i32 %56, %57
  %59 = call i32 @memcpy(i8* %52, i32 %55, i32 %58)
  %60 = load %struct.ringbuf*, %struct.ringbuf** %5, align 8
  %61 = getelementptr inbounds %struct.ringbuf, %struct.ringbuf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %7, align 4
  %64 = add i32 %62, %63
  %65 = load i32, i32* %8, align 4
  %66 = sub i32 %64, %65
  %67 = load %struct.ringbuf*, %struct.ringbuf** %5, align 8
  %68 = getelementptr inbounds %struct.ringbuf, %struct.ringbuf* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  br label %92

69:                                               ; preds = %27
  %70 = load i8*, i8** %6, align 8
  %71 = load %struct.ringbuf*, %struct.ringbuf** %5, align 8
  %72 = getelementptr inbounds %struct.ringbuf, %struct.ringbuf* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @memcpy(i8* %70, i32 %73, i32 %74)
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %69
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.ringbuf*, %struct.ringbuf** %5, align 8
  %82 = getelementptr inbounds %struct.ringbuf, %struct.ringbuf* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = add i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %91

85:                                               ; preds = %69
  %86 = load %struct.ringbuf*, %struct.ringbuf** %5, align 8
  %87 = getelementptr inbounds %struct.ringbuf, %struct.ringbuf* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ringbuf*, %struct.ringbuf** %5, align 8
  %90 = getelementptr inbounds %struct.ringbuf, %struct.ringbuf* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %85, %79
  br label %92

92:                                               ; preds = %91, %42
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %92, %26, %14
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @ringbuf_avail_data(%struct.ringbuf*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
