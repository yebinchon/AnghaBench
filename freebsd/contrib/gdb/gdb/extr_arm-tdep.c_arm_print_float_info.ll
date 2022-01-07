; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_print_float_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_print_float_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.ui_file = type { i32 }
%struct.frame_info = type { i32 }

@ARM_FPS_REGNUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s FPU type %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Hardware\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Software\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"mask: \00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"flags: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gdbarch*, %struct.ui_file*, %struct.frame_info*, i8*)* @arm_print_float_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_print_float_info(%struct.gdbarch* %0, %struct.ui_file* %1, %struct.frame_info* %2, i8* %3) #0 {
  %5 = alloca %struct.gdbarch*, align 8
  %6 = alloca %struct.ui_file*, align 8
  %7 = alloca %struct.frame_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %5, align 8
  store %struct.ui_file* %1, %struct.ui_file** %6, align 8
  store %struct.frame_info* %2, %struct.frame_info** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* @ARM_FPS_REGNUM, align 4
  %12 = call i64 @read_register(i32 %11)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = lshr i64 %13, 24
  %15 = and i64 %14, 127
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %10, align 4
  %17 = load i64, i64* %9, align 8
  %18 = and i64 %17, -2147483648
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %21, i32 %22)
  %24 = load i32, i32* @stdout, align 4
  %25 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %24)
  %26 = load i64, i64* %9, align 8
  %27 = lshr i64 %26, 16
  %28 = call i32 @print_fpu_flags(i64 %27)
  %29 = load i32, i32* @stdout, align 4
  %30 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %29)
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @print_fpu_flags(i64 %31)
  ret void
}

declare dso_local i64 @read_register(i32) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @print_fpu_flags(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
