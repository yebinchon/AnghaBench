; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_show_fp_model.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_show_fp_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }
%struct.gdbarch_tdep = type { i64 }
%struct.TYPE_2__ = type { i64 }

@current_gdbarch = common dso_local global i32 0, align 4
@arm_fp_model = common dso_local global i64 0, align 8
@ARM_FLOAT_AUTO = common dso_local global i64 0, align 8
@bfd_arch_arm = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"  - the default for the current ABI is \22%s\22.\0A\00", align 1
@fp_model_strings = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.cmd_list_element*)* @show_fp_model to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_fp_model(i8* %0, i32 %1, %struct.cmd_list_element* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmd_list_element*, align 8
  %7 = alloca %struct.gdbarch_tdep*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cmd_list_element* %2, %struct.cmd_list_element** %6, align 8
  %8 = load i32, i32* @current_gdbarch, align 4
  %9 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %8)
  store %struct.gdbarch_tdep* %9, %struct.gdbarch_tdep** %7, align 8
  %10 = load i64, i64* @arm_fp_model, align 8
  %11 = load i64, i64* @ARM_FLOAT_AUTO, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = load i32, i32* @current_gdbarch, align 4
  %15 = call %struct.TYPE_2__* @gdbarch_bfd_arch_info(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @bfd_arch_arm, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load i32*, i32** @fp_model_strings, align 8
  %22 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %23 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @printf_filtered(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %20, %13, %3
  ret void
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(i32) #1

declare dso_local %struct.TYPE_2__* @gdbarch_bfd_arch_info(i32) #1

declare dso_local i32 @printf_filtered(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
