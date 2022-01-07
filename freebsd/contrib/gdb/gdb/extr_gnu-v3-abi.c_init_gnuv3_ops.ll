; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-v3-abi.c_init_gnuv3_ops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-v3-abi.c_init_gnuv3_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }

@build_gdb_vtable_type = common dso_local global i32 0, align 4
@vtable_type_gdbarch_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"gnu-v3\00", align 1
@gnu_v3_abi_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"GNU G++ Version 3 ABI\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"G++ Version 3 ABI\00", align 1
@is_gnu_v3_mangled_dtor = common dso_local global i32 0, align 4
@is_gnu_v3_mangled_ctor = common dso_local global i32 0, align 4
@gnuv3_is_vtable_name = common dso_local global i32 0, align 4
@gnuv3_is_operator_name = common dso_local global i32 0, align 4
@gnuv3_rtti_type = common dso_local global i32 0, align 4
@gnuv3_virtual_fn_field = common dso_local global i32 0, align 4
@gnuv3_baseclass_offset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_gnuv3_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_gnuv3_ops() #0 {
  %1 = load i32, i32* @build_gdb_vtable_type, align 4
  %2 = call i32 @register_gdbarch_data(i32 %1)
  store i32 %2, i32* @vtable_type_gdbarch_data, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gnu_v3_abi_ops, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gnu_v3_abi_ops, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gnu_v3_abi_ops, i32 0, i32 2), align 8
  %3 = load i32, i32* @is_gnu_v3_mangled_dtor, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gnu_v3_abi_ops, i32 0, i32 9), align 8
  %4 = load i32, i32* @is_gnu_v3_mangled_ctor, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gnu_v3_abi_ops, i32 0, i32 8), align 4
  %5 = load i32, i32* @gnuv3_is_vtable_name, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gnu_v3_abi_ops, i32 0, i32 7), align 8
  %6 = load i32, i32* @gnuv3_is_operator_name, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gnu_v3_abi_ops, i32 0, i32 6), align 4
  %7 = load i32, i32* @gnuv3_rtti_type, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gnu_v3_abi_ops, i32 0, i32 5), align 8
  %8 = load i32, i32* @gnuv3_virtual_fn_field, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gnu_v3_abi_ops, i32 0, i32 4), align 4
  %9 = load i32, i32* @gnuv3_baseclass_offset, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gnu_v3_abi_ops, i32 0, i32 3), align 8
  ret void
}

declare dso_local i32 @register_gdbarch_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
