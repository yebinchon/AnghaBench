; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_arc-opc.c_arc_opcode_lookup_asm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_arc-opc.c_arc_opcode_lookup_asm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arc_opcode = type { i32 }

@opcode_map = common dso_local global %struct.arc_opcode** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.arc_opcode* @arc_opcode_lookup_asm(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct.arc_opcode**, %struct.arc_opcode*** @opcode_map, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @ARC_HASH_OPCODE(i8* %4)
  %6 = getelementptr inbounds %struct.arc_opcode*, %struct.arc_opcode** %3, i64 %5
  %7 = load %struct.arc_opcode*, %struct.arc_opcode** %6, align 8
  ret %struct.arc_opcode* %7
}

declare dso_local i64 @ARC_HASH_OPCODE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
