; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_u_serial.c_gs_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_u_serial.c_gs_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.gs_port* }
%struct.gs_port = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"gs_write: ttyGS%d (%p) writing %d bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @gs_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gs_write(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gs_port*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 0
  %12 = load %struct.gs_port*, %struct.gs_port** %11, align 8
  store %struct.gs_port* %12, %struct.gs_port** %7, align 8
  %13 = load %struct.gs_port*, %struct.gs_port** %7, align 8
  %14 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @pr_vdebug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %15, %struct.tty_struct* %16, i32 %17)
  %19 = load %struct.gs_port*, %struct.gs_port** %7, align 8
  %20 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %19, i32 0, i32 0
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load %struct.gs_port*, %struct.gs_port** %7, align 8
  %27 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %26, i32 0, i32 2
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @gs_buf_put(i32* %27, i8* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %25, %3
  %32 = load %struct.gs_port*, %struct.gs_port** %7, align 8
  %33 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.gs_port*, %struct.gs_port** %7, align 8
  %38 = call i32 @gs_start_tx(%struct.gs_port* %37)
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.gs_port*, %struct.gs_port** %7, align 8
  %41 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %40, i32 0, i32 0
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @pr_vdebug(i8*, i32, %struct.tty_struct*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @gs_buf_put(i32*, i8*, i32) #1

declare dso_local i32 @gs_start_tx(%struct.gs_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
