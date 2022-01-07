; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mips-dis.c_set_default_mips_dis_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mips-dis.c_set_default_mips_dis_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.disassemble_info = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mips_arch_choice = type { i32, i64, i32*, i32, i32, i32 }

@ISA_MIPS3 = common dso_local global i32 0, align 4
@mips_isa = common dso_local global i32 0, align 4
@CPU_R3000 = common dso_local global i32 0, align 4
@mips_processor = common dso_local global i32 0, align 4
@mips_gpr_names_oldabi = common dso_local global i32 0, align 4
@mips_gpr_names = common dso_local global i32 0, align 4
@mips_fpr_names_numeric = common dso_local global i32 0, align 4
@mips_fpr_names = common dso_local global i32 0, align 4
@mips_cp0_names_numeric = common dso_local global i32 0, align 4
@mips_cp0_names = common dso_local global i32 0, align 4
@mips_cp0sel_names = common dso_local global i32* null, align 8
@mips_cp0sel_names_len = common dso_local global i64 0, align 8
@mips_hwr_names_numeric = common dso_local global i32 0, align 4
@mips_hwr_names = common dso_local global i32 0, align 4
@no_aliases = common dso_local global i64 0, align 8
@bfd_target_elf_flavour = common dso_local global i64 0, align 8
@mips_gpr_names_newabi = common dso_local global i32 0, align 4
@mips_target_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@target_processor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.disassemble_info*)* @set_default_mips_dis_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_default_mips_dis_options(%struct.disassemble_info* %0) #0 {
  %2 = alloca %struct.disassemble_info*, align 8
  %3 = alloca %struct.mips_arch_choice*, align 8
  %4 = alloca i32*, align 8
  store %struct.disassemble_info* %0, %struct.disassemble_info** %2, align 8
  %5 = load i32, i32* @ISA_MIPS3, align 4
  store i32 %5, i32* @mips_isa, align 4
  %6 = load i32, i32* @CPU_R3000, align 4
  store i32 %6, i32* @mips_processor, align 4
  %7 = load i32, i32* @mips_gpr_names_oldabi, align 4
  store i32 %7, i32* @mips_gpr_names, align 4
  %8 = load i32, i32* @mips_fpr_names_numeric, align 4
  store i32 %8, i32* @mips_fpr_names, align 4
  %9 = load i32, i32* @mips_cp0_names_numeric, align 4
  store i32 %9, i32* @mips_cp0_names, align 4
  store i32* null, i32** @mips_cp0sel_names, align 8
  store i64 0, i64* @mips_cp0sel_names_len, align 8
  %10 = load i32, i32* @mips_hwr_names_numeric, align 4
  store i32 %10, i32* @mips_hwr_names, align 4
  store i64 0, i64* @no_aliases, align 8
  %11 = load %struct.disassemble_info*, %struct.disassemble_info** %2, align 8
  %12 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @bfd_target_elf_flavour, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %1
  %17 = load %struct.disassemble_info*, %struct.disassemble_info** %2, align 8
  %18 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load %struct.disassemble_info*, %struct.disassemble_info** %2, align 8
  %23 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32* @elf_elfheader(i32 %26)
  store i32* %27, i32** %4, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @is_newabi(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* @mips_gpr_names_newabi, align 4
  store i32 %32, i32* @mips_gpr_names, align 4
  br label %33

33:                                               ; preds = %31, %21
  br label %34

34:                                               ; preds = %33, %16, %1
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mips_target_info, i32 0, i32 1), align 4
  store i32 %35, i32* @target_processor, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mips_target_info, i32 0, i32 0), align 4
  store i32 %36, i32* @mips_isa, align 4
  ret void
}

declare dso_local i32* @elf_elfheader(i32) #1

declare dso_local i64 @is_newabi(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
