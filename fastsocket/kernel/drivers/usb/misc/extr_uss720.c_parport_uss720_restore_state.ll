; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_uss720.c_parport_uss720_restore_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_uss720.c_parport_uss720_restore_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { %struct.parport_uss720_private* }
%struct.parport_uss720_private = type { i32* }
%struct.parport_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*, %struct.parport_state*)* @parport_uss720_restore_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parport_uss720_restore_state(%struct.parport* %0, %struct.parport_state* %1) #0 {
  %3 = alloca %struct.parport*, align 8
  %4 = alloca %struct.parport_state*, align 8
  %5 = alloca %struct.parport_uss720_private*, align 8
  store %struct.parport* %0, %struct.parport** %3, align 8
  store %struct.parport_state* %1, %struct.parport_state** %4, align 8
  %6 = load %struct.parport*, %struct.parport** %3, align 8
  %7 = getelementptr inbounds %struct.parport, %struct.parport* %6, i32 0, i32 0
  %8 = load %struct.parport_uss720_private*, %struct.parport_uss720_private** %7, align 8
  store %struct.parport_uss720_private* %8, %struct.parport_uss720_private** %5, align 8
  %9 = load %struct.parport*, %struct.parport** %3, align 8
  %10 = load %struct.parport_state*, %struct.parport_state** %4, align 8
  %11 = getelementptr inbounds %struct.parport_state, %struct.parport_state* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call i32 @set_1284_register(%struct.parport* %9, i32 2, i32 %14, i32 %15)
  %17 = load %struct.parport*, %struct.parport** %3, align 8
  %18 = load %struct.parport_state*, %struct.parport_state** %4, align 8
  %19 = getelementptr inbounds %struct.parport_state, %struct.parport_state* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call i32 @set_1284_register(%struct.parport* %17, i32 6, i32 %22, i32 %23)
  %25 = load %struct.parport*, %struct.parport** %3, align 8
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call i32 @get_1284_register(%struct.parport* %25, i32 2, i32* null, i32 %26)
  %28 = load %struct.parport_state*, %struct.parport_state** %4, align 8
  %29 = getelementptr inbounds %struct.parport_state, %struct.parport_state* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.parport_uss720_private*, %struct.parport_uss720_private** %5, align 8
  %34 = getelementptr inbounds %struct.parport_uss720_private, %struct.parport_uss720_private* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 %32, i32* %36, align 4
  %37 = load %struct.parport_state*, %struct.parport_state** %4, align 8
  %38 = getelementptr inbounds %struct.parport_state, %struct.parport_state* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.parport_uss720_private*, %struct.parport_uss720_private** %5, align 8
  %43 = getelementptr inbounds %struct.parport_uss720_private, %struct.parport_uss720_private* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  store i32 %41, i32* %45, align 4
  ret void
}

declare dso_local i32 @set_1284_register(%struct.parport*, i32, i32, i32) #1

declare dso_local i32 @get_1284_register(%struct.parport*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
