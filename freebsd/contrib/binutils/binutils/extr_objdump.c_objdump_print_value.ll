; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objdump.c_objdump_print_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objdump.c_objdump_print_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disassemble_info = type { i32, i32 (i32, i8*, i8*)*, i64 }
%struct.objdump_disasm_info = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.disassemble_info*, i32)* @objdump_print_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @objdump_print_value(i32 %0, %struct.disassemble_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.disassemble_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [30 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca %struct.objdump_disasm_info*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.disassemble_info* %1, %struct.disassemble_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.disassemble_info*, %struct.disassemble_info** %5, align 8
  %11 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.objdump_disasm_info*
  store %struct.objdump_disasm_info* %13, %struct.objdump_disasm_info** %9, align 8
  %14 = load %struct.objdump_disasm_info*, %struct.objdump_disasm_info** %9, align 8
  %15 = getelementptr inbounds %struct.objdump_disasm_info, %struct.objdump_disasm_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @bfd_sprintf_vma(i32 %16, i8* %17, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  store i8* %23, i8** %8, align 8
  br label %44

24:                                               ; preds = %3
  %25 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  store i8* %25, i8** %8, align 8
  br label %26

26:                                               ; preds = %32, %24
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 48
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %8, align 8
  br label %26

35:                                               ; preds = %26
  %36 = load i8*, i8** %8, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 -1
  store i8* %42, i8** %8, align 8
  br label %43

43:                                               ; preds = %40, %35
  br label %44

44:                                               ; preds = %43, %22
  %45 = load %struct.disassemble_info*, %struct.disassemble_info** %5, align 8
  %46 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %45, i32 0, i32 1
  %47 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** %46, align 8
  %48 = load %struct.disassemble_info*, %struct.disassemble_info** %5, align 8
  %49 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 %47(i32 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %51)
  ret void
}

declare dso_local i32 @bfd_sprintf_vma(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
