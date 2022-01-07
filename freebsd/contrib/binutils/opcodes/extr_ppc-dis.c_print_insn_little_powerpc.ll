; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ppc-dis.c_print_insn_little_powerpc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ppc-dis.c_print_insn_little_powerpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disassemble_info = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @print_insn_little_powerpc(i32 %0, %struct.disassemble_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.disassemble_info*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.disassemble_info* %1, %struct.disassemble_info** %4, align 8
  %6 = load %struct.disassemble_info*, %struct.disassemble_info** %4, align 8
  %7 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = ptrtoint i8* %9 to i64
  %11 = sub i64 %10, 0
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.disassemble_info*, %struct.disassemble_info** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @print_insn_powerpc(i32 %13, %struct.disassemble_info* %14, i32 0, i32 %15)
  ret i32 %16
}

declare dso_local i32 @print_insn_powerpc(i32, %struct.disassemble_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
