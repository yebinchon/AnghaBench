; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-dbg.c_fill_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-dbg.c_fill_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_buffer = type { i8*, {}*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.debug_buffer*)* @fill_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_buffer(%struct.debug_buffer* %0) #0 {
  %2 = alloca %struct.debug_buffer*, align 8
  %3 = alloca i32, align 4
  store %struct.debug_buffer* %0, %struct.debug_buffer** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %5 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %10 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @vmalloc(i32 %11)
  %13 = inttoptr i64 %12 to i8*
  %14 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %15 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  br label %16

16:                                               ; preds = %8, %1
  %17 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %18 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %38

24:                                               ; preds = %16
  %25 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %26 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %25, i32 0, i32 1
  %27 = bitcast {}** %26 to i32 (%struct.debug_buffer*)**
  %28 = load i32 (%struct.debug_buffer*)*, i32 (%struct.debug_buffer*)** %27, align 8
  %29 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %30 = call i32 %28(%struct.debug_buffer* %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %36 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %24
  br label %38

38:                                               ; preds = %37, %21
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @vmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
