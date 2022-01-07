; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_m66592-udc.h_m66592_write_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_m66592-udc.h_m66592_write_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m66592 = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@M66592_CFBCFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.m66592*, i64, i8*, i64)* @m66592_write_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m66592_write_fifo(%struct.m66592* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.m66592*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.m66592* %0, %struct.m66592** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.m66592*, %struct.m66592** %5, align 8
  %16 = getelementptr inbounds %struct.m66592, %struct.m66592* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = add i64 %17, %18
  store i64 %19, i64* %9, align 8
  %20 = load %struct.m66592*, %struct.m66592** %5, align 8
  %21 = getelementptr inbounds %struct.m66592, %struct.m66592* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %81

26:                                               ; preds = %4
  %27 = load i64, i64* %8, align 8
  %28 = udiv i64 %27, 4
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @outsl(i64 %29, i8* %30, i64 %31)
  %33 = load i64, i64* %8, align 8
  %34 = and i64 %33, 3
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %80

36:                                               ; preds = %26
  %37 = load i8*, i8** %7, align 8
  %38 = load i64, i64* %10, align 8
  %39 = mul i64 %38, 4
  %40 = getelementptr i8, i8* %37, i64 %39
  store i8* %40, i8** %11, align 8
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %76, %36
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %8, align 8
  %45 = and i64 %44, 3
  %46 = icmp ult i64 %43, %45
  br i1 %46, label %47, label %79

47:                                               ; preds = %41
  %48 = load %struct.m66592*, %struct.m66592** %5, align 8
  %49 = load i32, i32* @M66592_CFBCFG, align 4
  %50 = call i64 @m66592_read(%struct.m66592* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load i8*, i8** %11, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = load i64, i64* %9, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sub nsw i32 3, %59
  %61 = sext i32 %60 to i64
  %62 = add i64 %58, %61
  %63 = call i32 @outb(i8 zeroext %57, i64 %62)
  br label %75

64:                                               ; preds = %47
  %65 = load i8*, i8** %11, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = load i64, i64* %9, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = add i64 %70, %72
  %74 = call i32 @outb(i8 zeroext %69, i64 %73)
  br label %75

75:                                               ; preds = %64, %52
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  br label %41

79:                                               ; preds = %41
  br label %80

80:                                               ; preds = %79, %26
  br label %102

81:                                               ; preds = %4
  %82 = load i64, i64* %8, align 8
  %83 = and i64 %82, 1
  store i64 %83, i64* %13, align 8
  %84 = load i64, i64* %8, align 8
  %85 = udiv i64 %84, 2
  store i64 %85, i64* %8, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = load i64, i64* %8, align 8
  %89 = call i32 @outsw(i64 %86, i8* %87, i64 %88)
  %90 = load i64, i64* %13, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %81
  %93 = load i8*, i8** %7, align 8
  %94 = load i64, i64* %8, align 8
  %95 = mul i64 %94, 2
  %96 = getelementptr i8, i8* %93, i64 %95
  store i8* %96, i8** %14, align 8
  %97 = load i8*, i8** %14, align 8
  %98 = load i8, i8* %97, align 1
  %99 = load i64, i64* %9, align 8
  %100 = call i32 @outb(i8 zeroext %98, i64 %99)
  br label %101

101:                                              ; preds = %92, %81
  br label %102

102:                                              ; preds = %101, %80
  ret void
}

declare dso_local i32 @outsl(i64, i8*, i64) #1

declare dso_local i64 @m66592_read(%struct.m66592*, i32) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @outsw(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
