; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mep.c_md_assemble.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mep.c_md_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i8*, i32, i8* }

@md_assemble.isas = internal global i32* null, align 8
@MEP_CORE_ISA = common dso_local global i32 0, align 4
@gas_cgen_cpu_desc = common dso_local global %struct.TYPE_8__* null, align 8
@mode = common dso_local global i64 0, align 8
@VLIW = common dso_local global i64 0, align 8
@CGEN_INT_INSN_P = common dso_local global i32 0, align 4
@CGEN_MAX_INSN_SIZE = common dso_local global i32 0, align 4
@MEP_COP_ISA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@pluspresent = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"A core insn cannot be preceeded by a +.\0A\00", align 1
@num_insns_saved = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"Invalid use of parallelization operator.\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Leading plus sign not allowed in core mode\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_assemble(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__, align 8
  store i8* %0, i8** %2, align 8
  %8 = call i32 (...) @gas_cgen_init_parse()
  %9 = load i32*, i32** @md_assemble.isas, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32* @cgen_bitset_copy(i32* @MEP_CORE_ISA)
  store i32* %12, i32** @md_assemble.isas, align 8
  br label %19

13:                                               ; preds = %1
  %14 = load i32*, i32** @md_assemble.isas, align 8
  %15 = call i32 @cgen_bitset_clear(i32* %14)
  %16 = load i32*, i32** @md_assemble.isas, align 8
  %17 = load i32*, i32** @md_assemble.isas, align 8
  %18 = call i32 @cgen_bitset_union(i32* %16, i32* @MEP_CORE_ISA, i32* %17)
  br label %19

19:                                               ; preds = %13, %11
  %20 = load i32*, i32** @md_assemble.isas, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @gas_cgen_cpu_desc, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32* %20, i32** %22, align 8
  %23 = load i64, i64* @mode, align 8
  %24 = load i64, i64* @VLIW, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %109

26:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  %27 = load i32, i32* @CGEN_INT_INSN_P, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %40, %29
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @CGEN_MAX_INSN_SIZE, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8 0, i8* %39, align 1
  br label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %30

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43, %26
  %45 = load i32*, i32** @md_assemble.isas, align 8
  %46 = load i32*, i32** @md_assemble.isas, align 8
  %47 = call i32 @cgen_bitset_union(i32* %45, i32* @MEP_COP_ISA, i32* %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** @gas_cgen_cpu_desc, align 8
  %49 = load i8*, i8** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i8* @mep_cgen_assemble_insn(%struct.TYPE_8__* %48, i8* %49, i32* %50, i8* %52, i8** %3)
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  store i8* %53, i8** %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %44
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 (i8*, ...) @as_bad(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %59)
  br label %140

61:                                               ; preds = %44
  %62 = call i32 @mep_check_for_disabled_registers(%struct.TYPE_7__* %5)
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @MEP_INSN_COP_P(i8* %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %82, label %68

68:                                               ; preds = %61
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** @gas_cgen_cpu_desc, align 8
  %70 = load i8*, i8** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = call i8* @mep_cgen_assemble_cop_insn(%struct.TYPE_8__* %69, i8* %70, i32* %71, i8* %73, i8* %75)
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  store i8* %76, i8** %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @MEP_INSN_COP_P(i8* %79)
  store i32 %80, i32* %4, align 4
  %81 = call i32 @mep_check_for_disabled_registers(%struct.TYPE_7__* %5)
  br label %82

82:                                               ; preds = %68, %61
  %83 = load i64, i64* @pluspresent, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %82
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = call i32 @as_fatal(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %140

90:                                               ; preds = %85
  %91 = load i64, i64* @num_insns_saved, align 8
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = call i32 @mep_save_insn(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %5)
  br label %100

95:                                               ; preds = %90
  %96 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  %99 = call i32 (i8*, ...) @as_bad(i8* %98)
  br label %140

100:                                              ; preds = %93
  br label %108

101:                                              ; preds = %82
  %102 = load i64, i64* @num_insns_saved, align 8
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = call i32 (...) @mep_process_saved_insns()
  store i64 0, i64* @num_insns_saved, align 8
  br label %106

106:                                              ; preds = %104, %101
  %107 = call i32 @mep_save_insn(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %5)
  br label %108

108:                                              ; preds = %106, %100
  store i64 0, i64* @pluspresent, align 8
  br label %140

109:                                              ; preds = %19
  %110 = load i64, i64* @pluspresent, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to i8*
  %116 = call i32 (i8*, ...) @as_bad(i8* %115)
  br label %140

117:                                              ; preds = %109
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** @gas_cgen_cpu_desc, align 8
  %119 = load i8*, i8** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i8* @mep_cgen_assemble_insn(%struct.TYPE_8__* %118, i8* %119, i32* %120, i8* %122, i8** %3)
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  store i8* %123, i8** %124, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %117
  %129 = load i8*, i8** %3, align 8
  %130 = call i32 (i8*, ...) @as_bad(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %129)
  br label %140

131:                                              ; preds = %117
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %133 = load i8*, i8** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %137 = call i32 @CGEN_FIELDS_BITSIZE(i32* %136)
  %138 = call i32 @gas_cgen_finish_insn(i8* %133, i8* %135, i32 %137, i32 1, i32* null)
  %139 = call i32 @mep_check_for_disabled_registers(%struct.TYPE_7__* %7)
  br label %140

140:                                              ; preds = %58, %88, %95, %112, %128, %131, %108
  ret void
}

declare dso_local i32 @gas_cgen_init_parse(...) #1

declare dso_local i32* @cgen_bitset_copy(i32*) #1

declare dso_local i32 @cgen_bitset_clear(i32*) #1

declare dso_local i32 @cgen_bitset_union(i32*, i32*, i32*) #1

declare dso_local i8* @mep_cgen_assemble_insn(%struct.TYPE_8__*, i8*, i32*, i8*, i8**) #1

declare dso_local i32 @as_bad(i8*, ...) #1

declare dso_local i32 @mep_check_for_disabled_registers(%struct.TYPE_7__*) #1

declare dso_local i32 @MEP_INSN_COP_P(i8*) #1

declare dso_local i8* @mep_cgen_assemble_cop_insn(%struct.TYPE_8__*, i8*, i32*, i8*, i8*) #1

declare dso_local i32 @as_fatal(i8*) #1

declare dso_local i32 @mep_save_insn(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @mep_process_saved_insns(...) #1

declare dso_local i32 @gas_cgen_finish_insn(i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @CGEN_FIELDS_BITSIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
