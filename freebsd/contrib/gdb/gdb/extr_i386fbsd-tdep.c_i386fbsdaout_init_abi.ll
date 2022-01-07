; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386fbsd-tdep.c_i386fbsdaout_init_abi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386fbsd-tdep.c_i386fbsdaout_init_abi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.gdbarch_info = type { i32 }
%struct.gdbarch_tdep = type { i32, i32, i8*, i8*, i32, i32, i32, i8*, i8* }

@i386fbsd_r_reg_offset = common dso_local global i8* null, align 8
@reg_struct_return = common dso_local global i32 0, align 4
@i386fbsd_sigtramp_start_addr = common dso_local global i32 0, align 4
@i386fbsd_sigtramp_end_addr = common dso_local global i32 0, align 4
@i386fbsd_sc_reg_offset = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.gdbarch*)* @i386fbsdaout_init_abi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i386fbsdaout_init_abi(i32 %0, %struct.gdbarch* %1) #0 {
  %3 = alloca %struct.gdbarch_info, align 4
  %4 = alloca %struct.gdbarch*, align 8
  %5 = alloca %struct.gdbarch_tdep*, align 8
  %6 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %3, i32 0, i32 0
  store i32 %0, i32* %6, align 4
  store %struct.gdbarch* %1, %struct.gdbarch** %4, align 8
  %7 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %8 = call %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch* %7)
  store %struct.gdbarch_tdep* %8, %struct.gdbarch_tdep** %5, align 8
  %9 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %10 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %3, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @i386bsd_init_abi(i32 %11, %struct.gdbarch* %9)
  %13 = load i8*, i8** @i386fbsd_r_reg_offset, align 8
  %14 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %15 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %14, i32 0, i32 8
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** @i386fbsd_r_reg_offset, align 8
  %17 = call i8* @ARRAY_SIZE(i8* %16)
  %18 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %19 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %18, i32 0, i32 7
  store i8* %17, i8** %19, align 8
  %20 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %21 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %20, i32 0, i32 0
  store i32 72, i32* %21, align 8
  %22 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %23 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %22, i32 0, i32 1
  store i32 176, i32* %23, align 4
  %24 = load i32, i32* @reg_struct_return, align 4
  %25 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %26 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @i386fbsd_sigtramp_start_addr, align 4
  %28 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %29 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @i386fbsd_sigtramp_end_addr, align 4
  %31 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %32 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load i8*, i8** @i386fbsd_sc_reg_offset, align 8
  %34 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %35 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** @i386fbsd_sc_reg_offset, align 8
  %37 = call i8* @ARRAY_SIZE(i8* %36)
  %38 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %39 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  ret void
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch*) #1

declare dso_local i32 @i386bsd_init_abi(i32, %struct.gdbarch*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
