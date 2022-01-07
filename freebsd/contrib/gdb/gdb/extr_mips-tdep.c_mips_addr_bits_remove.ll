; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_addr_bits_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_addr_bits_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch_tdep = type { i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mips_addr_bits_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_addr_bits_remove(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.gdbarch_tdep*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @current_gdbarch, align 4
  %6 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %5)
  store %struct.gdbarch_tdep* %6, %struct.gdbarch_tdep** %4, align 8
  %7 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %4, align 8
  %8 = call i64 @mips_mask_address_p(%struct.gdbarch_tdep* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = ashr i32 %11, 32
  %13 = sext i32 %12 to i64
  %14 = icmp eq i64 %13, 4294967295
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = and i64 %17, 4294967295
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %3, align 4
  store i32 %19, i32* %2, align 4
  br label %22

20:                                               ; preds = %10, %1
  %21 = load i32, i32* %3, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %20, %15
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(i32) #1

declare dso_local i64 @mips_mask_address_p(%struct.gdbarch_tdep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
