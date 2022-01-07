; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mipsnbsd-tdep.c_mipsnbsd_init_abi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mipsnbsd-tdep.c_mipsnbsd_init_abi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.gdbarch_info = type { i32 }

@mipsnbsd_pc_in_sigtramp = common dso_local global i32 0, align 4
@mipsnbsd_get_longjmp_target = common dso_local global i32 0, align 4
@mipsnbsd_cannot_fetch_register = common dso_local global i32 0, align 4
@mipsnbsd_cannot_store_register = common dso_local global i32 0, align 4
@mips_software_single_step = common dso_local global i32 0, align 4
@mipsnbsd_ilp32_solib_svr4_fetch_link_map_offsets = common dso_local global i32 0, align 4
@mipsnbsd_lp64_solib_svr4_fetch_link_map_offsets = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.gdbarch*)* @mipsnbsd_init_abi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mipsnbsd_init_abi(i32 %0, %struct.gdbarch* %1) #0 {
  %3 = alloca %struct.gdbarch_info, align 4
  %4 = alloca %struct.gdbarch*, align 8
  %5 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %3, i32 0, i32 0
  store i32 %0, i32* %5, align 4
  store %struct.gdbarch* %1, %struct.gdbarch** %4, align 8
  %6 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %7 = load i32, i32* @mipsnbsd_pc_in_sigtramp, align 4
  %8 = call i32 @set_gdbarch_pc_in_sigtramp(%struct.gdbarch* %6, i32 %7)
  %9 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %10 = load i32, i32* @mipsnbsd_get_longjmp_target, align 4
  %11 = call i32 @set_gdbarch_get_longjmp_target(%struct.gdbarch* %9, i32 %10)
  %12 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %13 = load i32, i32* @mipsnbsd_cannot_fetch_register, align 4
  %14 = call i32 @set_gdbarch_cannot_fetch_register(%struct.gdbarch* %12, i32 %13)
  %15 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %16 = load i32, i32* @mipsnbsd_cannot_store_register, align 4
  %17 = call i32 @set_gdbarch_cannot_store_register(%struct.gdbarch* %15, i32 %16)
  %18 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %19 = load i32, i32* @mips_software_single_step, align 4
  %20 = call i32 @set_gdbarch_software_single_step(%struct.gdbarch* %18, i32 %19)
  %21 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %22 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %23 = call i32 @gdbarch_ptr_bit(%struct.gdbarch* %22)
  %24 = icmp eq i32 %23, 32
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @mipsnbsd_ilp32_solib_svr4_fetch_link_map_offsets, align 4
  br label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @mipsnbsd_lp64_solib_svr4_fetch_link_map_offsets, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = call i32 @set_solib_svr4_fetch_link_map_offsets(%struct.gdbarch* %21, i32 %30)
  ret void
}

declare dso_local i32 @set_gdbarch_pc_in_sigtramp(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_get_longjmp_target(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_cannot_fetch_register(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_cannot_store_register(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_software_single_step(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_solib_svr4_fetch_link_map_offsets(%struct.gdbarch*, i32) #1

declare dso_local i32 @gdbarch_ptr_bit(%struct.gdbarch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
