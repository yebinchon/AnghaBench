; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_sigtramp_prev_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_sigtramp_prev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.arm_prologue_cache = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame_info*, i8**, i32, i32*, i32*, i32*, i32*, i8*)* @arm_sigtramp_prev_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_sigtramp_prev_register(%struct.frame_info* %0, i8** %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6, i8* %7) #0 {
  %9 = alloca %struct.frame_info*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.arm_prologue_cache*, align 8
  store %struct.frame_info* %0, %struct.frame_info** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i8* %7, i8** %16, align 8
  %18 = load i8**, i8*** %10, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %8
  %22 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %23 = call i8* @arm_make_sigtramp_cache(%struct.frame_info* %22)
  %24 = load i8**, i8*** %10, align 8
  store i8* %23, i8** %24, align 8
  br label %25

25:                                               ; preds = %21, %8
  %26 = load i8**, i8*** %10, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = bitcast i8* %27 to %struct.arm_prologue_cache*
  store %struct.arm_prologue_cache* %28, %struct.arm_prologue_cache** %17, align 8
  %29 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %30 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %17, align 8
  %31 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32*, i32** %12, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = load i32*, i32** %14, align 8
  %37 = load i32*, i32** %15, align 8
  %38 = load i8*, i8** %16, align 8
  %39 = call i32 @trad_frame_prev_register(%struct.frame_info* %29, i32 %32, i32 %33, i32* %34, i32* %35, i32* %36, i32* %37, i8* %38)
  ret void
}

declare dso_local i8* @arm_make_sigtramp_cache(%struct.frame_info*) #1

declare dso_local i32 @trad_frame_prev_register(%struct.frame_info*, i32, i32, i32*, i32*, i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
