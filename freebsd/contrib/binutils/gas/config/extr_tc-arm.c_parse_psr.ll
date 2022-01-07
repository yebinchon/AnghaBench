; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_psr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_psr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.asm_psr = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"SPSR\00", align 1
@SPSR_BIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"CPSR\00", align 1
@arm_v7m_psr_hsh = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@arm_psr_hsh = common dso_local global i32 0, align 4
@PSR_c = common dso_local global i64 0, align 8
@PSR_f = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"flag for {c}psr instruction expected\00", align 1
@inst = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @parse_psr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_psr(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.asm_psr*, align 8
  %7 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  %8 = load i8**, i8*** %3, align 8
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strncasecmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* @SPSR_BIT, align 8
  store i64 %14, i64* %5, align 8
  br label %58

15:                                               ; preds = %1
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @strncasecmp(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i64 0, i64* %5, align 8
  br label %57

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  store i8* %21, i8** %7, align 8
  br label %22

22:                                               ; preds = %35, %20
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %4, align 8
  br label %25

25:                                               ; preds = %22
  %26 = load i8*, i8** %4, align 8
  %27 = load i8, i8* %26, align 1
  %28 = call i64 @ISALNUM(i8 signext %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %4, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 95
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i1 [ true, %25 ], [ %34, %30 ]
  br i1 %36, label %22, label %37

37:                                               ; preds = %35
  %38 = load i32, i32* @arm_v7m_psr_hsh, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = call %struct.asm_psr* @hash_find_n(i32 %38, i8* %39, i32 %45)
  store %struct.asm_psr* %46, %struct.asm_psr** %6, align 8
  %47 = load %struct.asm_psr*, %struct.asm_psr** %6, align 8
  %48 = icmp ne %struct.asm_psr* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %37
  %50 = load i32, i32* @FAIL, align 4
  store i32 %50, i32* %2, align 4
  br label %124

51:                                               ; preds = %37
  %52 = load i8*, i8** %4, align 8
  %53 = load i8**, i8*** %3, align 8
  store i8* %52, i8** %53, align 8
  %54 = load %struct.asm_psr*, %struct.asm_psr** %6, align 8
  %55 = getelementptr inbounds %struct.asm_psr, %struct.asm_psr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %2, align 4
  br label %124

57:                                               ; preds = %19
  br label %58

58:                                               ; preds = %57, %13
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 4
  store i8* %60, i8** %4, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 95
  br i1 %64, label %65, label %104

65:                                               ; preds = %58
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %4, align 8
  %68 = load i8*, i8** %4, align 8
  store i8* %68, i8** %7, align 8
  br label %69

69:                                               ; preds = %82, %65
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %4, align 8
  br label %72

72:                                               ; preds = %69
  %73 = load i8*, i8** %4, align 8
  %74 = load i8, i8* %73, align 1
  %75 = call i64 @ISALNUM(i8 signext %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = load i8*, i8** %4, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 95
  br label %82

82:                                               ; preds = %77, %72
  %83 = phi i1 [ true, %72 ], [ %81, %77 ]
  br i1 %83, label %69, label %84

84:                                               ; preds = %82
  %85 = load i32, i32* @arm_psr_hsh, align 4
  %86 = load i8*, i8** %7, align 8
  %87 = load i8*, i8** %4, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = trunc i64 %91 to i32
  %93 = call %struct.asm_psr* @hash_find_n(i32 %85, i8* %86, i32 %92)
  store %struct.asm_psr* %93, %struct.asm_psr** %6, align 8
  %94 = load %struct.asm_psr*, %struct.asm_psr** %6, align 8
  %95 = icmp ne %struct.asm_psr* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %84
  br label %121

97:                                               ; preds = %84
  %98 = load %struct.asm_psr*, %struct.asm_psr** %6, align 8
  %99 = getelementptr inbounds %struct.asm_psr, %struct.asm_psr* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %5, align 8
  %103 = or i64 %102, %101
  store i64 %103, i64* %5, align 8
  br label %116

104:                                              ; preds = %58
  %105 = load i8*, i8** %4, align 8
  %106 = load i8, i8* %105, align 1
  %107 = call i64 @ISALNUM(i8 signext %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %121

110:                                              ; preds = %104
  %111 = load i64, i64* @PSR_c, align 8
  %112 = load i64, i64* @PSR_f, align 8
  %113 = or i64 %111, %112
  %114 = load i64, i64* %5, align 8
  %115 = or i64 %114, %113
  store i64 %115, i64* %5, align 8
  br label %116

116:                                              ; preds = %110, %97
  %117 = load i8*, i8** %4, align 8
  %118 = load i8**, i8*** %3, align 8
  store i8* %117, i8** %118, align 8
  %119 = load i64, i64* %5, align 8
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %2, align 4
  br label %124

121:                                              ; preds = %109, %96
  %122 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 %122, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %123 = load i32, i32* @FAIL, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %121, %116, %51, %49
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i64 @ISALNUM(i8 signext) #1

declare dso_local %struct.asm_psr* @hash_find_n(i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
