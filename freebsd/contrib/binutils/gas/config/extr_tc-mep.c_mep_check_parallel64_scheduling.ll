; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mep.c_mep_check_parallel64_scheduling.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mep.c_mep_check_parallel64_scheduling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i32 }

@num_insns_saved = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Internally parallel cores of coprocessors not supported.\00", align 1
@saved_insns = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"core and copro insn lengths must total 64 bits.\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"vliw group must consist of 1 core and 1 copro insn.\00", align 1
@CGEN_INSN_VLIW64_NO_MATCHING_NOP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"No valid nop.\00", align 1
@gas_cgen_cpu_desc = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Assembler expects a non-existent core nop.\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"cpnop48\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"cpnop32\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"cpnop16\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"Core insn has invalid length!  Something is wrong!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mep_check_parallel64_scheduling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mep_check_parallel64_scheduling() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca i32, align 4
  %11 = load i32, i32* @num_insns_saved, align 4
  %12 = icmp sgt i32 %11, 2
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 @as_fatal(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %0
  %16 = load i32, i32* @num_insns_saved, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %185

19:                                               ; preds = %15
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @saved_insns, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @MEP_INSN_COP_P(i8* %23)
  store i32 %24, i32* %1, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @saved_insns, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = call i32 @CGEN_FIELDS_BITSIZE(i32* %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @num_insns_saved, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %64

31:                                               ; preds = %19
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @saved_insns, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @MEP_INSN_COP_P(i8* %35)
  store i32 %36, i32* %2, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @saved_insns, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = call i32 @CGEN_FIELDS_BITSIZE(i32* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %1, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %31
  %44 = load i32, i32* %2, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43, %31
  %47 = load i32, i32* %2, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = load i32, i32* %1, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %49, %43
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %53, %54
  %56 = icmp eq i32 %55, 64
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %185

58:                                               ; preds = %52
  %59 = call i32 (i8*, ...) @as_bad(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58
  br label %63

61:                                               ; preds = %49, %46
  %62 = call i32 (i8*, ...) @as_bad(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %60
  br label %185

64:                                               ; preds = %19
  %65 = load i32, i32* %3, align 4
  %66 = icmp eq i32 %65, 64
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %185

68:                                               ; preds = %64
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @saved_insns, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* @CGEN_INSN_VLIW64_NO_MATCHING_NOP, align 4
  %74 = call i64 @CGEN_INSN_ATTR_VALUE(i8* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = call i32 @as_fatal(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %68
  %79 = load i32, i32* %1, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %128

81:                                               ; preds = %78
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %91, %81
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 64
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  store i8 0, i8* %90, align 1
  br label %91

91:                                               ; preds = %85
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %82

94:                                               ; preds = %82
  %95 = load i32, i32* %3, align 4
  %96 = icmp eq i32 %95, 48
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load i32, i32* @gas_cgen_cpu_desc, align 4
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i8* @mep_cgen_assemble_insn(i32 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %99, i8* %101, i8** %5)
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i8* %102, i8** %103, align 8
  br label %106

104:                                              ; preds = %94
  %105 = call i32 @as_fatal(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %97
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = load i8*, i8** %5, align 8
  %112 = call i32 (i8*, ...) @as_bad(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %111)
  br label %185

113:                                              ; preds = %106
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** @saved_insns, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 1
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** @saved_insns, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 0
  %118 = bitcast %struct.TYPE_4__* %115 to i8*
  %119 = bitcast %struct.TYPE_4__* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %118, i8* align 8 %119, i64 24, i1 false)
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** @saved_insns, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 0
  %122 = bitcast %struct.TYPE_4__* %121 to i8*
  %123 = bitcast %struct.TYPE_4__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %122, i8* align 8 %123, i64 24, i1 false)
  %124 = load i32, i32* @num_insns_saved, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* @num_insns_saved, align 4
  %126 = call i32 @gas_cgen_swap_fixups(i32 0)
  %127 = call i32 @gas_cgen_save_fixups(i32 1)
  br label %184

128:                                              ; preds = %78
  store i32 0, i32* %10, align 4
  br label %129

129:                                              ; preds = %138, %128
  %130 = load i32, i32* %10, align 4
  %131 = icmp slt i32 %130, 64
  br i1 %131, label %132, label %141

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  store i8 0, i8* %137, align 1
  br label %138

138:                                              ; preds = %132
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %10, align 4
  br label %129

141:                                              ; preds = %129
  %142 = load i32, i32* %3, align 4
  %143 = icmp eq i32 %142, 16
  br i1 %143, label %144, label %151

144:                                              ; preds = %141
  %145 = load i32, i32* @gas_cgen_cpu_desc, align 4
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = call i8* @mep_cgen_assemble_insn(i32 %145, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32* %146, i8* %148, i8** %8)
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i8* %149, i8** %150, align 8
  br label %175

151:                                              ; preds = %141
  %152 = load i32, i32* %3, align 4
  %153 = icmp eq i32 %152, 32
  br i1 %153, label %154, label %161

154:                                              ; preds = %151
  %155 = load i32, i32* @gas_cgen_cpu_desc, align 4
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = call i8* @mep_cgen_assemble_insn(i32 %155, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32* %156, i8* %158, i8** %8)
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i8* %159, i8** %160, align 8
  br label %174

161:                                              ; preds = %151
  %162 = load i32, i32* %3, align 4
  %163 = icmp eq i32 %162, 48
  br i1 %163, label %164, label %171

164:                                              ; preds = %161
  %165 = load i32, i32* @gas_cgen_cpu_desc, align 4
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = call i8* @mep_cgen_assemble_insn(i32 %165, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32* %166, i8* %168, i8** %8)
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i8* %169, i8** %170, align 8
  br label %173

171:                                              ; preds = %161
  %172 = call i32 @as_fatal(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0))
  br label %173

173:                                              ; preds = %171, %164
  br label %174

174:                                              ; preds = %173, %154
  br label %175

175:                                              ; preds = %174, %144
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %182, label %179

179:                                              ; preds = %175
  %180 = load i8*, i8** %8, align 8
  %181 = call i32 (i8*, ...) @as_bad(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %180)
  br label %185

182:                                              ; preds = %175
  %183 = call i32 @mep_save_insn(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %9)
  br label %184

184:                                              ; preds = %182, %113
  br label %185

185:                                              ; preds = %18, %57, %67, %110, %179, %184, %63
  ret void
}

declare dso_local i32 @as_fatal(i8*) #1

declare dso_local i32 @MEP_INSN_COP_P(i8*) #1

declare dso_local i32 @CGEN_FIELDS_BITSIZE(i32*) #1

declare dso_local i32 @as_bad(i8*, ...) #1

declare dso_local i64 @CGEN_INSN_ATTR_VALUE(i8*, i32) #1

declare dso_local i8* @mep_cgen_assemble_insn(i32, i8*, i32*, i8*, i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gas_cgen_swap_fixups(i32) #1

declare dso_local i32 @gas_cgen_save_fixups(i32) #1

declare dso_local i32 @mep_save_insn(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
