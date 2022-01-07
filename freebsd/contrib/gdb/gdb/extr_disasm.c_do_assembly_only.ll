; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_disasm.c_do_assembly_only.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_disasm.c_do_assembly_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_out = type { i32 }
%struct.disassemble_info = type { i32 }
%struct.ui_stream = type { i32 }
%struct.cleanup = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"asm_insns\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ui_out*, %struct.disassemble_info*, i32, i32, i32, %struct.ui_stream*)* @do_assembly_only to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_assembly_only(%struct.ui_out* %0, %struct.disassemble_info* %1, i32 %2, i32 %3, i32 %4, %struct.ui_stream* %5) #0 {
  %7 = alloca %struct.ui_out*, align 8
  %8 = alloca %struct.disassemble_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ui_stream*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.cleanup*, align 8
  store %struct.ui_out* %0, %struct.ui_out** %7, align 8
  store %struct.disassemble_info* %1, %struct.disassemble_info** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.ui_stream* %5, %struct.ui_stream** %12, align 8
  store i32 0, i32* %13, align 4
  %15 = load %struct.ui_out*, %struct.ui_out** %7, align 8
  %16 = call %struct.cleanup* @make_cleanup_ui_out_list_begin_end(%struct.ui_out* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.cleanup* %16, %struct.cleanup** %14, align 8
  %17 = load %struct.ui_out*, %struct.ui_out** %7, align 8
  %18 = load %struct.disassemble_info*, %struct.disassemble_info** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.ui_stream*, %struct.ui_stream** %12, align 8
  %23 = call i32 @dump_insns(%struct.ui_out* %17, %struct.disassemble_info* %18, i32 %19, i32 %20, i32 %21, %struct.ui_stream* %22)
  store i32 %23, i32* %13, align 4
  %24 = load %struct.cleanup*, %struct.cleanup** %14, align 8
  %25 = call i32 @do_cleanups(%struct.cleanup* %24)
  ret void
}

declare dso_local %struct.cleanup* @make_cleanup_ui_out_list_begin_end(%struct.ui_out*, i8*) #1

declare dso_local i32 @dump_insns(%struct.ui_out*, %struct.disassemble_info*, i32, i32, i32, %struct.ui_stream*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
