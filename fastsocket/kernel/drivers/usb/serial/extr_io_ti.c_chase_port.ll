; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_io_ti.c_chase_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_io_ti.c_chase_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edgeport_port = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tty_struct = type { i32 }

@HZ = common dso_local global i32 0, align 4
@EDGE_CLOSING_WAIT = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edgeport_port*, i64, i32)* @chase_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chase_port(%struct.edgeport_port* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.edgeport_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tty_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.edgeport_port* %0, %struct.edgeport_port** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.edgeport_port*, %struct.edgeport_port** %4, align 8
  %12 = getelementptr inbounds %struct.edgeport_port, %struct.edgeport_port* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = call %struct.tty_struct* @tty_port_tty_get(i32* %14)
  store %struct.tty_struct* %15, %struct.tty_struct** %8, align 8
  %16 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %17 = icmp ne %struct.tty_struct* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %149

19:                                               ; preds = %3
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @HZ, align 4
  %24 = load i32, i32* @EDGE_CLOSING_WAIT, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sdiv i32 %25, 100
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %5, align 8
  br label %28

28:                                               ; preds = %22, %19
  %29 = load %struct.edgeport_port*, %struct.edgeport_port** %4, align 8
  %30 = getelementptr inbounds %struct.edgeport_port, %struct.edgeport_port* %29, i32 0, i32 2
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load i32, i32* @current, align 4
  %34 = call i32 @init_waitqueue_entry(i32* %9, i32 %33)
  %35 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %36 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %35, i32 0, i32 0
  %37 = call i32 @add_wait_queue(i32* %36, i32* %9)
  br label %38

38:                                               ; preds = %64, %28
  %39 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %40 = call i32 @set_current_state(i32 %39)
  %41 = load %struct.edgeport_port*, %struct.edgeport_port** %4, align 8
  %42 = getelementptr inbounds %struct.edgeport_port, %struct.edgeport_port* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @edge_buf_data_avail(i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %63, label %46

46:                                               ; preds = %38
  %47 = load i64, i64* %5, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %63, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @current, align 4
  %51 = call i64 @signal_pending(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %49
  %54 = load %struct.edgeport_port*, %struct.edgeport_port** %4, align 8
  %55 = getelementptr inbounds %struct.edgeport_port, %struct.edgeport_port* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @usb_get_intfdata(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %53, %49, %46, %38
  br label %75

64:                                               ; preds = %53
  %65 = load %struct.edgeport_port*, %struct.edgeport_port** %4, align 8
  %66 = getelementptr inbounds %struct.edgeport_port, %struct.edgeport_port* %65, i32 0, i32 2
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load i64, i64* %5, align 8
  %70 = call i64 @schedule_timeout(i64 %69)
  store i64 %70, i64* %5, align 8
  %71 = load %struct.edgeport_port*, %struct.edgeport_port** %4, align 8
  %72 = getelementptr inbounds %struct.edgeport_port, %struct.edgeport_port* %71, i32 0, i32 2
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @spin_lock_irqsave(i32* %72, i64 %73)
  br label %38

75:                                               ; preds = %63
  %76 = load i32, i32* @TASK_RUNNING, align 4
  %77 = call i32 @set_current_state(i32 %76)
  %78 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %79 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %78, i32 0, i32 0
  %80 = call i32 @remove_wait_queue(i32* %79, i32* %9)
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %75
  %84 = load %struct.edgeport_port*, %struct.edgeport_port** %4, align 8
  %85 = getelementptr inbounds %struct.edgeport_port, %struct.edgeport_port* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @edge_buf_clear(i32 %86)
  br label %88

88:                                               ; preds = %83, %75
  %89 = load %struct.edgeport_port*, %struct.edgeport_port** %4, align 8
  %90 = getelementptr inbounds %struct.edgeport_port, %struct.edgeport_port* %89, i32 0, i32 2
  %91 = load i64, i64* %10, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  %93 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %94 = call i32 @tty_kref_put(%struct.tty_struct* %93)
  %95 = load i64, i64* @jiffies, align 8
  %96 = load i64, i64* %5, align 8
  %97 = add i64 %96, %95
  store i64 %97, i64* %5, align 8
  br label %98

98:                                               ; preds = %124, %88
  %99 = load i64, i64* @jiffies, align 8
  %100 = load i64, i64* %5, align 8
  %101 = sub i64 %99, %100
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %98
  %104 = load i32, i32* @current, align 4
  %105 = call i64 @signal_pending(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %103
  %108 = load %struct.edgeport_port*, %struct.edgeport_port** %4, align 8
  %109 = getelementptr inbounds %struct.edgeport_port, %struct.edgeport_port* %108, i32 0, i32 1
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @usb_get_intfdata(i32 %114)
  %116 = icmp ne i64 %115, 0
  br label %117

117:                                              ; preds = %107, %103, %98
  %118 = phi i1 [ false, %103 ], [ false, %98 ], [ %116, %107 ]
  br i1 %118, label %119, label %126

119:                                              ; preds = %117
  %120 = load %struct.edgeport_port*, %struct.edgeport_port** %4, align 8
  %121 = call i32 @tx_active(%struct.edgeport_port* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %119
  br label %126

124:                                              ; preds = %119
  %125 = call i32 @msleep(i32 10)
  br label %98

126:                                              ; preds = %123, %117
  %127 = load %struct.edgeport_port*, %struct.edgeport_port** %4, align 8
  %128 = getelementptr inbounds %struct.edgeport_port, %struct.edgeport_port* %127, i32 0, i32 1
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @usb_get_intfdata(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %126
  br label %149

137:                                              ; preds = %126
  %138 = load %struct.edgeport_port*, %struct.edgeport_port** %4, align 8
  %139 = getelementptr inbounds %struct.edgeport_port, %struct.edgeport_port* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  store i32 50, i32* %7, align 4
  br label %144

144:                                              ; preds = %143, %137
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @DIV_ROUND_UP(i32 10000, i32 %145)
  %147 = call i32 @max(i32 1, i32 %146)
  %148 = call i32 @msleep(i32 %147)
  br label %149

149:                                              ; preds = %144, %136, %18
  ret void
}

declare dso_local %struct.tty_struct* @tty_port_tty_get(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @init_waitqueue_entry(i32*, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @edge_buf_data_avail(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i64 @usb_get_intfdata(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @edge_buf_clear(i32) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local i32 @tx_active(%struct.edgeport_port*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
