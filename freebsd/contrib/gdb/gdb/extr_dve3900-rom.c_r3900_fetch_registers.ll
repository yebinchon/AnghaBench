; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dve3900-rom.c_r3900_fetch_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dve3900-rom.c_r3900_fetch_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@PS_REGNUM = common dso_local global i32 0, align 4
@status_fields = common dso_local global i32 0, align 4
@cause_fields = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @r3900_fetch_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r3900_fetch_registers(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @current_gdbarch, align 4
  %5 = call %struct.TYPE_2__* @mips_regnum(i32 %4)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %3, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (...) @fetch_bad_vaddr()
  br label %38

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @PS_REGNUM, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* @PS_REGNUM, align 4
  %17 = load i32, i32* @status_fields, align 4
  %18 = call i32 @fetch_bitmapped_register(i32 %16, i32 %17)
  br label %37

19:                                               ; preds = %11
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @current_gdbarch, align 4
  %22 = call %struct.TYPE_2__* @mips_regnum(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %20, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load i32, i32* @current_gdbarch, align 4
  %28 = call %struct.TYPE_2__* @mips_regnum(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @cause_fields, align 4
  %32 = call i32 @fetch_bitmapped_register(i32 %30, i32 %31)
  br label %36

33:                                               ; preds = %19
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @orig_monitor_fetch_registers(i32 %34)
  br label %36

36:                                               ; preds = %33, %26
  br label %37

37:                                               ; preds = %36, %15
  br label %38

38:                                               ; preds = %37, %9
  ret void
}

declare dso_local %struct.TYPE_2__* @mips_regnum(i32) #1

declare dso_local i32 @fetch_bad_vaddr(...) #1

declare dso_local i32 @fetch_bitmapped_register(i32, i32) #1

declare dso_local i32 @orig_monitor_fetch_registers(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
