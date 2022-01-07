; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_find_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_find_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.function_info = type { i64, i64 }
%struct.bfd_link_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32*, i64)* }
%struct._spu_elf_section_data = type { %struct.spu_elf_stack_info* }
%struct.spu_elf_stack_info = type { i32, %struct.function_info* }

@.str = private unnamed_addr constant [37 x i8] c"%A:0x%v not found in function table\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.function_info* (i32*, i64, %struct.bfd_link_info*)* @find_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.function_info* @find_function(i32* %0, i64 %1, %struct.bfd_link_info* %2) #0 {
  %4 = alloca %struct.function_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bfd_link_info*, align 8
  %8 = alloca %struct._spu_elf_section_data*, align 8
  %9 = alloca %struct.spu_elf_stack_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.bfd_link_info* %2, %struct.bfd_link_info** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call %struct._spu_elf_section_data* @spu_elf_section_data(i32* %13)
  store %struct._spu_elf_section_data* %14, %struct._spu_elf_section_data** %8, align 8
  %15 = load %struct._spu_elf_section_data*, %struct._spu_elf_section_data** %8, align 8
  %16 = getelementptr inbounds %struct._spu_elf_section_data, %struct._spu_elf_section_data* %15, i32 0, i32 0
  %17 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %16, align 8
  store %struct.spu_elf_stack_info* %17, %struct.spu_elf_stack_info** %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %9, align 8
  %19 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %11, align 4
  br label %21

21:                                               ; preds = %64, %3
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %65

25:                                               ; preds = %21
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %26, %27
  %29 = sdiv i32 %28, 2
  store i32 %29, i32* %12, align 4
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %9, align 8
  %32 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %31, i32 0, i32 1
  %33 = load %struct.function_info*, %struct.function_info** %32, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.function_info, %struct.function_info* %33, i64 %35
  %37 = getelementptr inbounds %struct.function_info, %struct.function_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %30, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %25
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %11, align 4
  br label %64

42:                                               ; preds = %25
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %9, align 8
  %45 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %44, i32 0, i32 1
  %46 = load %struct.function_info*, %struct.function_info** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.function_info, %struct.function_info* %46, i64 %48
  %50 = getelementptr inbounds %struct.function_info, %struct.function_info* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp sge i64 %43, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %63

56:                                               ; preds = %42
  %57 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %9, align 8
  %58 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %57, i32 0, i32 1
  %59 = load %struct.function_info*, %struct.function_info** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.function_info, %struct.function_info* %59, i64 %61
  store %struct.function_info* %62, %struct.function_info** %4, align 8
  br label %75

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %40
  br label %21

65:                                               ; preds = %21
  %66 = load %struct.bfd_link_info*, %struct.bfd_link_info** %7, align 8
  %67 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32 (i32, i32*, i64)*, i32 (i32, i32*, i64)** %69, align 8
  %71 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %72 = load i32*, i32** %5, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i32 %70(i32 %71, i32* %72, i64 %73)
  store %struct.function_info* null, %struct.function_info** %4, align 8
  br label %75

75:                                               ; preds = %65, %56
  %76 = load %struct.function_info*, %struct.function_info** %4, align 8
  ret %struct.function_info* %76
}

declare dso_local %struct._spu_elf_section_data* @spu_elf_section_data(i32*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
