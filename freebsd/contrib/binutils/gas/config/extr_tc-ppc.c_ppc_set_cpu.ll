; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ppc.c_ppc_set_cpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ppc.c_ppc_set_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_OS = common dso_local global i8* null, align 8
@TARGET_CPU = common dso_local global i8* null, align 8
@ppc_cpu = common dso_local global i32 0, align 4
@PPC_OPCODE_ANY = common dso_local global i32 0, align 4
@ppc_obj64 = common dso_local global i64 0, align 8
@PPC_OPCODE_PPC = common dso_local global i32 0, align 4
@PPC_OPCODE_CLASSIC = common dso_local global i32 0, align 4
@PPC_OPCODE_64 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"aix\00", align 1
@PPC_OPCODE_COMMON = common dso_local global i32 0, align 4
@PPC_OPCODE_32 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"aix3\00", align 1
@PPC_OPCODE_POWER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"rs6000\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"powerpc\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Unknown default cpu = %s, os = %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ppc_set_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc_set_cpu() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = load i8*, i8** @TARGET_OS, align 8
  store i8* %3, i8** %1, align 8
  %4 = load i8*, i8** @TARGET_CPU, align 8
  store i8* %4, i8** %2, align 8
  %5 = load i32, i32* @ppc_cpu, align 4
  %6 = load i32, i32* @PPC_OPCODE_ANY, align 4
  %7 = xor i32 %6, -1
  %8 = and i32 %5, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %85

10:                                               ; preds = %0
  %11 = load i64, i64* @ppc_obj64, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load i32, i32* @PPC_OPCODE_PPC, align 4
  %15 = load i32, i32* @PPC_OPCODE_CLASSIC, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @PPC_OPCODE_64, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @ppc_cpu, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* @ppc_cpu, align 4
  br label %84

21:                                               ; preds = %10
  %22 = load i8*, i8** %1, align 8
  %23 = call i64 @strncmp(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load i8*, i8** %1, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 3
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp sge i32 %29, 52
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = load i8*, i8** %1, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 3
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sle i32 %35, 57
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i32, i32* @PPC_OPCODE_COMMON, align 4
  %39 = load i32, i32* @PPC_OPCODE_32, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @ppc_cpu, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* @ppc_cpu, align 4
  br label %83

43:                                               ; preds = %31, %25, %21
  %44 = load i8*, i8** %1, align 8
  %45 = call i64 @strncmp(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i32, i32* @PPC_OPCODE_POWER, align 4
  %49 = load i32, i32* @PPC_OPCODE_32, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @ppc_cpu, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* @ppc_cpu, align 4
  br label %82

53:                                               ; preds = %43
  %54 = load i8*, i8** %2, align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i32, i32* @PPC_OPCODE_POWER, align 4
  %59 = load i32, i32* @PPC_OPCODE_32, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @ppc_cpu, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* @ppc_cpu, align 4
  br label %81

63:                                               ; preds = %53
  %64 = load i8*, i8** %2, align 8
  %65 = call i64 @strncmp(i8* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load i32, i32* @PPC_OPCODE_PPC, align 4
  %69 = load i32, i32* @PPC_OPCODE_CLASSIC, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @PPC_OPCODE_32, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @ppc_cpu, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* @ppc_cpu, align 4
  br label %80

75:                                               ; preds = %63
  %76 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %77 = load i8*, i8** %2, align 8
  %78 = load i8*, i8** %1, align 8
  %79 = call i32 @as_fatal(i32 %76, i8* %77, i8* %78)
  br label %80

80:                                               ; preds = %75, %67
  br label %81

81:                                               ; preds = %80, %57
  br label %82

82:                                               ; preds = %81, %47
  br label %83

83:                                               ; preds = %82, %37
  br label %84

84:                                               ; preds = %83, %13
  br label %85

85:                                               ; preds = %84, %0
  ret void
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @as_fatal(i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
