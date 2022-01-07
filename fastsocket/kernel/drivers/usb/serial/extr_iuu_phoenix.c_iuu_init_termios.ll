; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_iuu_phoenix.c_iuu_init_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_iuu_phoenix.c_iuu_init_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64, i64, i64 }
%struct.tty_struct = type { %struct.TYPE_2__* }

@tty_std_termios = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CLOCAL = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@B9600 = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @iuu_init_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iuu_init_termios(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %3 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %4 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = bitcast %struct.TYPE_2__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.TYPE_2__* @tty_std_termios to i8*), i64 40, i1 false)
  %7 = load i32, i32* @CLOCAL, align 4
  %8 = load i32, i32* @CREAD, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @CS8, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @B9600, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @TIOCM_CTS, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CSTOPB, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @PARENB, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %21 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 8
  %24 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %25 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 9600, i32* %27, align 4
  %28 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %29 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i32 9600, i32* %31, align 8
  %32 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %33 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 5
  store i64 0, i64* %35, align 8
  %36 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %37 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 4
  store i64 0, i64* %39, align 8
  %40 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %41 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
