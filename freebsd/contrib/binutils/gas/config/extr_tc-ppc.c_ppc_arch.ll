; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ppc.c_ppc_arch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ppc.c_ppc_arch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_CPU = common dso_local global i8* null, align 8
@ppc_cpu = common dso_local global i32 0, align 4
@PPC_OPCODE_PPC = common dso_local global i32 0, align 4
@bfd_arch_powerpc = common dso_local global i32 0, align 4
@PPC_OPCODE_POWER = common dso_local global i32 0, align 4
@bfd_arch_rs6000 = common dso_local global i32 0, align 4
@PPC_OPCODE_COMMON = common dso_local global i32 0, align 4
@PPC_OPCODE_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"rs6000\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"powerpc\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Neither Power nor PowerPC opcodes were selected.\00", align 1
@bfd_arch_unknown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ppc_arch() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = load i8*, i8** @TARGET_CPU, align 8
  store i8* %3, i8** %2, align 8
  %4 = call i32 (...) @ppc_set_cpu()
  %5 = load i32, i32* @ppc_cpu, align 4
  %6 = load i32, i32* @PPC_OPCODE_PPC, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32, i32* @bfd_arch_powerpc, align 4
  store i32 %10, i32* %1, align 4
  br label %45

11:                                               ; preds = %0
  %12 = load i32, i32* @ppc_cpu, align 4
  %13 = load i32, i32* @PPC_OPCODE_POWER, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @bfd_arch_rs6000, align 4
  store i32 %17, i32* %1, align 4
  br label %45

18:                                               ; preds = %11
  %19 = load i32, i32* @ppc_cpu, align 4
  %20 = load i32, i32* @PPC_OPCODE_COMMON, align 4
  %21 = load i32, i32* @PPC_OPCODE_ANY, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %18
  %26 = load i8*, i8** %2, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @bfd_arch_rs6000, align 4
  store i32 %30, i32* %1, align 4
  br label %45

31:                                               ; preds = %25
  %32 = load i8*, i8** %2, align 8
  %33 = call i64 @strncmp(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @bfd_arch_powerpc, align 4
  store i32 %36, i32* %1, align 4
  br label %45

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37
  br label %39

39:                                               ; preds = %38, %18
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40
  %42 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i32 @as_fatal(i32 %42)
  %44 = load i32, i32* @bfd_arch_unknown, align 4
  store i32 %44, i32* %1, align 4
  br label %45

45:                                               ; preds = %41, %35, %29, %16, %9
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

declare dso_local i32 @ppc_set_cpu(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @as_fatal(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
