; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_spcp8x5.c_spcp8x5_read_bulk_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_spcp8x5.c_spcp8x5_read_bulk_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i8*, i32, i32, i32, %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.spcp8x5_private = type { i32, i32, i32 }
%struct.tty_struct = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"start, result = %d, urb->actual_length = %d\0A,\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed submitting read urb %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"unable to handle the error, exiting.\0A\00", align 1
@TTY_NORMAL = common dso_local global i8 0, align 1
@UART_STATE_TRANSIENT_MASK = common dso_local global i32 0, align 4
@UART_BREAK_ERROR = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i8 0, align 1
@UART_PARITY_ERROR = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i8 0, align 1
@UART_FRAME_ERROR = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"tty_flag = %d\0A\00", align 1
@UART_OVERRUN_ERROR = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @spcp8x5_read_bulk_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spcp8x5_read_bulk_callback(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.spcp8x5_private*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.urb* %0, %struct.urb** %2, align 8
  %12 = load %struct.urb*, %struct.urb** %2, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 4
  %14 = load %struct.usb_serial_port*, %struct.usb_serial_port** %13, align 8
  store %struct.usb_serial_port* %14, %struct.usb_serial_port** %3, align 8
  %15 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %16 = call %struct.spcp8x5_private* @usb_get_serial_port_data(%struct.usb_serial_port* %15)
  store %struct.spcp8x5_private* %16, %struct.spcp8x5_private** %4, align 8
  %17 = load %struct.urb*, %struct.urb** %2, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %6, align 8
  %20 = load %struct.urb*, %struct.urb** %2, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  %23 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %24 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %23, i32 0, i32 0
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.urb*, %struct.urb** %2, align 8
  %27 = getelementptr inbounds %struct.urb, %struct.urb* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %24, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %67

32:                                               ; preds = %1
  %33 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %34 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  br label %192

39:                                               ; preds = %32
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @EPROTO, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %39
  %45 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %46 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.urb*, %struct.urb** %2, align 8
  %51 = getelementptr inbounds %struct.urb, %struct.urb* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.urb*, %struct.urb** %2, align 8
  %53 = load i32, i32* @GFP_ATOMIC, align 4
  %54 = call i32 @usb_submit_urb(%struct.urb* %52, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %44
  %58 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %59 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %58, i32 0, i32 0
  %60 = load i32, i32* %9, align 4
  %61 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %57, %44
  br label %192

63:                                               ; preds = %39
  %64 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %65 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %64, i32 0, i32 0
  %66 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %65, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %192

67:                                               ; preds = %1
  %68 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %68, i8* %11, align 1
  %69 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %4, align 8
  %70 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %69, i32 0, i32 2
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @spin_lock_irqsave(i32* %70, i64 %71)
  %73 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %4, align 8
  %74 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* @UART_STATE_TRANSIENT_MASK, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %4, align 8
  %79 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %4, align 8
  %83 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %82, i32 0, i32 2
  %84 = load i64, i64* %7, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  %86 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %4, align 8
  %87 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %86, i32 0, i32 1
  %88 = call i32 @wake_up_interruptible(i32* %87)
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @UART_BREAK_ERROR, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %67
  %94 = load i8, i8* @TTY_BREAK, align 1
  store i8 %94, i8* %11, align 1
  br label %111

95:                                               ; preds = %67
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @UART_PARITY_ERROR, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i8, i8* @TTY_PARITY, align 1
  store i8 %101, i8* %11, align 1
  br label %110

102:                                              ; preds = %95
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @UART_FRAME_ERROR, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i8, i8* @TTY_FRAME, align 1
  store i8 %108, i8* %11, align 1
  br label %109

109:                                              ; preds = %107, %102
  br label %110

110:                                              ; preds = %109, %100
  br label %111

111:                                              ; preds = %110, %93
  %112 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %113 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %112, i32 0, i32 0
  %114 = load i8, i8* %11, align 1
  %115 = sext i8 %114 to i32
  %116 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %113, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %115)
  %117 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %118 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %117, i32 0, i32 2
  %119 = call %struct.tty_struct* @tty_port_tty_get(%struct.TYPE_4__* %118)
  store %struct.tty_struct* %119, %struct.tty_struct** %5, align 8
  %120 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %121 = icmp ne %struct.tty_struct* %120, null
  br i1 %121, label %122, label %164

122:                                              ; preds = %111
  %123 = load %struct.urb*, %struct.urb** %2, align 8
  %124 = getelementptr inbounds %struct.urb, %struct.urb* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %164

127:                                              ; preds = %122
  %128 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %129 = load %struct.urb*, %struct.urb** %2, align 8
  %130 = getelementptr inbounds %struct.urb, %struct.urb* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  %133 = call i32 @tty_buffer_request_room(%struct.tty_struct* %128, i32 %132)
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* @UART_OVERRUN_ERROR, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %127
  %139 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %140 = load i8, i8* @TTY_OVERRUN, align 1
  %141 = call i32 @tty_insert_flip_char(%struct.tty_struct* %139, i8 zeroext 0, i8 signext %140)
  br label %142

142:                                              ; preds = %138, %127
  store i32 0, i32* %8, align 4
  br label %143

143:                                              ; preds = %158, %142
  %144 = load i32, i32* %8, align 4
  %145 = load %struct.urb*, %struct.urb** %2, align 8
  %146 = getelementptr inbounds %struct.urb, %struct.urb* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %161

149:                                              ; preds = %143
  %150 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %151 = load i8*, i8** %6, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = load i8, i8* %11, align 1
  %157 = call i32 @tty_insert_flip_char(%struct.tty_struct* %150, i8 zeroext %155, i8 signext %156)
  br label %158

158:                                              ; preds = %149
  %159 = load i32, i32* %8, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %8, align 4
  br label %143

161:                                              ; preds = %143
  %162 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %163 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %162)
  br label %164

164:                                              ; preds = %161, %122, %111
  %165 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %166 = call i32 @tty_kref_put(%struct.tty_struct* %165)
  %167 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %168 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %191

172:                                              ; preds = %164
  %173 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %174 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %173, i32 0, i32 1
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.urb*, %struct.urb** %2, align 8
  %179 = getelementptr inbounds %struct.urb, %struct.urb* %178, i32 0, i32 3
  store i32 %177, i32* %179, align 8
  %180 = load %struct.urb*, %struct.urb** %2, align 8
  %181 = load i32, i32* @GFP_ATOMIC, align 4
  %182 = call i32 @usb_submit_urb(%struct.urb* %180, i32 %181)
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %172
  %186 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %187 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %186, i32 0, i32 0
  %188 = load i32, i32* %9, align 4
  %189 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %187, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %188)
  br label %190

190:                                              ; preds = %185, %172
  br label %191

191:                                              ; preds = %190, %164
  br label %192

192:                                              ; preds = %191, %63, %62, %38
  ret void
}

declare dso_local %struct.spcp8x5_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local %struct.tty_struct* @tty_port_tty_get(%struct.TYPE_4__*) #1

declare dso_local i32 @tty_buffer_request_room(%struct.tty_struct*, i32) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i8 zeroext, i8 signext) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
