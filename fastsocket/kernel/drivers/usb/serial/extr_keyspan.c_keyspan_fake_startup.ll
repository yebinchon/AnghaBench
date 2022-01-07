; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_keyspan.c_keyspan_fake_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_keyspan.c_keyspan_fake_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ihex_binrec = type { i32, i64, i32 }
%struct.firmware = type { i64 }

@.str = private unnamed_addr constant [42 x i8] c"Keyspan startup version %04x product %04x\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Firmware already loaded.  Quitting.\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"keyspan/usa28.fw\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"keyspan/usa28x.fw\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"keyspan/usa28xa.fw\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"keyspan/usa28xb.fw\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"keyspan/usa19.fw\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"keyspan/usa19qi.fw\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"keyspan/mpr.fw\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"keyspan/usa19qw.fw\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"keyspan/usa18x.fw\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"keyspan/usa19w.fw\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"keyspan/usa49w.fw\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"keyspan/usa49wlc.fw\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Unknown product ID (%04x)\0A\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"Required keyspan firmware image (%s) unavailable.\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"Uploading Keyspan %s firmware.\00", align 1
@.str.17 = private unnamed_addr constant [63 x i8] c"ezusb_writememory failed for Keyspan firmware (%d %04X %p %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*)* @keyspan_fake_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyspan_fake_startup(%struct.usb_serial* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ihex_binrec*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.firmware*, align 8
  store %struct.usb_serial* %0, %struct.usb_serial** %3, align 8
  %8 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %9 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le16_to_cpu(i32 %13)
  %15 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %16 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  %22 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %21)
  %23 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %24 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  %30 = and i32 %29, 32768
  %31 = icmp ne i32 %30, 32768
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %137

34:                                               ; preds = %1
  %35 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %36 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le16_to_cpu(i32 %40)
  switch i32 %41, label %54 [
    i32 133, label %42
    i32 132, label %43
    i32 131, label %44
    i32 130, label %45
    i32 137, label %46
    i32 136, label %47
    i32 139, label %48
    i32 135, label %49
    i32 138, label %50
    i32 134, label %51
    i32 129, label %52
    i32 128, label %53
  ]

42:                                               ; preds = %34
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %67

43:                                               ; preds = %34
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %67

44:                                               ; preds = %34
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %67

45:                                               ; preds = %34
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %67

46:                                               ; preds = %34
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %67

47:                                               ; preds = %34
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  br label %67

48:                                               ; preds = %34
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  br label %67

49:                                               ; preds = %34
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8** %6, align 8
  br label %67

50:                                               ; preds = %34
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8** %6, align 8
  br label %67

51:                                               ; preds = %34
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8** %6, align 8
  br label %67

52:                                               ; preds = %34
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8** %6, align 8
  br label %67

53:                                               ; preds = %34
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8** %6, align 8
  br label %67

54:                                               ; preds = %34
  %55 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %56 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %60 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le16_to_cpu(i32 %64)
  %66 = call i32 (i32*, i8*, ...) @dev_err(i32* %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i32 %65)
  store i32 1, i32* %2, align 4
  br label %137

67:                                               ; preds = %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42
  %68 = load i8*, i8** %6, align 8
  %69 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %70 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = call i64 @request_ihex_firmware(%struct.firmware** %7, i8* %68, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %67
  %76 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %77 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 (i32*, i8*, ...) @dev_err(i32* %79, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.15, i64 0, i64 0), i8* %80)
  store i32 1, i32* %2, align 4
  br label %137

82:                                               ; preds = %67
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i8* %83)
  %85 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %86 = call i32 @ezusb_set_reset(%struct.usb_serial* %85, i32 1)
  store i32 %86, i32* %4, align 4
  %87 = load %struct.firmware*, %struct.firmware** %7, align 8
  %88 = getelementptr inbounds %struct.firmware, %struct.firmware* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to %struct.ihex_binrec*
  store %struct.ihex_binrec* %90, %struct.ihex_binrec** %5, align 8
  br label %91

91:                                               ; preds = %129, %82
  %92 = load %struct.ihex_binrec*, %struct.ihex_binrec** %5, align 8
  %93 = icmp ne %struct.ihex_binrec* %92, null
  br i1 %93, label %94, label %132

94:                                               ; preds = %91
  %95 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %96 = load %struct.ihex_binrec*, %struct.ihex_binrec** %5, align 8
  %97 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @be32_to_cpu(i32 %98)
  %100 = load %struct.ihex_binrec*, %struct.ihex_binrec** %5, align 8
  %101 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i8*
  %104 = load %struct.ihex_binrec*, %struct.ihex_binrec** %5, align 8
  %105 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @be16_to_cpu(i32 %106)
  %108 = call i32 @ezusb_writememory(%struct.usb_serial* %95, i32 %99, i8* %103, i32 %107, i32 160)
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %4, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %129

111:                                              ; preds = %94
  %112 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %113 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %4, align 4
  %117 = load %struct.ihex_binrec*, %struct.ihex_binrec** %5, align 8
  %118 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @be32_to_cpu(i32 %119)
  %121 = load %struct.ihex_binrec*, %struct.ihex_binrec** %5, align 8
  %122 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.ihex_binrec*, %struct.ihex_binrec** %5, align 8
  %125 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @be16_to_cpu(i32 %126)
  %128 = call i32 (i32*, i8*, ...) @dev_err(i32* %115, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.17, i64 0, i64 0), i32 %116, i32 %120, i64 %123, i32 %127)
  br label %132

129:                                              ; preds = %94
  %130 = load %struct.ihex_binrec*, %struct.ihex_binrec** %5, align 8
  %131 = call %struct.ihex_binrec* @ihex_next_binrec(%struct.ihex_binrec* %130)
  store %struct.ihex_binrec* %131, %struct.ihex_binrec** %5, align 8
  br label %91

132:                                              ; preds = %111, %91
  %133 = load %struct.firmware*, %struct.firmware** %7, align 8
  %134 = call i32 @release_firmware(%struct.firmware* %133)
  %135 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %136 = call i32 @ezusb_set_reset(%struct.usb_serial* %135, i32 0)
  store i32 %136, i32* %4, align 4
  store i32 1, i32* %2, align 4
  br label %137

137:                                              ; preds = %132, %75, %54, %32
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @request_ihex_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @ezusb_set_reset(%struct.usb_serial*, i32) #1

declare dso_local i32 @ezusb_writememory(%struct.usb_serial*, i32, i8*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local %struct.ihex_binrec* @ihex_next_binrec(%struct.ihex_binrec*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
