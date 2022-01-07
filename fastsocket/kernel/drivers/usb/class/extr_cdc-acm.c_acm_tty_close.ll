; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_acm_tty_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_acm_tty_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.acm* }
%struct.acm = type { i32, i32 }
%struct.file = type { i32 }

@open_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.file*)* @acm_tty_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acm_tty_close(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.acm*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 0
  %8 = load %struct.acm*, %struct.acm** %7, align 8
  store %struct.acm* %8, %struct.acm** %5, align 8
  %9 = load %struct.acm*, %struct.acm** %5, align 8
  %10 = icmp ne %struct.acm* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %45

12:                                               ; preds = %2
  %13 = load %struct.acm*, %struct.acm** %5, align 8
  %14 = getelementptr inbounds %struct.acm, %struct.acm* %13, i32 0, i32 0
  %15 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = call i64 @tty_port_close_start(i32* %14, %struct.tty_struct* %15, %struct.file* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %12
  %20 = call i32 @mutex_lock(i32* @open_mutex)
  %21 = load %struct.acm*, %struct.acm** %5, align 8
  %22 = getelementptr inbounds %struct.acm, %struct.acm* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %19
  %26 = load %struct.acm*, %struct.acm** %5, align 8
  %27 = getelementptr inbounds %struct.acm, %struct.acm* %26, i32 0, i32 0
  %28 = call i32 @tty_port_tty_set(i32* %27, i32* null)
  %29 = load %struct.acm*, %struct.acm** %5, align 8
  %30 = call i32 @acm_tty_unregister(%struct.acm* %29)
  %31 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %32 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %31, i32 0, i32 0
  store %struct.acm* null, %struct.acm** %32, align 8
  br label %33

33:                                               ; preds = %25, %19
  %34 = call i32 @mutex_unlock(i32* @open_mutex)
  br label %45

35:                                               ; preds = %12
  %36 = load %struct.acm*, %struct.acm** %5, align 8
  %37 = call i32 @acm_port_down(%struct.acm* %36, i32 0)
  %38 = load %struct.acm*, %struct.acm** %5, align 8
  %39 = getelementptr inbounds %struct.acm, %struct.acm* %38, i32 0, i32 0
  %40 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %41 = call i32 @tty_port_close_end(i32* %39, %struct.tty_struct* %40)
  %42 = load %struct.acm*, %struct.acm** %5, align 8
  %43 = getelementptr inbounds %struct.acm, %struct.acm* %42, i32 0, i32 0
  %44 = call i32 @tty_port_tty_set(i32* %43, i32* null)
  br label %45

45:                                               ; preds = %35, %33, %11
  ret void
}

declare dso_local i64 @tty_port_close_start(i32*, %struct.tty_struct*, %struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tty_port_tty_set(i32*, i32*) #1

declare dso_local i32 @acm_tty_unregister(%struct.acm*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @acm_port_down(%struct.acm*, i32) #1

declare dso_local i32 @tty_port_close_end(i32*, %struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
