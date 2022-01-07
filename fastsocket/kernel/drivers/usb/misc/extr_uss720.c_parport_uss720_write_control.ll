; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_uss720.c_parport_uss720_write_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_uss720.c_parport_uss720_write_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { %struct.parport_uss720_private* }
%struct.parport_uss720_private = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*, i8)* @parport_uss720_write_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parport_uss720_write_control(%struct.parport* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.parport*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.parport_uss720_private*, align 8
  store %struct.parport* %0, %struct.parport** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.parport*, %struct.parport** %3, align 8
  %7 = getelementptr inbounds %struct.parport, %struct.parport* %6, i32 0, i32 0
  %8 = load %struct.parport_uss720_private*, %struct.parport_uss720_private** %7, align 8
  store %struct.parport_uss720_private* %8, %struct.parport_uss720_private** %5, align 8
  %9 = load i8, i8* %4, align 1
  %10 = zext i8 %9 to i32
  %11 = and i32 %10, 15
  %12 = load %struct.parport_uss720_private*, %struct.parport_uss720_private** %5, align 8
  %13 = getelementptr inbounds %struct.parport_uss720_private, %struct.parport_uss720_private* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 240
  %18 = or i32 %11, %17
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %4, align 1
  %20 = load %struct.parport*, %struct.parport** %3, align 8
  %21 = load i8, i8* %4, align 1
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i64 @set_1284_register(%struct.parport* %20, i32 2, i8 zeroext %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %33

26:                                               ; preds = %2
  %27 = load i8, i8* %4, align 1
  %28 = zext i8 %27 to i32
  %29 = load %struct.parport_uss720_private*, %struct.parport_uss720_private** %5, align 8
  %30 = getelementptr inbounds %struct.parport_uss720_private, %struct.parport_uss720_private* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 %28, i32* %32, align 4
  br label %33

33:                                               ; preds = %26, %25
  ret void
}

declare dso_local i64 @set_1284_register(%struct.parport*, i32, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
