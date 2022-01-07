; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_assemble_tokens_to_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_assemble_tokens_to_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alpha_insn = type { i32 }
%struct.alpha_opcode = type { i32 }

@alpha_opcode_hash = common dso_local global i32 0, align 4
@BFD_RELOC_UNUSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"inappropriate arguments for opcode `%s'\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"opcode `%s' not supported for target %s\00", align 1
@alpha_target_name = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"unknown opcode `%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32, %struct.alpha_insn*)* @assemble_tokens_to_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assemble_tokens_to_insn(i8* %0, i32* %1, i32 %2, %struct.alpha_insn* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.alpha_insn*, align 8
  %9 = alloca %struct.alpha_opcode*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.alpha_insn* %3, %struct.alpha_insn** %8, align 8
  %11 = load i32, i32* @alpha_opcode_hash, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @hash_find(i32 %11, i8* %12)
  %14 = inttoptr i64 %13 to %struct.alpha_opcode*
  store %struct.alpha_opcode* %14, %struct.alpha_opcode** %9, align 8
  %15 = load %struct.alpha_opcode*, %struct.alpha_opcode** %9, align 8
  %16 = icmp ne %struct.alpha_opcode* %15, null
  br i1 %16, label %17, label %44

17:                                               ; preds = %4
  %18 = load %struct.alpha_opcode*, %struct.alpha_opcode** %9, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call %struct.alpha_opcode* @find_opcode_match(%struct.alpha_opcode* %18, i32* %19, i32* %7, i32* %10)
  store %struct.alpha_opcode* %20, %struct.alpha_opcode** %9, align 8
  %21 = load %struct.alpha_opcode*, %struct.alpha_opcode** %9, align 8
  %22 = icmp ne %struct.alpha_opcode* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.alpha_opcode*, %struct.alpha_opcode** %9, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.alpha_insn*, %struct.alpha_insn** %8, align 8
  %28 = load i32, i32* @BFD_RELOC_UNUSED, align 4
  %29 = call i32 @assemble_insn(%struct.alpha_opcode* %24, i32* %25, i32 %26, %struct.alpha_insn* %27, i32 %28)
  br label %48

30:                                               ; preds = %17
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 (i32, i8*, ...) @as_bad(i32 %34, i8* %35)
  br label %42

37:                                               ; preds = %30
  %38 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* @alpha_target_name, align 4
  %41 = call i32 (i32, i8*, ...) @as_bad(i32 %38, i8* %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %33
  br label %43

43:                                               ; preds = %42
  br label %48

44:                                               ; preds = %4
  %45 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 (i32, i8*, ...) @as_bad(i32 %45, i8* %46)
  br label %48

48:                                               ; preds = %23, %44, %43
  ret void
}

declare dso_local i64 @hash_find(i32, i8*) #1

declare dso_local %struct.alpha_opcode* @find_opcode_match(%struct.alpha_opcode*, i32*, i32*, i32*) #1

declare dso_local i32 @assemble_insn(%struct.alpha_opcode*, i32*, i32, %struct.alpha_insn*, i32) #1

declare dso_local i32 @as_bad(i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
