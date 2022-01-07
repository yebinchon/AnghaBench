; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_parse_cpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_parse_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_cpu_info = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"the cpu name must be lower case\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"from-abi\00", align 1
@ABI_NEEDS_32BIT_REGS = common dso_local global i64 0, align 8
@ABI_NEEDS_64BIT_REGS = common dso_local global i64 0, align 8
@TARGET_64BIT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@mips_cpu_info_table = common dso_local global %struct.mips_cpu_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mips_cpu_info* (i8*)* @mips_parse_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mips_cpu_info* @mips_parse_cpu(i8* %0) #0 {
  %2 = alloca %struct.mips_cpu_info*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mips_cpu_info*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %5, align 8
  br label %7

7:                                                ; preds = %20, %1
  %8 = load i8*, i8** %5, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %7
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = call i64 @ISUPPER(i8 signext %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 @warning(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %23

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %5, align 8
  br label %7

23:                                               ; preds = %17, %7
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @strcasecmp(i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %23
  %28 = load i64, i64* @ABI_NEEDS_32BIT_REGS, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %42

31:                                               ; preds = %27
  %32 = load i64, i64* @ABI_NEEDS_64BIT_REGS, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %40

35:                                               ; preds = %31
  %36 = load i64, i64* @TARGET_64BIT, align 8
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 3, i32 1
  br label %40

40:                                               ; preds = %35, %34
  %41 = phi i32 [ 3, %34 ], [ %39, %35 ]
  br label %42

42:                                               ; preds = %40, %30
  %43 = phi i32 [ 1, %30 ], [ %41, %40 ]
  %44 = call %struct.mips_cpu_info* @mips_cpu_info_from_isa(i32 %43)
  store %struct.mips_cpu_info* %44, %struct.mips_cpu_info** %2, align 8
  br label %71

45:                                               ; preds = %23
  %46 = load i8*, i8** %3, align 8
  %47 = call i64 @strcasecmp(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store %struct.mips_cpu_info* null, %struct.mips_cpu_info** %2, align 8
  br label %71

50:                                               ; preds = %45
  %51 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** @mips_cpu_info_table, align 8
  store %struct.mips_cpu_info* %51, %struct.mips_cpu_info** %4, align 8
  br label %52

52:                                               ; preds = %67, %50
  %53 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** %4, align 8
  %54 = getelementptr inbounds %struct.mips_cpu_info, %struct.mips_cpu_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** %4, align 8
  %59 = getelementptr inbounds %struct.mips_cpu_info, %struct.mips_cpu_info* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i8*, i8** %3, align 8
  %62 = call i64 @mips_matching_cpu_name_p(i64 %60, i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** %4, align 8
  store %struct.mips_cpu_info* %65, %struct.mips_cpu_info** %2, align 8
  br label %71

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** %4, align 8
  %69 = getelementptr inbounds %struct.mips_cpu_info, %struct.mips_cpu_info* %68, i32 1
  store %struct.mips_cpu_info* %69, %struct.mips_cpu_info** %4, align 8
  br label %52

70:                                               ; preds = %52
  store %struct.mips_cpu_info* null, %struct.mips_cpu_info** %2, align 8
  br label %71

71:                                               ; preds = %70, %64, %49, %42
  %72 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** %2, align 8
  ret %struct.mips_cpu_info* %72
}

declare dso_local i64 @ISUPPER(i8 signext) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local %struct.mips_cpu_info* @mips_cpu_info_from_isa(i32) #1

declare dso_local i64 @mips_matching_cpu_name_p(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
