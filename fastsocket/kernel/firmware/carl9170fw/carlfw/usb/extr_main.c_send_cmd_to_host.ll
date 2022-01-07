; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/usb/extr_main.c_send_cmd_to_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/usb/extr_main.c_send_cmd_to_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carl9170_cmd = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"out of msg buffers\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_cmd_to_host(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.carl9170_cmd*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = call i64 (...) @get_int_buf()
  %11 = inttoptr i64 %10 to %struct.carl9170_cmd*
  store %struct.carl9170_cmd* %11, %struct.carl9170_cmd** %9, align 8
  %12 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %9, align 8
  %13 = icmp eq %struct.carl9170_cmd* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %39

19:                                               ; preds = %4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %9, align 8
  %22 = getelementptr inbounds %struct.carl9170_cmd, %struct.carl9170_cmd* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %9, align 8
  %26 = getelementptr inbounds %struct.carl9170_cmd, %struct.carl9170_cmd* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %9, align 8
  %30 = getelementptr inbounds %struct.carl9170_cmd, %struct.carl9170_cmd* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 4
  %32 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %9, align 8
  %33 = getelementptr inbounds %struct.carl9170_cmd, %struct.carl9170_cmd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @memcpy(i32 %34, i32* %35, i32 %36)
  %38 = call i32 (...) @usb_trigger_in()
  br label %39

39:                                               ; preds = %19, %17
  ret void
}

declare dso_local i64 @get_int_buf(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @usb_trigger_in(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
