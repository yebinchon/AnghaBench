; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mep.c_mep_check_parallel32_scheduling.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mep.c_mep_check_parallel32_scheduling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@num_insns_saved = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Internally paralled cores and coprocessors not supported.\00", align 1
@saved_insns = common dso_local global %struct.TYPE_8__* null, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"core and copro insn lengths must total 32 bits.\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"vliw group must consist of 1 core and 1 copro insn.\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Cannot use 48- or 64-bit insns with a 32 bit datapath.\00", align 1
@CGEN_INSN_VLIW32_NO_MATCHING_NOP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"No valid nop.\00", align 1
@gas_cgen_cpu_desc = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MEP_INSN_BSR12 = common dso_local global i32 0, align 4
@MEP_INSN_BEQZ = common dso_local global i32 0, align 4
@MEP_INSN_BNEZ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"cpnop16\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mep_check_parallel32_scheduling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mep_check_parallel32_scheduling() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca i32, align 4
  %10 = load i32, i32* @num_insns_saved, align 4
  %11 = icmp sgt i32 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 @as_fatal(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %0
  %15 = load i32, i32* @num_insns_saved, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %157

18:                                               ; preds = %14
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @saved_insns, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = call i32 @MEP_INSN_COP_P(%struct.TYPE_9__* %22)
  store i32 %23, i32* %1, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @saved_insns, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = call i32 @CGEN_FIELDS_BITSIZE(i32* %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @num_insns_saved, align 4
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %63

30:                                               ; preds = %18
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** @saved_insns, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = call i32 @MEP_INSN_COP_P(%struct.TYPE_9__* %34)
  store i32 %35, i32* %2, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @saved_insns, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = call i32 @CGEN_FIELDS_BITSIZE(i32* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %1, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load i32, i32* %2, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42, %30
  %46 = load i32, i32* %2, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load i32, i32* %1, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %48, %42
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %52, %53
  %55 = icmp eq i32 %54, 32
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %157

57:                                               ; preds = %51
  %58 = call i32 (i8*, ...) @as_bad(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57
  br label %62

60:                                               ; preds = %48, %45
  %61 = call i32 (i8*, ...) @as_bad(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %59
  br label %157

63:                                               ; preds = %18
  %64 = load i32, i32* %3, align 4
  %65 = icmp sgt i32 %64, 32
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 @as_fatal(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %63
  %69 = load i32, i32* %3, align 4
  %70 = icmp eq i32 %69, 32
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %157

72:                                               ; preds = %68
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** @saved_insns, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load i32, i32* @CGEN_INSN_VLIW32_NO_MATCHING_NOP, align 4
  %78 = call i64 @CGEN_INSN_ATTR_VALUE(%struct.TYPE_9__* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = call i32 @as_fatal(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %72
  %83 = load i32, i32* %1, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %114

85:                                               ; preds = %82
  %86 = load i32, i32* @gas_cgen_cpu_desc, align 4
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i8* @mep_cgen_assemble_insn(i32 %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %87, i32 %89, i8** %5)
  %91 = bitcast i8* %90 to %struct.TYPE_9__*
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store %struct.TYPE_9__* %91, %struct.TYPE_9__** %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = icmp ne %struct.TYPE_9__* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %85
  %97 = load i8*, i8** %5, align 8
  %98 = call i32 (i8*, ...) @as_bad(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %97)
  br label %157

99:                                               ; preds = %85
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** @saved_insns, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i64 1
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** @saved_insns, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i64 0
  %104 = bitcast %struct.TYPE_8__* %101 to i8*
  %105 = bitcast %struct.TYPE_8__* %103 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %104, i8* align 8 %105, i64 16, i1 false)
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** @saved_insns, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i64 0
  %108 = bitcast %struct.TYPE_8__* %107 to i8*
  %109 = bitcast %struct.TYPE_8__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %108, i8* align 8 %109, i64 16, i1 false)
  %110 = load i32, i32* @num_insns_saved, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* @num_insns_saved, align 4
  %112 = call i32 @gas_cgen_swap_fixups(i32 0)
  %113 = call i32 @gas_cgen_save_fixups(i32 1)
  br label %156

114:                                              ; preds = %82
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** @saved_insns, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @MEP_INSN_BSR12, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %134, label %126

126:                                              ; preds = %114
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @MEP_INSN_BEQZ, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* @MEP_INSN_BNEZ, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %130, %126, %114
  br label %157

135:                                              ; preds = %130
  %136 = load i32, i32* @gas_cgen_cpu_desc, align 4
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i8* @mep_cgen_assemble_insn(i32 %136, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32* %137, i32 %139, i8** %7)
  %141 = bitcast i8* %140 to %struct.TYPE_9__*
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store %struct.TYPE_9__* %141, %struct.TYPE_9__** %142, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = icmp ne %struct.TYPE_9__* %144, null
  br i1 %145, label %149, label %146

146:                                              ; preds = %135
  %147 = load i8*, i8** %7, align 8
  %148 = call i32 (i8*, ...) @as_bad(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %147)
  br label %157

149:                                              ; preds = %135
  %150 = bitcast %struct.TYPE_8__* %8 to { %struct.TYPE_9__*, i64 }*
  %151 = getelementptr inbounds { %struct.TYPE_9__*, i64 }, { %struct.TYPE_9__*, i64 }* %150, i32 0, i32 0
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = getelementptr inbounds { %struct.TYPE_9__*, i64 }, { %struct.TYPE_9__*, i64 }* %150, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @mep_save_insn(%struct.TYPE_9__* %152, i64 %154)
  br label %156

156:                                              ; preds = %149, %99
  br label %157

157:                                              ; preds = %17, %56, %71, %96, %134, %146, %156, %62
  ret void
}

declare dso_local i32 @as_fatal(i8*) #1

declare dso_local i32 @MEP_INSN_COP_P(%struct.TYPE_9__*) #1

declare dso_local i32 @CGEN_FIELDS_BITSIZE(i32*) #1

declare dso_local i32 @as_bad(i8*, ...) #1

declare dso_local i64 @CGEN_INSN_ATTR_VALUE(%struct.TYPE_9__*, i32) #1

declare dso_local i8* @mep_cgen_assemble_insn(i32, i8*, i32*, i32, i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gas_cgen_swap_fixups(i32) #1

declare dso_local i32 @gas_cgen_save_fixups(i32) #1

declare dso_local i32 @mep_save_insn(%struct.TYPE_9__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
