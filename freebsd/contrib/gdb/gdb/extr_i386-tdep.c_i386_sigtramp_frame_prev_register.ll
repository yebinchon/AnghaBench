; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_sigtramp_frame_prev_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_sigtramp_frame_prev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame_info*, i8**, i32, i32*, i32*, i32*, i32*, i8*)* @i386_sigtramp_frame_prev_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i386_sigtramp_frame_prev_register(%struct.frame_info* %0, i8** %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6, i8* %7) #0 {
  %9 = alloca %struct.frame_info*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  store %struct.frame_info* %0, %struct.frame_info** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i8* %7, i8** %16, align 8
  %17 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %18 = load i8**, i8*** %10, align 8
  %19 = call i32 @i386_sigtramp_frame_cache(%struct.frame_info* %17, i8** %18)
  %20 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %21 = load i8**, i8*** %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i32*, i32** %12, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = load i32*, i32** %14, align 8
  %26 = load i32*, i32** %15, align 8
  %27 = load i8*, i8** %16, align 8
  %28 = call i32 @i386_frame_prev_register(%struct.frame_info* %20, i8** %21, i32 %22, i32* %23, i32* %24, i32* %25, i32* %26, i8* %27)
  ret void
}

declare dso_local i32 @i386_sigtramp_frame_cache(%struct.frame_info*, i8**) #1

declare dso_local i32 @i386_frame_prev_register(%struct.frame_info*, i8**, i32, i32*, i32*, i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
