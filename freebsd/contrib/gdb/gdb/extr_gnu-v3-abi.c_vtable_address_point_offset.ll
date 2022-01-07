; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-v3-abi.c_vtable_address_point_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-v3-abi.c_vtable_address_point_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@vtable_type_gdbarch_data = common dso_local global i32 0, align 4
@vtable_field_virtual_functions = common dso_local global i32 0, align 4
@TARGET_CHAR_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vtable_address_point_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtable_address_point_offset() #0 {
  %1 = alloca %struct.type*, align 8
  %2 = load i32, i32* @current_gdbarch, align 4
  %3 = load i32, i32* @vtable_type_gdbarch_data, align 4
  %4 = call %struct.type* @gdbarch_data(i32 %2, i32 %3)
  store %struct.type* %4, %struct.type** %1, align 8
  %5 = load %struct.type*, %struct.type** %1, align 8
  %6 = load i32, i32* @vtable_field_virtual_functions, align 4
  %7 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %5, i32 %6)
  %8 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %9 = sdiv i32 %7, %8
  ret i32 %9
}

declare dso_local %struct.type* @gdbarch_data(i32, i32) #1

declare dso_local i32 @TYPE_FIELD_BITPOS(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
