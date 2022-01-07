; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-gen.c_irf_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-gen.c_irf_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IA64_OPND_RR_R3 = common dso_local global i32 0, align 4
@IA64_OPND_DBR_R3 = common dso_local global i32 0, align 4
@IA64_OPND_IBR_R3 = common dso_local global i32 0, align 4
@IA64_OPND_PKR_R3 = common dso_local global i32 0, align 4
@IA64_OPND_PMC_R3 = common dso_local global i32 0, align 4
@IA64_OPND_PMD_R3 = common dso_local global i32 0, align 4
@IA64_OPND_MSR_R3 = common dso_local global i32 0, align 4
@IA64_OPND_CPUID_R3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rr\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dbr\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ibr\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"pkr\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"pmc\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"pmd\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"msr\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"cpuid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @irf_operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irf_operand(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %43, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @IA64_OPND_RR_R3, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %40, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @IA64_OPND_DBR_R3, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %40, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @IA64_OPND_IBR_R3, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %40, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @IA64_OPND_PKR_R3, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %40, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @IA64_OPND_PMC_R3, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %40, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @IA64_OPND_PMD_R3, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @IA64_OPND_MSR_R3, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @IA64_OPND_CPUID_R3, align 4
  %39 = icmp eq i32 %37, %38
  br label %40

40:                                               ; preds = %36, %32, %28, %24, %20, %16, %12, %8
  %41 = phi i1 [ true, %32 ], [ true, %28 ], [ true, %24 ], [ true, %20 ], [ true, %16 ], [ true, %12 ], [ true, %8 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %112

43:                                               ; preds = %2
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @IA64_OPND_RR_R3, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i8*, i8** %5, align 8
  %49 = call i64 @strstr(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %109, label %51

51:                                               ; preds = %47, %43
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @IA64_OPND_DBR_R3, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i8*, i8** %5, align 8
  %57 = call i64 @strstr(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %109, label %59

59:                                               ; preds = %55, %51
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @IA64_OPND_IBR_R3, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i8*, i8** %5, align 8
  %65 = call i64 @strstr(i8* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %109, label %67

67:                                               ; preds = %63, %59
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @IA64_OPND_PKR_R3, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i8*, i8** %5, align 8
  %73 = call i64 @strstr(i8* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %109, label %75

75:                                               ; preds = %71, %67
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @IA64_OPND_PMC_R3, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i8*, i8** %5, align 8
  %81 = call i64 @strstr(i8* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %109, label %83

83:                                               ; preds = %79, %75
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @IA64_OPND_PMD_R3, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i8*, i8** %5, align 8
  %89 = call i64 @strstr(i8* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %109, label %91

91:                                               ; preds = %87, %83
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @IA64_OPND_MSR_R3, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i8*, i8** %5, align 8
  %97 = call i64 @strstr(i8* %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %95, %91
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @IA64_OPND_CPUID_R3, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i8*, i8** %5, align 8
  %105 = call i64 @strstr(i8* %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %106 = icmp ne i64 %105, 0
  br label %107

107:                                              ; preds = %103, %99
  %108 = phi i1 [ false, %99 ], [ %106, %103 ]
  br label %109

109:                                              ; preds = %107, %95, %87, %79, %71, %63, %55, %47
  %110 = phi i1 [ true, %95 ], [ true, %87 ], [ true, %79 ], [ true, %71 ], [ true, %63 ], [ true, %55 ], [ true, %47 ], [ %108, %107 ]
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %109, %40
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i64 @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
