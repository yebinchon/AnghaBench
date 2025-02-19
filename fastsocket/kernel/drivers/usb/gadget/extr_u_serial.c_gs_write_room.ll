; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_u_serial.c_gs_write_room.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_u_serial.c_gs_write_room.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.gs_port* }
%struct.gs_port = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [32 x i8] c"gs_write_room: (%d,%p) room=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @gs_write_room to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gs_write_room(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.gs_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 0
  %8 = load %struct.gs_port*, %struct.gs_port** %7, align 8
  store %struct.gs_port* %8, %struct.gs_port** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %10 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %9, i32 0, i32 1
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %14 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %19 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %18, i32 0, i32 2
  %20 = call i32 @gs_buf_space_avail(i32* %19)
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %23 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %22, i32 0, i32 1
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %27 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @pr_vdebug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %28, %struct.tty_struct* %29, i32 %30)
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @gs_buf_space_avail(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_vdebug(i8*, i32, %struct.tty_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
