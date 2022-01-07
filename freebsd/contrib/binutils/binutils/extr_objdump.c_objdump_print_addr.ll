; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objdump.c_objdump_print_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objdump.c_objdump_print_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disassemble_info = type { i64, i32, i32 (i32, i8*)* }
%struct.objdump_disasm_info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32** }

@FALSE = common dso_local global i32 0, align 4
@sorted_symcount = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.disassemble_info*, i32)* @objdump_print_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @objdump_print_addr(i32 %0, %struct.disassemble_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.disassemble_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.objdump_disasm_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.disassemble_info* %1, %struct.disassemble_info** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %8, align 8
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* @sorted_symcount, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %25

13:                                               ; preds = %3
  %14 = load %struct.disassemble_info*, %struct.disassemble_info** %5, align 8
  %15 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %14, i32 0, i32 2
  %16 = load i32 (i32, i8*)*, i32 (i32, i8*)** %15, align 8
  %17 = load %struct.disassemble_info*, %struct.disassemble_info** %5, align 8
  %18 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 %16(i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.disassemble_info*, %struct.disassemble_info** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @objdump_print_value(i32 %21, %struct.disassemble_info* %22, i32 %23)
  br label %88

25:                                               ; preds = %3
  %26 = load %struct.disassemble_info*, %struct.disassemble_info** %5, align 8
  %27 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.objdump_disasm_info*
  store %struct.objdump_disasm_info* %29, %struct.objdump_disasm_info** %7, align 8
  %30 = load %struct.objdump_disasm_info*, %struct.objdump_disasm_info** %7, align 8
  %31 = getelementptr inbounds %struct.objdump_disasm_info, %struct.objdump_disasm_info* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = icmp ne %struct.TYPE_2__* %32, null
  br i1 %33, label %34, label %69

34:                                               ; preds = %25
  %35 = load %struct.objdump_disasm_info*, %struct.objdump_disasm_info** %7, align 8
  %36 = getelementptr inbounds %struct.objdump_disasm_info, %struct.objdump_disasm_info* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32**, i32*** %38, align 8
  %40 = icmp ne i32** %39, null
  br i1 %40, label %41, label %69

41:                                               ; preds = %34
  %42 = load %struct.objdump_disasm_info*, %struct.objdump_disasm_info** %7, align 8
  %43 = getelementptr inbounds %struct.objdump_disasm_info, %struct.objdump_disasm_info* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %69

49:                                               ; preds = %41
  %50 = load %struct.objdump_disasm_info*, %struct.objdump_disasm_info** %7, align 8
  %51 = getelementptr inbounds %struct.objdump_disasm_info, %struct.objdump_disasm_info* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %8, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = call i64 @bfd_asymbol_value(i32* %56)
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %4, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @bfd_get_section(i32* %62)
  %64 = call i64 @bfd_is_und_section(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %49
  %67 = load i32, i32* @TRUE, align 4
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %66, %49
  br label %69

69:                                               ; preds = %68, %41, %34, %25
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.disassemble_info*, %struct.disassemble_info** %5, align 8
  %75 = call i32* @find_symbol_for_address(i32 %73, %struct.disassemble_info* %74, i32* null)
  store i32* %75, i32** %8, align 8
  br label %76

76:                                               ; preds = %72, %69
  %77 = load %struct.objdump_disasm_info*, %struct.objdump_disasm_info** %7, align 8
  %78 = getelementptr inbounds %struct.objdump_disasm_info, %struct.objdump_disasm_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.objdump_disasm_info*, %struct.objdump_disasm_info** %7, align 8
  %81 = getelementptr inbounds %struct.objdump_disasm_info, %struct.objdump_disasm_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.disassemble_info*, %struct.disassemble_info** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @objdump_print_addr_with_sym(i32 %79, i32 %82, i32* %83, i32 %84, %struct.disassemble_info* %85, i32 %86)
  br label %88

88:                                               ; preds = %76, %13
  ret void
}

declare dso_local i32 @objdump_print_value(i32, %struct.disassemble_info*, i32) #1

declare dso_local i64 @bfd_asymbol_value(i32*) #1

declare dso_local i64 @bfd_is_und_section(i32) #1

declare dso_local i32 @bfd_get_section(i32*) #1

declare dso_local i32* @find_symbol_for_address(i32, %struct.disassemble_info*, i32*) #1

declare dso_local i32 @objdump_print_addr_with_sym(i32, i32, i32*, i32, %struct.disassemble_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
