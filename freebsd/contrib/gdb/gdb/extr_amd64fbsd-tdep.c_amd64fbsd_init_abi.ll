; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_amd64fbsd-tdep.c_amd64fbsd_init_abi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_amd64fbsd-tdep.c_amd64fbsd_init_abi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.gdbarch_info = type { i32 }
%struct.gdbarch_tdep = type { i32, i8*, i8*, i32, i32, i32, i8*, i8* }

@amd64fbsd_r_reg_offset = common dso_local global i8* null, align 8
@amd64fbsd_sigtramp_start_addr = common dso_local global i32 0, align 4
@amd64fbsd_sigtramp_end_addr = common dso_local global i32 0, align 4
@amd64fbsd_sigcontext_addr = common dso_local global i32 0, align 4
@amd64fbsd_sc_reg_offset = common dso_local global i8* null, align 8
@svr4_lp64_fetch_link_map_offsets = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amd64fbsd_init_abi(i32 %0, %struct.gdbarch* %1) #0 {
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
  %13 = load i8*, i8** @amd64fbsd_r_reg_offset, align 8
  %14 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %15 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %14, i32 0, i32 7
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** @amd64fbsd_r_reg_offset, align 8
  %17 = call i8* @ARRAY_SIZE(i8* %16)
  %18 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %19 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %18, i32 0, i32 6
  store i8* %17, i8** %19, align 8
  %20 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %21 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %20, i32 0, i32 0
  store i32 176, i32* %21, align 8
  %22 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %23 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %3, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @amd64_init_abi(i32 %24, %struct.gdbarch* %22)
  %26 = load i32, i32* @amd64fbsd_sigtramp_start_addr, align 4
  %27 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %28 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @amd64fbsd_sigtramp_end_addr, align 4
  %30 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %31 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @amd64fbsd_sigcontext_addr, align 4
  %33 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %34 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** @amd64fbsd_sc_reg_offset, align 8
  %36 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %37 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @amd64fbsd_sc_reg_offset, align 8
  %39 = call i8* @ARRAY_SIZE(i8* %38)
  %40 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %41 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %43 = load i32, i32* @svr4_lp64_fetch_link_map_offsets, align 4
  %44 = call i32 @set_solib_svr4_fetch_link_map_offsets(%struct.gdbarch* %42, i32 %43)
  ret void
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch*) #1

declare dso_local i32 @i386bsd_init_abi(i32, %struct.gdbarch*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @amd64_init_abi(i32, %struct.gdbarch*) #1

declare dso_local i32 @set_solib_svr4_fetch_link_map_offsets(%struct.gdbarch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
