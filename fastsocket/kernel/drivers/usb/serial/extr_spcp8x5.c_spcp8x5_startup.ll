; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_spcp8x5.c_spcp8x5_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_spcp8x5.c_spcp8x5_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.spcp8x5_private = type { i32, i32*, i32, i32 }

@SPCP825_007_TYPE = common dso_local global i32 0, align 4
@SPCP835_TYPE = common dso_local global i32 0, align 4
@SPCP825_008_TYPE = common dso_local global i32 0, align 4
@SPCP825_INTERMATIC_TYPE = common dso_local global i32 0, align 4
@SPCP825_PHILIP_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"device type = %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@SPCP8x5_BUF_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*)* @spcp8x5_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spcp8x5_startup(%struct.usb_serial* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial*, align 8
  %4 = alloca %struct.spcp8x5_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %3, align 8
  %8 = load i32, i32* @SPCP825_007_TYPE, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %10 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @le16_to_cpu(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 513
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @SPCP825_007_TYPE, align 4
  store i32 %19, i32* %6, align 4
  br label %53

20:                                               ; preds = %1
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 561
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @SPCP835_TYPE, align 4
  store i32 %24, i32* %6, align 4
  br label %52

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 565
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @SPCP825_008_TYPE, align 4
  store i32 %29, i32* %6, align 4
  br label %51

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 516
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @SPCP825_INTERMATIC_TYPE, align 4
  store i32 %34, i32* %6, align 4
  br label %50

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 1137
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %40 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @cpu_to_le16(i32 2078)
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* @SPCP825_PHILIP_TYPE, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %47, %38, %35
  br label %50

50:                                               ; preds = %49, %33
  br label %51

51:                                               ; preds = %50, %28
  br label %52

52:                                               ; preds = %51, %23
  br label %53

53:                                               ; preds = %52, %18
  %54 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %55 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @dev_dbg(i32* %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %58)
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %101, %53
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %63 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %104

66:                                               ; preds = %60
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call %struct.spcp8x5_private* @kzalloc(i32 24, i32 %67)
  store %struct.spcp8x5_private* %68, %struct.spcp8x5_private** %4, align 8
  %69 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %4, align 8
  %70 = icmp ne %struct.spcp8x5_private* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  br label %108

72:                                               ; preds = %66
  %73 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %4, align 8
  %74 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %73, i32 0, i32 3
  %75 = call i32 @spin_lock_init(i32* %74)
  %76 = load i32, i32* @SPCP8x5_BUF_SIZE, align 4
  %77 = call i32* @alloc_ringbuf(i32 %76)
  %78 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %4, align 8
  %79 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %78, i32 0, i32 1
  store i32* %77, i32** %79, align 8
  %80 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %4, align 8
  %81 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  br label %105

85:                                               ; preds = %72
  %86 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %4, align 8
  %87 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %86, i32 0, i32 2
  %88 = call i32 @init_waitqueue_head(i32* %87)
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %4, align 8
  %91 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %93 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %4, align 8
  %100 = call i32 @usb_set_serial_port_data(i32 %98, %struct.spcp8x5_private* %99)
  br label %101

101:                                              ; preds = %85
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %60

104:                                              ; preds = %60
  store i32 0, i32* %2, align 4
  br label %143

105:                                              ; preds = %84
  %106 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %4, align 8
  %107 = call i32 @kfree(%struct.spcp8x5_private* %106)
  br label %108

108:                                              ; preds = %105, %71
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %137, %108
  %112 = load i32, i32* %5, align 4
  %113 = icmp sge i32 %112, 0
  br i1 %113, label %114, label %140

114:                                              ; preds = %111
  %115 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %116 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call %struct.spcp8x5_private* @usb_get_serial_port_data(i32 %121)
  store %struct.spcp8x5_private* %122, %struct.spcp8x5_private** %4, align 8
  %123 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %4, align 8
  %124 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @free_ringbuf(i32* %125)
  %127 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %4, align 8
  %128 = call i32 @kfree(%struct.spcp8x5_private* %127)
  %129 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %130 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @usb_set_serial_port_data(i32 %135, %struct.spcp8x5_private* null)
  br label %137

137:                                              ; preds = %114
  %138 = load i32, i32* %5, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %5, align 4
  br label %111

140:                                              ; preds = %111
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %140, %104
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local %struct.spcp8x5_private* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32* @alloc_ringbuf(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @usb_set_serial_port_data(i32, %struct.spcp8x5_private*) #1

declare dso_local i32 @kfree(%struct.spcp8x5_private*) #1

declare dso_local %struct.spcp8x5_private* @usb_get_serial_port_data(i32) #1

declare dso_local i32 @free_ringbuf(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
