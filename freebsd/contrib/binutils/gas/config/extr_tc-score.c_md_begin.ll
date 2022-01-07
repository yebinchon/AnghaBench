; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_md_begin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_md_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@score_ops_hsh = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"virtual memory exhausted\00", align 1
@dependency_insn_hsh = common dso_local global i32* null, align 8
@REG_TYPE_FIRST = common dso_local global i64 0, align 8
@REG_TYPE_MAX = common dso_local global i64 0, align 8
@all_reg_maps = common dso_local global i64 0, align 8
@stdoutput = common dso_local global i32 0, align 4
@TARGET_ARCH = common dso_local global i32 0, align 4
@now_seg = common dso_local global i32 0, align 4
@now_subseg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c".pdr\00", align 1
@pdr_seg = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@SEC_RELOC = common dso_local global i32 0, align 4
@SEC_DEBUGGING = common dso_local global i32 0, align 4
@USE_GLOBAL_POINTER_OPT = common dso_local global i64 0, align 8
@g_switch_value = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_begin() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i8* (...) @hash_new()
  %5 = bitcast i8* %4 to i32*
  store i32* %5, i32** @score_ops_hsh, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @as_fatal(i32 %8)
  br label %10

10:                                               ; preds = %7, %0
  %11 = call i32 (...) @build_score_ops_hsh()
  %12 = call i8* (...) @hash_new()
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** @dependency_insn_hsh, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @as_fatal(i32 %16)
  br label %18

18:                                               ; preds = %15, %10
  %19 = call i32 (...) @build_dependency_insn_hsh()
  %20 = load i64, i64* @REG_TYPE_FIRST, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %1, align 4
  br label %22

22:                                               ; preds = %33, %18
  %23 = load i32, i32* %1, align 4
  %24 = load i64, i64* @REG_TYPE_MAX, align 8
  %25 = trunc i64 %24 to i32
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load i64, i64* @all_reg_maps, align 8
  %29 = load i32, i32* %1, align 4
  %30 = zext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = call i32 @build_reg_hsh(i64 %31)
  br label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %1, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %22

36:                                               ; preds = %22
  %37 = call i32 (...) @init_dependency_vector()
  %38 = load i32, i32* @stdoutput, align 4
  %39 = load i32, i32* @TARGET_ARCH, align 4
  %40 = call i32 @bfd_set_arch_mach(i32 %38, i32 %39, i32 0)
  %41 = load i32, i32* @now_seg, align 4
  store i32 %41, i32* %2, align 4
  %42 = load i32, i32* @now_subseg, align 4
  store i32 %42, i32* %3, align 4
  %43 = call i32 @subseg_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %43, i32* @pdr_seg, align 4
  %44 = load i32, i32* @stdoutput, align 4
  %45 = load i32, i32* @pdr_seg, align 4
  %46 = load i32, i32* @SEC_READONLY, align 4
  %47 = load i32, i32* @SEC_RELOC, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @SEC_DEBUGGING, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @bfd_set_section_flags(i32 %44, i32 %45, i32 %50)
  %52 = load i32, i32* @stdoutput, align 4
  %53 = load i32, i32* @pdr_seg, align 4
  %54 = call i32 @bfd_set_section_alignment(i32 %52, i32 %53, i32 2)
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @subseg_set(i32 %55, i32 %56)
  %58 = load i64, i64* @USE_GLOBAL_POINTER_OPT, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %36
  %61 = load i32, i32* @stdoutput, align 4
  %62 = load i32, i32* @g_switch_value, align 4
  %63 = call i32 @bfd_set_gp_size(i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %36
  ret void
}

declare dso_local i8* @hash_new(...) #1

declare dso_local i32 @as_fatal(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @build_score_ops_hsh(...) #1

declare dso_local i32 @build_dependency_insn_hsh(...) #1

declare dso_local i32 @build_reg_hsh(i64) #1

declare dso_local i32 @init_dependency_vector(...) #1

declare dso_local i32 @bfd_set_arch_mach(i32, i32, i32) #1

declare dso_local i32 @subseg_new(i8*, i32) #1

declare dso_local i32 @bfd_set_section_flags(i32, i32, i32) #1

declare dso_local i32 @bfd_set_section_alignment(i32, i32, i32) #1

declare dso_local i32 @subseg_set(i32, i32) #1

declare dso_local i32 @bfd_set_gp_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
