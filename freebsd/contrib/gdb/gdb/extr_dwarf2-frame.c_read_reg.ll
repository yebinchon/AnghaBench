; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2-frame.c_read_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2-frame.c_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.gdbarch = type { i32 }

@builtin_type_void_data_ptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_reg(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.frame_info*, align 8
  %6 = alloca %struct.gdbarch*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.frame_info*
  store %struct.frame_info* %10, %struct.frame_info** %5, align 8
  %11 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %12 = call %struct.gdbarch* @get_frame_arch(%struct.frame_info* %11)
  store %struct.gdbarch* %12, %struct.gdbarch** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @DWARF2_REG_TO_REGNUM(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @register_size(%struct.gdbarch* %15, i32 %16)
  %18 = call i64 @alloca(i32 %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %8, align 8
  %20 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @frame_unwind_register(%struct.frame_info* %20, i32 %21, i8* %22)
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* @builtin_type_void_data_ptr, align 4
  %26 = call i32 @extract_typed_address(i8* %24, i32 %25)
  ret i32 %26
}

declare dso_local %struct.gdbarch* @get_frame_arch(%struct.frame_info*) #1

declare dso_local i32 @DWARF2_REG_TO_REGNUM(i32) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @register_size(%struct.gdbarch*, i32) #1

declare dso_local i32 @frame_unwind_register(%struct.frame_info*, i32, i8*) #1

declare dso_local i32 @extract_typed_address(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
