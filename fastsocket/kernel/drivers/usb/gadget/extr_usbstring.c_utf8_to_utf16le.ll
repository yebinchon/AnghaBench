; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_usbstring.c_utf8_to_utf16le.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_usbstring.c_utf8_to_utf16le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32)* @utf8_to_utf16le to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf8_to_utf16le(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %98, %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %5, align 8
  %17 = load i8, i8* %15, align 1
  %18 = sext i8 %17 to i64
  store i64 %18, i64* %9, align 8
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %14, %11
  %21 = phi i1 [ false, %11 ], [ %19, %14 ]
  br i1 %21, label %22, label %108

22:                                               ; preds = %20
  %23 = load i64, i64* %9, align 8
  %24 = and i64 %23, 128
  %25 = call i64 @unlikely(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %96

27:                                               ; preds = %22
  %28 = load i64, i64* %9, align 8
  %29 = and i64 %28, 224
  %30 = icmp eq i64 %29, 192
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8
  %33 = and i64 %32, 31
  %34 = shl i64 %33, 6
  store i64 %34, i64* %10, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %5, align 8
  %37 = load i8, i8* %35, align 1
  %38 = sext i8 %37 to i64
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = and i64 %39, 192
  %41 = icmp ne i64 %40, 128
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %110

43:                                               ; preds = %31
  %44 = load i64, i64* %9, align 8
  %45 = and i64 %44, 63
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %10, align 8
  br label %95

49:                                               ; preds = %27
  %50 = load i64, i64* %9, align 8
  %51 = and i64 %50, 240
  %52 = icmp eq i64 %51, 224
  br i1 %52, label %53, label %93

53:                                               ; preds = %49
  %54 = load i64, i64* %9, align 8
  %55 = and i64 %54, 15
  %56 = shl i64 %55, 12
  store i64 %56, i64* %10, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %5, align 8
  %59 = load i8, i8* %57, align 1
  %60 = sext i8 %59 to i64
  store i64 %60, i64* %9, align 8
  %61 = load i64, i64* %9, align 8
  %62 = and i64 %61, 192
  %63 = icmp ne i64 %62, 128
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %110

65:                                               ; preds = %53
  %66 = load i64, i64* %9, align 8
  %67 = and i64 %66, 63
  store i64 %67, i64* %9, align 8
  %68 = load i64, i64* %9, align 8
  %69 = shl i64 %68, 6
  %70 = load i64, i64* %10, align 8
  %71 = or i64 %70, %69
  store i64 %71, i64* %10, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %5, align 8
  %74 = load i8, i8* %72, align 1
  %75 = sext i8 %74 to i64
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %9, align 8
  %77 = and i64 %76, 192
  %78 = icmp ne i64 %77, 128
  br i1 %78, label %79, label %80

79:                                               ; preds = %65
  br label %110

80:                                               ; preds = %65
  %81 = load i64, i64* %9, align 8
  %82 = and i64 %81, 63
  store i64 %82, i64* %9, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %10, align 8
  %85 = or i64 %84, %83
  store i64 %85, i64* %10, align 8
  %86 = load i64, i64* %10, align 8
  %87 = icmp sle i64 55296, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = load i64, i64* %10, align 8
  %90 = icmp sle i64 %89, 57343
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %110

92:                                               ; preds = %88, %80
  br label %94

93:                                               ; preds = %49
  br label %110

94:                                               ; preds = %92
  br label %95

95:                                               ; preds = %94, %43
  br label %98

96:                                               ; preds = %22
  %97 = load i64, i64* %9, align 8
  store i64 %97, i64* %10, align 8
  br label %98

98:                                               ; preds = %96, %95
  %99 = load i64, i64* %10, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %6, align 8
  %102 = ptrtoint i32* %100 to i32
  %103 = call i32 @put_unaligned_le16(i64 %99, i32 %102)
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %7, align 4
  %107 = add i32 %106, -1
  store i32 %107, i32* %7, align 4
  br label %11

108:                                              ; preds = %20
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %4, align 4
  br label %111

110:                                              ; preds = %93, %91, %79, %64, %42
  store i32 -1, i32* %4, align 4
  br label %111

111:                                              ; preds = %110, %108
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @put_unaligned_le16(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
