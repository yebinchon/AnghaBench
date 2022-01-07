; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_check_byte_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_check_byte_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i32, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@i = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@Reg8 = common dso_local global i32 0, align 4
@intel_syntax = common dso_local global i64 0, align 8
@WordReg = common dso_local global i32 0, align 4
@flag_code = common dso_local global i64 0, align 8
@CODE_64BIT = common dso_local global i64 0, align 8
@InOutPortReg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Incorrect register `%s%s' used with `%c' suffix\00", align 1
@register_prefix = common dso_local global i32 0, align 4
@Reg = common dso_local global i32 0, align 4
@RegMMX = common dso_local global i32 0, align 4
@RegXMM = common dso_local global i32 0, align 4
@SReg2 = common dso_local global i32 0, align 4
@SReg3 = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@Debug = common dso_local global i32 0, align 4
@Test = common dso_local global i32 0, align 4
@FloatReg = common dso_local global i32 0, align 4
@FloatAcc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"`%s%s' not allowed with `%s%c'\00", align 1
@REGNAM_AL = common dso_local global i32 0, align 4
@REGNAM_AX = common dso_local global i32 0, align 4
@REGNAM_EAX = common dso_local global i32 0, align 4
@Reg16 = common dso_local global i32 0, align 4
@quiet_warnings = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_byte_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_byte_reg() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 0), align 8
  store i32 %3, i32* %2, align 4
  br label %4

4:                                                ; preds = %128, %86, %40, %36, %17, %0
  %5 = load i32, i32* %2, align 4
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* %2, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %129

8:                                                ; preds = %4
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 1), align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @Reg8, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  br label %4

18:                                               ; preds = %8
  %19 = load i64, i64* @intel_syntax, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 0), align 8
  %23 = icmp eq i32 %22, 4023
  br i1 %23, label %36, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 0), align 8
  %26 = icmp eq i32 %25, 4022
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 0), align 8
  %29 = icmp eq i32 %28, 99
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 0), align 8
  %32 = icmp eq i32 %31, 4030
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 0), align 8
  %35 = icmp eq i32 %34, 4031
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %30, %27, %24, %21
  br label %4

37:                                               ; preds = %33, %18
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 0), align 8
  %39 = icmp eq i32 %38, -233883408
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %4

41:                                               ; preds = %37
  %42 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 1), align 8
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @WordReg, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %87

50:                                               ; preds = %41
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 4), align 8
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %58, 4
  br i1 %59, label %60, label %87

60:                                               ; preds = %50
  %61 = load i64, i64* @flag_code, align 8
  %62 = load i64, i64* @CODE_64BIT, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %60
  %65 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 1), align 8
  %66 = load i32, i32* %2, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @InOutPortReg, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %64
  %74 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @register_prefix, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 4), align 8
  %77 = load i32, i32* %2, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 2), align 8
  %85 = call i32 (i32, i32, i32, i32, ...) @as_bad(i32 %74, i32 %75, i32 %83, i32 %84)
  store i32 0, i32* %1, align 4
  br label %130

86:                                               ; preds = %64, %60
  br label %4

87:                                               ; preds = %50, %41
  %88 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 1), align 8
  %89 = load i32, i32* %2, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @Reg, align 4
  %94 = load i32, i32* @RegMMX, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @RegXMM, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @SReg2, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @SReg3, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @Control, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @Debug, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @Test, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @FloatReg, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @FloatAcc, align 4
  %111 = or i32 %109, %110
  %112 = and i32 %92, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %87
  %115 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %116 = load i32, i32* @register_prefix, align 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 4), align 8
  %118 = load i32, i32* %2, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 3, i32 2), align 8
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i, i32 0, i32 2), align 8
  %127 = call i32 (i32, i32, i32, i32, ...) @as_bad(i32 %115, i32 %116, i32 %124, i32 %125, i32 %126)
  store i32 0, i32* %1, align 4
  br label %130

128:                                              ; preds = %87
  br label %4

129:                                              ; preds = %4
  store i32 1, i32* %1, align 4
  br label %130

130:                                              ; preds = %129, %114, %73
  %131 = load i32, i32* %1, align 4
  ret i32 %131
}

declare dso_local i32 @as_bad(i32, i32, i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
