; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arc.c_md_begin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arc.c_md_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@byte_order = common dso_local global i64 0, align 8
@BIG_ENDIAN = common dso_local global i64 0, align 8
@target_big_endian = common dso_local global i32 0, align 4
@stdoutput = common dso_local global i32 0, align 4
@bfd_arch_arc = common dso_local global i32 0, align 4
@arc_mach_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"could not set architecture and machine\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_begin() #0 {
  %1 = load i64, i64* @byte_order, align 8
  %2 = load i64, i64* @BIG_ENDIAN, align 8
  %3 = icmp eq i64 %1, %2
  %4 = zext i1 %3 to i32
  store i32 %4, i32* @target_big_endian, align 4
  %5 = load i32, i32* @stdoutput, align 4
  %6 = load i32, i32* @bfd_arch_arc, align 4
  %7 = load i32, i32* @arc_mach_type, align 4
  %8 = call i32 @bfd_set_arch_mach(i32 %5, i32 %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %0
  %11 = call i32 @as_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i32, i32* @arc_mach_type, align 4
  %14 = load i32, i32* @target_big_endian, align 4
  %15 = call i32 @arc_get_opcode_mach(i32 %13, i32 %14)
  %16 = call i32 @arc_opcode_init_tables(i32 %15)
  ret void
}

declare dso_local i32 @bfd_set_arch_mach(i32, i32, i32) #1

declare dso_local i32 @as_warn(i8*) #1

declare dso_local i32 @arc_opcode_init_tables(i32) #1

declare dso_local i32 @arc_get_opcode_mach(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
