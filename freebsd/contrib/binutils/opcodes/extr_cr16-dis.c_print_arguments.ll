; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_cr16-dis.c_print_arguments.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_cr16-dis.c_print_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.disassemble_info = type { i32, i32 (i32, i8*)* }

@.str = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"popret\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"RA\00", align 1
@processing_argument_number = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"bal\00", align 1
@instruction = common dso_local global %struct.TYPE_5__* null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"(ra),\00", align 1
@INST_HAS_REG_LIST = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, %struct.disassemble_info*)* @print_arguments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_arguments(%struct.TYPE_4__* %0, i32 %1, %struct.disassemble_info* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.disassemble_info*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.disassemble_info* %2, %struct.disassemble_info** %6, align 8
  %8 = call i64 @IS_INSN_MNEMONIC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = call i64 @IS_INSN_MNEMONIC(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = call i64 @IS_INSN_MNEMONIC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %13, %10, %3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %23 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %22, i32 0, i32 1
  %24 = load i32 (i32, i8*)*, i32 (i32, i8*)** %23, align 8
  %25 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %26 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 %24(i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %102

29:                                               ; preds = %16, %13
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %99, %29
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %102

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* @processing_argument_number, align 4
  %38 = call i64 @IS_INSN_MNEMONIC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @instruction, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %50 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %49, i32 0, i32 1
  %51 = load i32 (i32, i8*)*, i32 (i32, i8*)** %50, align 8
  %52 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %53 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 %51(i32 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %99

56:                                               ; preds = %43, %40, %36
  %57 = load i64, i64* @INST_HAS_REG_LIST, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %64 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %63, i32 0, i32 1
  %65 = load i32 (i32, i8*)*, i32 (i32, i8*)** %64, align 8
  %66 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %67 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 %65(i32 %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %80

70:                                               ; preds = %59, %56
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %79 = call i32 @print_arg(i32* %76, i32 %77, %struct.disassemble_info* %78)
  br label %80

80:                                               ; preds = %70, %62
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %84, 1
  %86 = icmp ne i32 %81, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %80
  %88 = call i64 @IS_INSN_MNEMONIC(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %87
  %91 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %92 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %91, i32 0, i32 1
  %93 = load i32 (i32, i8*)*, i32 (i32, i8*)** %92, align 8
  %94 = load %struct.disassemble_info*, %struct.disassemble_info** %6, align 8
  %95 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 %93(i32 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %98

98:                                               ; preds = %90, %87, %80
  br label %99

99:                                               ; preds = %98, %48
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %30

102:                                              ; preds = %21, %30
  ret void
}

declare dso_local i64 @IS_INSN_MNEMONIC(i8*) #1

declare dso_local i32 @print_arg(i32*, i32, %struct.disassemble_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
