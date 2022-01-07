; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_write_pc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_write_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARM_PC_REGNUM = common dso_local global i32 0, align 4
@arm_apcs_32 = common dso_local global i64 0, align 8
@ARM_PS_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @arm_write_pc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_write_pc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @ARM_PC_REGNUM, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @write_register_pid(i32 %6, i32 %7, i32 %8)
  %10 = load i64, i64* @arm_apcs_32, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %2
  %13 = load i32, i32* @ARM_PS_REGNUM, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @read_register_pid(i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @arm_pc_is_thumb(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load i32, i32* @ARM_PS_REGNUM, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, 32
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @write_register_pid(i32 %20, i32 %22, i32 %23)
  br label %31

25:                                               ; preds = %12
  %26 = load i32, i32* @ARM_PS_REGNUM, align 4
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, -33
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @write_register_pid(i32 %26, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %25, %19
  br label %32

32:                                               ; preds = %31, %2
  ret void
}

declare dso_local i32 @write_register_pid(i32, i32, i32) #1

declare dso_local i32 @read_register_pid(i32, i32) #1

declare dso_local i64 @arm_pc_is_thumb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
