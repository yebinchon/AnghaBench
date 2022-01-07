; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devices.c_usb_dump_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devices.c_usb_dump_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_host_config = type { %struct.usb_interface**, %struct.usb_interface_cache**, %struct.TYPE_2__, i32** }
%struct.usb_interface = type { i32 }
%struct.usb_interface_cache = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"(null Cfg. desc.)\0A\00", align 1
@USB_MAXIADS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*, i8*, %struct.usb_host_config*, i32)* @usb_dump_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @usb_dump_config(i32 %0, i8* %1, i8* %2, %struct.usb_host_config* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.usb_host_config*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.usb_interface_cache*, align 8
  %15 = alloca %struct.usb_interface*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.usb_host_config* %3, %struct.usb_host_config** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = icmp ugt i8* %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i8*, i8** %8, align 8
  store i8* %20, i8** %6, align 8
  br label %117

21:                                               ; preds = %5
  %22 = load %struct.usb_host_config*, %struct.usb_host_config** %10, align 8
  %23 = icmp ne %struct.usb_host_config* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  store i8* %29, i8** %6, align 8
  br label %117

30:                                               ; preds = %21
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct.usb_host_config*, %struct.usb_host_config** %10, align 8
  %34 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %33, i32 0, i32 2
  %35 = load i32, i32* %11, align 4
  %36 = call i8* @usb_dump_config_descriptor(i8* %31, i8* %32, %struct.TYPE_2__* %34, i32 %35)
  store i8* %36, i8** %8, align 8
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %62, %30
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @USB_MAXIADS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %37
  %42 = load %struct.usb_host_config*, %struct.usb_host_config** %10, align 8
  %43 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %42, i32 0, i32 3
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %65

51:                                               ; preds = %41
  %52 = load i8*, i8** %8, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load %struct.usb_host_config*, %struct.usb_host_config** %10, align 8
  %55 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %54, i32 0, i32 3
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = call i8* @usb_dump_iad_descriptor(i8* %52, i8* %53, i32* %60)
  store i8* %61, i8** %8, align 8
  br label %62

62:                                               ; preds = %51
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %37

65:                                               ; preds = %50, %37
  store i32 0, i32* %12, align 4
  br label %66

66:                                               ; preds = %112, %65
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.usb_host_config*, %struct.usb_host_config** %10, align 8
  %69 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %67, %71
  br i1 %72, label %73, label %115

73:                                               ; preds = %66
  %74 = load %struct.usb_host_config*, %struct.usb_host_config** %10, align 8
  %75 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %74, i32 0, i32 1
  %76 = load %struct.usb_interface_cache**, %struct.usb_interface_cache*** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.usb_interface_cache*, %struct.usb_interface_cache** %76, i64 %78
  %80 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %79, align 8
  store %struct.usb_interface_cache* %80, %struct.usb_interface_cache** %14, align 8
  %81 = load %struct.usb_host_config*, %struct.usb_host_config** %10, align 8
  %82 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %81, i32 0, i32 0
  %83 = load %struct.usb_interface**, %struct.usb_interface*** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.usb_interface*, %struct.usb_interface** %83, i64 %85
  %87 = load %struct.usb_interface*, %struct.usb_interface** %86, align 8
  store %struct.usb_interface* %87, %struct.usb_interface** %15, align 8
  store i32 0, i32* %13, align 4
  br label %88

88:                                               ; preds = %108, %73
  %89 = load i32, i32* %13, align 4
  %90 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %14, align 8
  %91 = getelementptr inbounds %struct.usb_interface_cache, %struct.usb_interface_cache* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %111

94:                                               ; preds = %88
  %95 = load i8*, i8** %8, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = icmp ugt i8* %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i8*, i8** %8, align 8
  store i8* %99, i8** %6, align 8
  br label %117

100:                                              ; preds = %94
  %101 = load i32, i32* %7, align 4
  %102 = load i8*, i8** %8, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %14, align 8
  %105 = load %struct.usb_interface*, %struct.usb_interface** %15, align 8
  %106 = load i32, i32* %13, align 4
  %107 = call i8* @usb_dump_interface(i32 %101, i8* %102, i8* %103, %struct.usb_interface_cache* %104, %struct.usb_interface* %105, i32 %106)
  store i8* %107, i8** %8, align 8
  br label %108

108:                                              ; preds = %100
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %13, align 4
  br label %88

111:                                              ; preds = %88
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %66

115:                                              ; preds = %66
  %116 = load i8*, i8** %8, align 8
  store i8* %116, i8** %6, align 8
  br label %117

117:                                              ; preds = %115, %98, %24, %19
  %118 = load i8*, i8** %6, align 8
  ret i8* %118
}

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i8* @usb_dump_config_descriptor(i8*, i8*, %struct.TYPE_2__*, i32) #1

declare dso_local i8* @usb_dump_iad_descriptor(i8*, i8*, i32*) #1

declare dso_local i8* @usb_dump_interface(i32, i8*, i8*, %struct.usb_interface_cache*, %struct.usb_interface*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
