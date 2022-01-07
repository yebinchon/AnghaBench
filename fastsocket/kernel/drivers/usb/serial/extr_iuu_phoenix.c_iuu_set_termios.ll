; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_iuu_phoenix.c_iuu_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_iuu_phoenix.c_iuu_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.usb_serial_port = type { i32 }
%struct.ktermios = type { i32 }

@CMSPAR = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@CS7 = common dso_local global i32 0, align 4
@IUU_PARITY_SPACE = common dso_local global i32 0, align 4
@IUU_PARITY_MARK = common dso_local global i32 0, align 4
@IUU_PARITY_NONE = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@IUU_PARITY_ODD = common dso_local global i32 0, align 4
@IUU_PARITY_EVEN = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@IUU_TWO_STOP_BITS = common dso_local global i32 0, align 4
@IUU_ONE_STOP_BIT = common dso_local global i32 0, align 4
@clockmode = common dso_local global i32 0, align 4
@boost = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.usb_serial_port*, %struct.ktermios*)* @iuu_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iuu_set_termios(%struct.tty_struct* %0, %struct.usb_serial_port* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.usb_serial_port* %1, %struct.usb_serial_port** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %15 = load i32, i32* @CMSPAR, align 4
  %16 = load i32, i32* @PARENB, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @PARODD, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %21 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @CS7, align 4
  store i32 %25, i32* %12, align 4
  store i32 9600, i32* %13, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %14, align 4
  store i32 0, i32* %11, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @CMSPAR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %3
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @PARODD, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @IUU_PARITY_SPACE, align 4
  %40 = load i32, i32* %11, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %11, align 4
  br label %46

42:                                               ; preds = %33
  %43 = load i32, i32* @IUU_PARITY_MARK, align 4
  %44 = load i32, i32* %11, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %42, %38
  br label %72

47:                                               ; preds = %3
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @PARENB, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @IUU_PARITY_NONE, align 4
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* @CS8, align 4
  store i32 %56, i32* %12, align 4
  br label %71

57:                                               ; preds = %47
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @PARODD, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @IUU_PARITY_ODD, align 4
  %64 = load i32, i32* %11, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %11, align 4
  br label %70

66:                                               ; preds = %57
  %67 = load i32, i32* @IUU_PARITY_EVEN, align 4
  %68 = load i32, i32* %11, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %66, %62
  br label %71

71:                                               ; preds = %70, %52
  br label %72

72:                                               ; preds = %71, %46
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @CSTOPB, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* @IUU_TWO_STOP_BITS, align 4
  br label %81

79:                                               ; preds = %72
  %80 = load i32, i32* @IUU_ONE_STOP_BIT, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  %83 = load i32, i32* %11, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %11, align 4
  %85 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %86 = load i32, i32* @clockmode, align 4
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %93

89:                                               ; preds = %81
  %90 = load i32, i32* @boost, align 4
  %91 = mul nsw i32 9600, %90
  %92 = sdiv i32 %91, 100
  br label %93

93:                                               ; preds = %89, %88
  %94 = phi i32 [ 16457, %88 ], [ %92, %89 ]
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @iuu_uart_baud(%struct.usb_serial_port* %85, i32 %94, i32* %10, i32 %95)
  store i32 %96, i32* %9, align 4
  %97 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %98 = icmp ne %struct.ktermios* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %101 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %104 = call i32 @tty_termios_copy_hw(%struct.TYPE_2__* %102, %struct.ktermios* %103)
  br label %105

105:                                              ; preds = %99, %93
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %133

109:                                              ; preds = %105
  %110 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @tty_encode_baud_rate(%struct.tty_struct* %110, i32 %111, i32 %112)
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @CSIZE, align 4
  %116 = or i32 %114, %115
  %117 = xor i32 %116, -1
  %118 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %119 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %118, i32 0, i32 0
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, %117
  store i32 %123, i32* %121, align 4
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %12, align 4
  %126 = or i32 %124, %125
  %127 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %128 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %127, i32 0, i32 0
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %126
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %109, %108
  ret void
}

declare dso_local i32 @iuu_uart_baud(%struct.usb_serial_port*, i32, i32*, i32) #1

declare dso_local i32 @tty_termios_copy_hw(%struct.TYPE_2__*, %struct.ktermios*) #1

declare dso_local i32 @tty_encode_baud_rate(%struct.tty_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
