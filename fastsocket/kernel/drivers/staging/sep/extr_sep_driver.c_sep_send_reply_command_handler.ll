; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_send_reply_command_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_send_reply_command_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sep_device = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"sep:sep_send_reply_command_handler start\0A\00", align 1
@sep_mutex = common dso_local global i32 0, align 4
@HW_HOST_HOST_SEP_GPR2_REG_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"sep: sep_send_reply_command_handler end\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sep_device*)* @sep_send_reply_command_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sep_send_reply_command_handler(%struct.sep_device* %0) #0 {
  %2 = alloca %struct.sep_device*, align 8
  store %struct.sep_device* %0, %struct.sep_device** %2, align 8
  %3 = call i32 @dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 (...) @flush_cache_all()
  %5 = load %struct.sep_device*, %struct.sep_device** %2, align 8
  %6 = call i32 @sep_dump_message(%struct.sep_device* %5)
  %7 = call i32 @mutex_lock(i32* @sep_mutex)
  %8 = load %struct.sep_device*, %struct.sep_device** %2, align 8
  %9 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  %12 = load %struct.sep_device*, %struct.sep_device** %2, align 8
  %13 = load i32, i32* @HW_HOST_HOST_SEP_GPR2_REG_ADDR, align 4
  %14 = load %struct.sep_device*, %struct.sep_device** %2, align 8
  %15 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @sep_write_reg(%struct.sep_device* %12, i32 %13, i32 %16)
  %18 = load %struct.sep_device*, %struct.sep_device** %2, align 8
  %19 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.sep_device*, %struct.sep_device** %2, align 8
  %23 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = call i32 @mutex_unlock(i32* @sep_mutex)
  %27 = call i32 @dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @flush_cache_all(...) #1

declare dso_local i32 @sep_dump_message(%struct.sep_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sep_write_reg(%struct.sep_device*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
