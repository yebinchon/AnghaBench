; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_dis-init.c_init_disassemble_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_dis-init.c_init_disassemble_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disassemble_info = type { i32, i8*, i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i32 }

@bfd_target_unknown_flavour = common dso_local global i32 0, align 4
@bfd_arch_unknown = common dso_local global i32 0, align 4
@BFD_ENDIAN_UNKNOWN = common dso_local global i8* null, align 8
@buffer_read_memory = common dso_local global i32 0, align 4
@perror_memory = common dso_local global i32 0, align 4
@generic_print_address = common dso_local global i32 0, align 4
@generic_symbol_at_address = common dso_local global i32 0, align 4
@generic_symbol_is_valid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_disassemble_info(%struct.disassemble_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.disassemble_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.disassemble_info* %0, %struct.disassemble_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.disassemble_info*, %struct.disassemble_info** %4, align 8
  %8 = call i32 @memset(%struct.disassemble_info* %7, i32 0, i32 72)
  %9 = load i32, i32* @bfd_target_unknown_flavour, align 4
  %10 = load %struct.disassemble_info*, %struct.disassemble_info** %4, align 8
  %11 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %10, i32 0, i32 11
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @bfd_arch_unknown, align 4
  %13 = load %struct.disassemble_info*, %struct.disassemble_info** %4, align 8
  %14 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %13, i32 0, i32 10
  store i32 %12, i32* %14, align 8
  %15 = load i8*, i8** @BFD_ENDIAN_UNKNOWN, align 8
  %16 = load %struct.disassemble_info*, %struct.disassemble_info** %4, align 8
  %17 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %16, i32 0, i32 9
  store i8* %15, i8** %17, align 8
  %18 = load %struct.disassemble_info*, %struct.disassemble_info** %4, align 8
  %19 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.disassemble_info*, %struct.disassemble_info** %4, align 8
  %22 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %21, i32 0, i32 8
  store i32 %20, i32* %22, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.disassemble_info*, %struct.disassemble_info** %4, align 8
  %25 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %24, i32 0, i32 7
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* @buffer_read_memory, align 4
  %27 = load %struct.disassemble_info*, %struct.disassemble_info** %4, align 8
  %28 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @perror_memory, align 4
  %30 = load %struct.disassemble_info*, %struct.disassemble_info** %4, align 8
  %31 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @generic_print_address, align 4
  %33 = load %struct.disassemble_info*, %struct.disassemble_info** %4, align 8
  %34 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @generic_symbol_at_address, align 4
  %36 = load %struct.disassemble_info*, %struct.disassemble_info** %4, align 8
  %37 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @generic_symbol_is_valid, align 4
  %39 = load %struct.disassemble_info*, %struct.disassemble_info** %4, align 8
  %40 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i8*, i8** @BFD_ENDIAN_UNKNOWN, align 8
  %42 = load %struct.disassemble_info*, %struct.disassemble_info** %4, align 8
  %43 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  ret void
}

declare dso_local i32 @memset(%struct.disassemble_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
