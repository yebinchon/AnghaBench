; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_mips_parse_cpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_mips_parse_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_cpu_info = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"from-abi\00", align 1
@mips_abi = common dso_local global i32 0, align 4
@ISA_MIPS1 = common dso_local global i32 0, align 4
@ISA_MIPS3 = common dso_local global i32 0, align 4
@file_mips_gp32 = common dso_local global i64 0, align 8
@MIPS_DEFAULT_64BIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@mips_cpu_info_table = common dso_local global %struct.mips_cpu_info* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Bad value (%s) for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mips_cpu_info* (i8*, i8*)* @mips_parse_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mips_cpu_info* @mips_parse_cpu(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.mips_cpu_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mips_cpu_info*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @strcasecmp(i8* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %47

10:                                               ; preds = %2
  %11 = load i32, i32* @mips_abi, align 4
  %12 = call i64 @ABI_NEEDS_32BIT_REGS(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, i32* @ISA_MIPS1, align 4
  %16 = call %struct.mips_cpu_info* @mips_cpu_info_from_isa(i32 %15)
  store %struct.mips_cpu_info* %16, %struct.mips_cpu_info** %3, align 8
  br label %76

17:                                               ; preds = %10
  %18 = load i32, i32* @mips_abi, align 4
  %19 = call i64 @ABI_NEEDS_64BIT_REGS(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @ISA_MIPS3, align 4
  %23 = call %struct.mips_cpu_info* @mips_cpu_info_from_isa(i32 %22)
  store %struct.mips_cpu_info* %23, %struct.mips_cpu_info** %3, align 8
  br label %76

24:                                               ; preds = %17
  %25 = load i64, i64* @file_mips_gp32, align 8
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i64, i64* @file_mips_gp32, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @ISA_MIPS1, align 4
  br label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @ISA_MIPS3, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = call %struct.mips_cpu_info* @mips_cpu_info_from_isa(i32 %35)
  store %struct.mips_cpu_info* %36, %struct.mips_cpu_info** %3, align 8
  br label %76

37:                                               ; preds = %24
  %38 = load i64, i64* @MIPS_DEFAULT_64BIT, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @ISA_MIPS3, align 4
  br label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @ISA_MIPS1, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = call %struct.mips_cpu_info* @mips_cpu_info_from_isa(i32 %45)
  store %struct.mips_cpu_info* %46, %struct.mips_cpu_info** %3, align 8
  br label %76

47:                                               ; preds = %2
  %48 = load i8*, i8** %5, align 8
  %49 = call i64 @strcasecmp(i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store %struct.mips_cpu_info* null, %struct.mips_cpu_info** %3, align 8
  br label %76

52:                                               ; preds = %47
  %53 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** @mips_cpu_info_table, align 8
  store %struct.mips_cpu_info* %53, %struct.mips_cpu_info** %6, align 8
  br label %54

54:                                               ; preds = %69, %52
  %55 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** %6, align 8
  %56 = getelementptr inbounds %struct.mips_cpu_info, %struct.mips_cpu_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** %6, align 8
  %61 = getelementptr inbounds %struct.mips_cpu_info, %struct.mips_cpu_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = call i64 @mips_matching_cpu_name_p(i64 %62, i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** %6, align 8
  store %struct.mips_cpu_info* %67, %struct.mips_cpu_info** %3, align 8
  br label %76

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** %6, align 8
  %71 = getelementptr inbounds %struct.mips_cpu_info, %struct.mips_cpu_info* %70, i32 1
  store %struct.mips_cpu_info* %71, %struct.mips_cpu_info** %6, align 8
  br label %54

72:                                               ; preds = %54
  %73 = load i8*, i8** %5, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 @as_bad(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %73, i8* %74)
  store %struct.mips_cpu_info* null, %struct.mips_cpu_info** %3, align 8
  br label %76

76:                                               ; preds = %72, %66, %51, %44, %34, %21, %14
  %77 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** %3, align 8
  ret %struct.mips_cpu_info* %77
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @ABI_NEEDS_32BIT_REGS(i32) #1

declare dso_local %struct.mips_cpu_info* @mips_cpu_info_from_isa(i32) #1

declare dso_local i64 @ABI_NEEDS_64BIT_REGS(i32) #1

declare dso_local i64 @mips_matching_cpu_name_p(i64, i8*) #1

declare dso_local i32 @as_bad(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
