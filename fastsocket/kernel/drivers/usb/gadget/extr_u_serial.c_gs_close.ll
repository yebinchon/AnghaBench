; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_u_serial.c_gs_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_u_serial.c_gs_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.gs_port* }
%struct.gs_port = type { i32, i32, i32, i32, i32, i32*, i32, %struct.gserial*, i32 }
%struct.gserial = type { i32 (%struct.gserial*)* }
%struct.file = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"gs_close: ttyGS%d (%p,%p) ...\0A\00", align 1
@GS_CLOSE_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"gs_close: ttyGS%d (%p,%p) done!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.file*)* @gs_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gs_close(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.gs_port*, align 8
  %6 = alloca %struct.gserial*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = load %struct.gs_port*, %struct.gs_port** %8, align 8
  store %struct.gs_port* %9, %struct.gs_port** %5, align 8
  %10 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %11 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %10, i32 0, i32 2
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %14 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %19 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @WARN_ON(i32 1)
  br label %29

24:                                               ; preds = %17
  %25 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %26 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %24, %22
  br label %111

30:                                               ; preds = %2
  %31 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %32 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %35 = load %struct.file*, %struct.file** %4, align 8
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %33, %struct.tty_struct* %34, %struct.file* %35)
  %37 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %38 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %40 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %42 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %41, i32 0, i32 7
  %43 = load %struct.gserial*, %struct.gserial** %42, align 8
  store %struct.gserial* %43, %struct.gserial** %6, align 8
  %44 = load %struct.gserial*, %struct.gserial** %6, align 8
  %45 = icmp ne %struct.gserial* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %30
  %47 = load %struct.gserial*, %struct.gserial** %6, align 8
  %48 = getelementptr inbounds %struct.gserial, %struct.gserial* %47, i32 0, i32 0
  %49 = load i32 (%struct.gserial*)*, i32 (%struct.gserial*)** %48, align 8
  %50 = icmp ne i32 (%struct.gserial*)* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.gserial*, %struct.gserial** %6, align 8
  %53 = getelementptr inbounds %struct.gserial, %struct.gserial* %52, i32 0, i32 0
  %54 = load i32 (%struct.gserial*)*, i32 (%struct.gserial*)** %53, align 8
  %55 = load %struct.gserial*, %struct.gserial** %6, align 8
  %56 = call i32 %54(%struct.gserial* %55)
  br label %57

57:                                               ; preds = %51, %46, %30
  %58 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %59 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %58, i32 0, i32 6
  %60 = call i64 @gs_buf_data_avail(i32* %59)
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %84

62:                                               ; preds = %57
  %63 = load %struct.gserial*, %struct.gserial** %6, align 8
  %64 = icmp ne %struct.gserial* %63, null
  br i1 %64, label %65, label %84

65:                                               ; preds = %62
  %66 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %67 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %66, i32 0, i32 2
  %68 = call i32 @spin_unlock_irq(i32* %67)
  %69 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %70 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %73 = call i32 @gs_writes_finished(%struct.gs_port* %72)
  %74 = load i32, i32* @GS_CLOSE_TIMEOUT, align 4
  %75 = load i32, i32* @HZ, align 4
  %76 = mul nsw i32 %74, %75
  %77 = call i32 @wait_event_interruptible_timeout(i32 %71, i32 %73, i32 %76)
  %78 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %79 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %78, i32 0, i32 2
  %80 = call i32 @spin_lock_irq(i32* %79)
  %81 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %82 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %81, i32 0, i32 7
  %83 = load %struct.gserial*, %struct.gserial** %82, align 8
  store %struct.gserial* %83, %struct.gserial** %6, align 8
  br label %84

84:                                               ; preds = %65, %62, %57
  %85 = load %struct.gserial*, %struct.gserial** %6, align 8
  %86 = icmp eq %struct.gserial* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %89 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %88, i32 0, i32 6
  %90 = call i32 @gs_buf_free(i32* %89)
  br label %95

91:                                               ; preds = %84
  %92 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %93 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %92, i32 0, i32 6
  %94 = call i32 @gs_buf_clear(i32* %93)
  br label %95

95:                                               ; preds = %91, %87
  %96 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %97 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %96, i32 0, i32 0
  store %struct.gs_port* null, %struct.gs_port** %97, align 8
  %98 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %99 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %98, i32 0, i32 5
  store i32* null, i32** %99, align 8
  %100 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %101 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %100, i32 0, i32 1
  store i32 0, i32* %101, align 4
  %102 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %103 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %106 = load %struct.file*, %struct.file** %4, align 8
  %107 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %104, %struct.tty_struct* %105, %struct.file* %106)
  %108 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %109 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %108, i32 0, i32 3
  %110 = call i32 @wake_up_interruptible(i32* %109)
  br label %111

111:                                              ; preds = %95, %29
  %112 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %113 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %112, i32 0, i32 2
  %114 = call i32 @spin_unlock_irq(i32* %113)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, %struct.tty_struct*, %struct.file*) #1

declare dso_local i64 @gs_buf_data_avail(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @gs_writes_finished(%struct.gs_port*) #1

declare dso_local i32 @gs_buf_free(i32*) #1

declare dso_local i32 @gs_buf_clear(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
