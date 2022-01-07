; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devices.c_usb_dump_endpoint_descriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devices.c_usb_dump_endpoint_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_endpoint_descriptor = type { i32, i32, i32, i32 }

@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Ctrl\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Isoc\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Bulk\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Int.\00", align 1
@format_endpt = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*, i8*, %struct.usb_endpoint_descriptor*)* @usb_dump_endpoint_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @usb_dump_endpoint_descriptor(i32 %0, i8* %1, i8* %2, %struct.usb_endpoint_descriptor* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.usb_endpoint_descriptor*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.usb_endpoint_descriptor* %3, %struct.usb_endpoint_descriptor** %9, align 8
  store i32 1, i32* %14, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ugt i8* %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %5, align 8
  br label %129

20:                                               ; preds = %4
  %21 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %22 = call i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %21)
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 73, i32 79
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %10, align 1
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @USB_SPEED_HIGH, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %20
  %31 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %32 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le16_to_cpu(i32 %33)
  %35 = and i32 %34, 6144
  switch i32 %35, label %38 [
    i32 2048, label %36
    i32 4096, label %37
  ]

36:                                               ; preds = %30
  store i32 2, i32* %14, align 4
  br label %38

37:                                               ; preds = %30
  store i32 3, i32* %14, align 4
  br label %38

38:                                               ; preds = %30, %37, %36
  br label %39

39:                                               ; preds = %38, %20
  %40 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %41 = call i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor* %40)
  switch i32 %41, label %87 [
    i32 130, label %42
    i32 128, label %52
    i32 131, label %58
    i32 129, label %72
  ]

42:                                               ; preds = %39
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @USB_SPEED_HIGH, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %48 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %13, align 4
  br label %51

50:                                               ; preds = %42
  store i32 0, i32* %13, align 4
  br label %51

51:                                               ; preds = %50, %46
  store i8 66, i8* %10, align 1
  br label %89

52:                                               ; preds = %39
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  %53 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %54 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sub i32 %55, 1
  %57 = shl i32 1, %56
  store i32 %57, i32* %13, align 4
  br label %89

58:                                               ; preds = %39
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @USB_SPEED_HIGH, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load i8, i8* %10, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 79
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %68 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %13, align 4
  br label %71

70:                                               ; preds = %62, %58
  store i32 0, i32* %13, align 4
  br label %71

71:                                               ; preds = %70, %66
  br label %89

72:                                               ; preds = %39
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @USB_SPEED_HIGH, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %78 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sub i32 %79, 1
  %81 = shl i32 1, %80
  store i32 %81, i32* %13, align 4
  br label %86

82:                                               ; preds = %72
  %83 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %84 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %82, %76
  br label %89

87:                                               ; preds = %39
  %88 = load i8*, i8** %7, align 8
  store i8* %88, i8** %5, align 8
  br label %129

89:                                               ; preds = %86, %71, %52, %51
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @USB_SPEED_HIGH, align 4
  %92 = icmp eq i32 %90, %91
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 125, i32 1000
  %95 = load i32, i32* %13, align 4
  %96 = mul i32 %95, %94
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = urem i32 %97, 1000
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  store i8 117, i8* %11, align 1
  br label %104

101:                                              ; preds = %89
  store i8 109, i8* %11, align 1
  %102 = load i32, i32* %13, align 4
  %103 = udiv i32 %102, 1000
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %101, %100
  %105 = load i8*, i8** %7, align 8
  %106 = load i8*, i8** @format_endpt, align 8
  %107 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %108 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load i8, i8* %10, align 1
  %111 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %112 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i8*, i8** %12, align 8
  %115 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %116 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @le16_to_cpu(i32 %117)
  %119 = and i32 %118, 2047
  %120 = load i32, i32* %14, align 4
  %121 = mul i32 %119, %120
  %122 = load i32, i32* %13, align 4
  %123 = load i8, i8* %11, align 1
  %124 = call i32 @sprintf(i8* %105, i8* %106, i32 %109, i8 signext %110, i32 %113, i8* %114, i32 %121, i32 %122, i8 signext %123)
  %125 = load i8*, i8** %7, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  store i8* %127, i8** %7, align 8
  %128 = load i8*, i8** %7, align 8
  store i8* %128, i8** %5, align 8
  br label %129

129:                                              ; preds = %104, %87, %18
  %130 = load i8*, i8** %5, align 8
  ret i8* %130
}

declare dso_local i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i8 signext, i32, i8*, i32, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
