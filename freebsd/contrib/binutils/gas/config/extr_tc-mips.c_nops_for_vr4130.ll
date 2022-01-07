; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_nops_for_vr4130.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_nops_for_vr4130.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.mips_cl_insn = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@INSN_WRITE_HI = common dso_local global i32 0, align 4
@INSN_WRITE_LO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mtlo\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mthi\00", align 1
@MAX_VR4130_NOPS = common dso_local global i32 0, align 4
@mips_opts = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@mips16_to_32_reg_map = common dso_local global i32* null, align 8
@RX = common dso_local global i32 0, align 4
@RD = common dso_local global i32 0, align 4
@MIPS_GR_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mips_cl_insn*, %struct.mips_cl_insn*)* @nops_for_vr4130 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nops_for_vr4130(%struct.mips_cl_insn* %0, %struct.mips_cl_insn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mips_cl_insn*, align 8
  %5 = alloca %struct.mips_cl_insn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mips_cl_insn* %0, %struct.mips_cl_insn** %4, align 8
  store %struct.mips_cl_insn* %1, %struct.mips_cl_insn** %5, align 8
  %9 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %10 = icmp ne %struct.mips_cl_insn* %9, null
  br i1 %10, label %11, label %39

11:                                               ; preds = %2
  %12 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %13 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @INSN_WRITE_HI, align 4
  %18 = load i32, i32* @INSN_WRITE_LO, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %11
  %23 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %24 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @strcmp(i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %22
  %31 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %32 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @strcmp(i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30, %22, %11
  store i32 0, i32* %3, align 4
  br label %131

39:                                               ; preds = %30, %2
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %127, %39
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @MAX_VR4130_NOPS, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %130

44:                                               ; preds = %40
  %45 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %45, i64 %47
  %49 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %126, label %52

52:                                               ; preds = %44
  %53 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %53, i64 %55
  %57 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @MF_HILO_INSN(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %126

63:                                               ; preds = %52
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mips_opts, i32 0, i32 0), align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %63
  %67 = load i32*, i32** @mips16_to_32_reg_map, align 8
  %68 = load i32, i32* @RX, align 4
  %69 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %69, i64 %71
  %73 = bitcast %struct.mips_cl_insn* %72 to { %struct.TYPE_3__*, i32 }*
  %74 = getelementptr inbounds { %struct.TYPE_3__*, i32 }, { %struct.TYPE_3__*, i32 }* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds { %struct.TYPE_3__*, i32 }, { %struct.TYPE_3__*, i32 }* %73, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @MIPS16_EXTRACT_OPERAND(i32 %68, %struct.TYPE_3__* %75, i32 %77)
  %79 = getelementptr inbounds i32, i32* %67, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %8, align 4
  br label %93

81:                                               ; preds = %63
  %82 = load i32, i32* @RD, align 4
  %83 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %83, i64 %85
  %87 = bitcast %struct.mips_cl_insn* %86 to { %struct.TYPE_3__*, i32 }*
  %88 = getelementptr inbounds { %struct.TYPE_3__*, i32 }, { %struct.TYPE_3__*, i32 }* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds { %struct.TYPE_3__*, i32 }, { %struct.TYPE_3__*, i32 }* %87, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @EXTRACT_OPERAND(i32 %82, %struct.TYPE_3__* %89, i32 %91)
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %81, %66
  %94 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %95 = icmp ne %struct.mips_cl_insn* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %5, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @MIPS_GR_REG, align 4
  %100 = call i64 @insn_uses_reg(%struct.mips_cl_insn* %97, i32 %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %131

103:                                              ; preds = %96, %93
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %119, %103
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %104
  %109 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %109, i64 %111
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @MIPS_GR_REG, align 4
  %115 = call i64 @insn_uses_reg(%struct.mips_cl_insn* %112, i32 %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %131

118:                                              ; preds = %108
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %104

122:                                              ; preds = %104
  %123 = load i32, i32* @MAX_VR4130_NOPS, align 4
  %124 = load i32, i32* %6, align 4
  %125 = sub nsw i32 %123, %124
  store i32 %125, i32* %3, align 4
  br label %131

126:                                              ; preds = %52, %44
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %6, align 4
  br label %40

130:                                              ; preds = %40
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %130, %122, %117, %102, %38
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @MF_HILO_INSN(i32) #1

declare dso_local i64 @MIPS16_EXTRACT_OPERAND(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @EXTRACT_OPERAND(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i64 @insn_uses_reg(%struct.mips_cl_insn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
