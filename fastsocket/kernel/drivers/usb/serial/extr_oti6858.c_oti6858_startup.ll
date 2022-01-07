; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_oti6858.c_oti6858_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_oti6858.c_oti6858_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32, %struct.usb_serial_port** }
%struct.usb_serial_port = type { i32 }
%struct.oti6858_private = type { i32*, i32, i32, %struct.usb_serial_port*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PL2303_BUF_SIZE = common dso_local global i32 0, align 4
@setup_line = common dso_local global i32 0, align 4
@send_data = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*)* @oti6858_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oti6858_startup(%struct.usb_serial* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial*, align 8
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca %struct.oti6858_private*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %3, align 8
  %7 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %8 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %7, i32 0, i32 1
  %9 = load %struct.usb_serial_port**, %struct.usb_serial_port*** %8, align 8
  %10 = getelementptr inbounds %struct.usb_serial_port*, %struct.usb_serial_port** %9, i64 0
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %10, align 8
  store %struct.usb_serial_port* %11, %struct.usb_serial_port** %4, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %63, %1
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %15 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %66

18:                                               ; preds = %12
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.oti6858_private* @kzalloc(i32 32, i32 %19)
  store %struct.oti6858_private* %20, %struct.oti6858_private** %5, align 8
  %21 = load %struct.oti6858_private*, %struct.oti6858_private** %5, align 8
  %22 = icmp ne %struct.oti6858_private* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %66

24:                                               ; preds = %18
  %25 = load i32, i32* @PL2303_BUF_SIZE, align 4
  %26 = call i32* @oti6858_buf_alloc(i32 %25)
  %27 = load %struct.oti6858_private*, %struct.oti6858_private** %5, align 8
  %28 = getelementptr inbounds %struct.oti6858_private, %struct.oti6858_private* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  %29 = load %struct.oti6858_private*, %struct.oti6858_private** %5, align 8
  %30 = getelementptr inbounds %struct.oti6858_private, %struct.oti6858_private* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load %struct.oti6858_private*, %struct.oti6858_private** %5, align 8
  %35 = call i32 @kfree(%struct.oti6858_private* %34)
  br label %66

36:                                               ; preds = %24
  %37 = load %struct.oti6858_private*, %struct.oti6858_private** %5, align 8
  %38 = getelementptr inbounds %struct.oti6858_private, %struct.oti6858_private* %37, i32 0, i32 5
  %39 = call i32 @spin_lock_init(i32* %38)
  %40 = load %struct.oti6858_private*, %struct.oti6858_private** %5, align 8
  %41 = getelementptr inbounds %struct.oti6858_private, %struct.oti6858_private* %40, i32 0, i32 4
  %42 = call i32 @init_waitqueue_head(i32* %41)
  %43 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %44 = load %struct.oti6858_private*, %struct.oti6858_private** %5, align 8
  %45 = getelementptr inbounds %struct.oti6858_private, %struct.oti6858_private* %44, i32 0, i32 3
  store %struct.usb_serial_port* %43, %struct.usb_serial_port** %45, align 8
  %46 = load %struct.oti6858_private*, %struct.oti6858_private** %5, align 8
  %47 = getelementptr inbounds %struct.oti6858_private, %struct.oti6858_private* %46, i32 0, i32 2
  %48 = load i32, i32* @setup_line, align 4
  %49 = call i32 @INIT_DELAYED_WORK(i32* %47, i32 %48)
  %50 = load %struct.oti6858_private*, %struct.oti6858_private** %5, align 8
  %51 = getelementptr inbounds %struct.oti6858_private, %struct.oti6858_private* %50, i32 0, i32 1
  %52 = load i32, i32* @send_data, align 4
  %53 = call i32 @INIT_DELAYED_WORK(i32* %51, i32 %52)
  %54 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %55 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %54, i32 0, i32 1
  %56 = load %struct.usb_serial_port**, %struct.usb_serial_port*** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.usb_serial_port*, %struct.usb_serial_port** %56, i64 %58
  %60 = load %struct.usb_serial_port*, %struct.usb_serial_port** %59, align 8
  %61 = load %struct.oti6858_private*, %struct.oti6858_private** %5, align 8
  %62 = call i32 @usb_set_serial_port_data(%struct.usb_serial_port* %60, %struct.oti6858_private* %61)
  br label %63

63:                                               ; preds = %36
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %12

66:                                               ; preds = %33, %23, %12
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %69 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %108

73:                                               ; preds = %66
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %102, %73
  %77 = load i32, i32* %6, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %105

79:                                               ; preds = %76
  %80 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %81 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %80, i32 0, i32 1
  %82 = load %struct.usb_serial_port**, %struct.usb_serial_port*** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.usb_serial_port*, %struct.usb_serial_port** %82, i64 %84
  %86 = load %struct.usb_serial_port*, %struct.usb_serial_port** %85, align 8
  %87 = call %struct.oti6858_private* @usb_get_serial_port_data(%struct.usb_serial_port* %86)
  store %struct.oti6858_private* %87, %struct.oti6858_private** %5, align 8
  %88 = load %struct.oti6858_private*, %struct.oti6858_private** %5, align 8
  %89 = getelementptr inbounds %struct.oti6858_private, %struct.oti6858_private* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @oti6858_buf_free(i32* %90)
  %92 = load %struct.oti6858_private*, %struct.oti6858_private** %5, align 8
  %93 = call i32 @kfree(%struct.oti6858_private* %92)
  %94 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %95 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %94, i32 0, i32 1
  %96 = load %struct.usb_serial_port**, %struct.usb_serial_port*** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.usb_serial_port*, %struct.usb_serial_port** %96, i64 %98
  %100 = load %struct.usb_serial_port*, %struct.usb_serial_port** %99, align 8
  %101 = call i32 @usb_set_serial_port_data(%struct.usb_serial_port* %100, %struct.oti6858_private* null)
  br label %102

102:                                              ; preds = %79
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %6, align 4
  br label %76

105:                                              ; preds = %76
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %105, %72
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.oti6858_private* @kzalloc(i32, i32) #1

declare dso_local i32* @oti6858_buf_alloc(i32) #1

declare dso_local i32 @kfree(%struct.oti6858_private*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @usb_set_serial_port_data(%struct.usb_serial_port*, %struct.oti6858_private*) #1

declare dso_local %struct.oti6858_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @oti6858_buf_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
