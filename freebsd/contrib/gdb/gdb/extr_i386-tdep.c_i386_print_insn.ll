; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_print_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_print_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disassemble_info = type { i8*, i32 }
%struct.TYPE_2__ = type { i32 }

@disassembly_flavor = common dso_local global i64 0, align 8
@att_flavor = common dso_local global i64 0, align 8
@intel_flavor = common dso_local global i64 0, align 8
@current_gdbarch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.disassemble_info*)* @i386_print_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i386_print_insn(i32 %0, %struct.disassemble_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.disassemble_info*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.disassemble_info* %1, %struct.disassemble_info** %4, align 8
  %5 = load i64, i64* @disassembly_flavor, align 8
  %6 = load i64, i64* @att_flavor, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* @disassembly_flavor, align 8
  %10 = load i64, i64* @intel_flavor, align 8
  %11 = icmp eq i64 %9, %10
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i1 [ true, %2 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @gdb_assert(i32 %14)
  %16 = load i64, i64* @disassembly_flavor, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = load %struct.disassemble_info*, %struct.disassemble_info** %4, align 8
  %19 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* @current_gdbarch, align 4
  %21 = call %struct.TYPE_2__* @gdbarch_bfd_arch_info(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.disassemble_info*, %struct.disassemble_info** %4, align 8
  %25 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.disassemble_info*, %struct.disassemble_info** %4, align 8
  %28 = call i32 @print_insn_i386(i32 %26, %struct.disassemble_info* %27)
  ret i32 %28
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local %struct.TYPE_2__* @gdbarch_bfd_arch_info(i32) #1

declare dso_local i32 @print_insn_i386(i32, %struct.disassemble_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
