; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_double_register_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_double_register_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TARGET_BYTE_ORDER = common dso_local global i64 0, align 8
@BFD_ENDIAN_BIG = common dso_local global i64 0, align 8
@builtin_type_ieee_double_big = common dso_local global %struct.type* null, align 8
@builtin_type_ieee_double_little = common dso_local global %struct.type* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* ()* @mips_double_register_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @mips_double_register_type() #0 {
  %1 = alloca %struct.type*, align 8
  %2 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %3 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load %struct.type*, %struct.type** @builtin_type_ieee_double_big, align 8
  store %struct.type* %6, %struct.type** %1, align 8
  br label %9

7:                                                ; preds = %0
  %8 = load %struct.type*, %struct.type** @builtin_type_ieee_double_little, align 8
  store %struct.type* %8, %struct.type** %1, align 8
  br label %9

9:                                                ; preds = %7, %5
  %10 = load %struct.type*, %struct.type** %1, align 8
  ret %struct.type* %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
