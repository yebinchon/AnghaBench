; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c_fsocket_filp_close_spawn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c_fsocket_filp_close_spawn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.file*, %struct.file* }

@DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Close sub file 0x%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Close new file 0x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @fsocket_filp_close_spawn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsocket_filp_close_spawn(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.file*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.file* @fget_light(i32 %7, i32* %3)
  store %struct.file* %8, %struct.file** %4, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 1
  %11 = load %struct.file*, %struct.file** %10, align 8
  store %struct.file* %11, %struct.file** %5, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.file*, %struct.file** %13, align 8
  store %struct.file* %14, %struct.file** %6, align 8
  %15 = load i32, i32* %2, align 4
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = call i32 @fd_reinstall(i32 %15, %struct.file* %16)
  %18 = load i32, i32* @DEBUG, align 4
  %19 = load %struct.file*, %struct.file** %6, align 8
  %20 = call i32 @DPRINTK(i32 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.file* %19)
  %21 = load %struct.file*, %struct.file** %6, align 8
  %22 = call i32 @__fsocket_filp_close(%struct.file* %21)
  %23 = load i32, i32* @DEBUG, align 4
  %24 = load %struct.file*, %struct.file** %4, align 8
  %25 = call i32 @DPRINTK(i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.file* %24)
  %26 = load %struct.file*, %struct.file** %4, align 8
  %27 = call i32 @__fsocket_filp_close(%struct.file* %26)
  %28 = load %struct.file*, %struct.file** %4, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @fput_light(%struct.file* %28, i32 %29)
  ret void
}

declare dso_local %struct.file* @fget_light(i32, i32*) #1

declare dso_local i32 @fd_reinstall(i32, %struct.file*) #1

declare dso_local i32 @DPRINTK(i32, i8*, %struct.file*) #1

declare dso_local i32 @__fsocket_filp_close(%struct.file*) #1

declare dso_local i32 @fput_light(%struct.file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
