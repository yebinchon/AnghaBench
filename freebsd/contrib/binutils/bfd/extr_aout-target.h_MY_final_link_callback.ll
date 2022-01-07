; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_aout-target.h_MY_final_link_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_aout-target.h_MY_final_link_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.internal_exec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*)* @MY_final_link_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MY_final_link_callback(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.internal_exec*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call %struct.internal_exec* @exec_hdr(i32* %10)
  store %struct.internal_exec* %11, %struct.internal_exec** %9, align 8
  %12 = load %struct.internal_exec*, %struct.internal_exec** %9, align 8
  %13 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @N_TRELOFF(i32 %14)
  %16 = load i32*, i32** %6, align 8
  store i32 %15, i32* %16, align 4
  %17 = load %struct.internal_exec*, %struct.internal_exec** %9, align 8
  %18 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @N_DRELOFF(i32 %19)
  %21 = load i32*, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  %22 = load %struct.internal_exec*, %struct.internal_exec** %9, align 8
  %23 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @N_SYMOFF(i32 %24)
  %26 = load i32*, i32** %8, align 8
  store i32 %25, i32* %26, align 4
  ret void
}

declare dso_local %struct.internal_exec* @exec_hdr(i32*) #1

declare dso_local i32 @N_TRELOFF(i32) #1

declare dso_local i32 @N_DRELOFF(i32) #1

declare dso_local i32 @N_SYMOFF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
