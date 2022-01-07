; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dve3900-rom.c_r3900_store_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dve3900-rom.c_r3900_store_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@PS_REGNUM = common dso_local global i32 0, align 4
@status_fields = common dso_local global i32 0, align 4
@current_gdbarch = common dso_local global i32 0, align 4
@cause_fields = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @r3900_store_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r3900_store_registers(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @PS_REGNUM, align 4
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* @PS_REGNUM, align 4
  %8 = load i32, i32* @status_fields, align 4
  %9 = call i32 @store_bitmapped_register(i32 %7, i32 %8)
  br label %28

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @current_gdbarch, align 4
  %13 = call %struct.TYPE_2__* @mips_regnum(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %11, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %10
  %18 = load i32, i32* @current_gdbarch, align 4
  %19 = call %struct.TYPE_2__* @mips_regnum(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @cause_fields, align 4
  %23 = call i32 @store_bitmapped_register(i32 %21, i32 %22)
  br label %27

24:                                               ; preds = %10
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @orig_monitor_store_registers(i32 %25)
  br label %27

27:                                               ; preds = %24, %17
  br label %28

28:                                               ; preds = %27, %6
  ret void
}

declare dso_local i32 @store_bitmapped_register(i32, i32) #1

declare dso_local %struct.TYPE_2__* @mips_regnum(i32) #1

declare dso_local i32 @orig_monitor_store_registers(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
