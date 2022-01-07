; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_emit_jsrjmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_emit_jsrjmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32 }
%struct.alpha_insn = type { i64, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }

@O_register = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"jmp\00", align 1
@AXP_REG_ZERO = common dso_local global i32 0, align 4
@AXP_REG_RA = common dso_local global i32 0, align 4
@O_pregister = common dso_local global i64 0, align 8
@O_cpregister = common dso_local global i64 0, align 8
@alpha_gp_register = common dso_local global i32 0, align 4
@AXP_REG_PV = common dso_local global i32 0, align 4
@MAX_INSN_FIXUPS = common dso_local global i64 0, align 8
@DUMMY_RELOC_LITUSE_JSR = common dso_local global i32 0, align 4
@O_absent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32, i8*)* @emit_jsrjmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_jsrjmp(%struct.TYPE_12__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.alpha_insn, align 8
  %9 = alloca [3 x %struct.TYPE_12__], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %7, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %3
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @O_register, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %18
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %11, align 4
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @regno(i32 %34)
  store i32 %35, i32* %10, align 4
  br label %46

36:                                               ; preds = %18, %3
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @AXP_REG_ZERO, align 4
  br label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @AXP_REG_RA, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %44, %27
  %47 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %9, i64 0, i64 0
  %48 = load i32, i32* %10, align 4
  %49 = bitcast %struct.TYPE_12__* %47 to { i64, i32 }*
  %50 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 16
  %52 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %49, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @set_tok_reg(i64 %51, i32 %53, i32 %48)
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %85

58:                                               ; preds = %46
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @O_pregister, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %76, label %67

67:                                               ; preds = %58
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @O_cpregister, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %67, %58
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @regno(i32 %83)
  store i32 %84, i32* %10, align 4
  br label %93

85:                                               ; preds = %67, %46
  %86 = load i32, i32* @alpha_gp_register, align 4
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* @AXP_REG_PV, align 4
  store i32 %87, i32* %10, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i64 %90
  %92 = call i64 @load_expression(i32 %87, %struct.TYPE_12__* %91, i32* %13, i32* null)
  store i64 %92, i64* %12, align 8
  br label %93

93:                                               ; preds = %85, %76
  %94 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %9, i64 0, i64 1
  %95 = load i32, i32* %10, align 4
  %96 = bitcast %struct.TYPE_12__* %94 to { i64, i32 }*
  %97 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 16
  %99 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %96, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @set_tok_cpreg(i64 %98, i32 %100, i32 %95)
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %93
  %106 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %9, i64 0, i64 2
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i64 %109
  %111 = bitcast %struct.TYPE_12__* %106 to i8*
  %112 = bitcast %struct.TYPE_12__* %110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %111, i8* align 8 %112, i64 16, i1 false)
  br label %121

113:                                              ; preds = %93
  %114 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %9, i64 0, i64 2
  %115 = bitcast %struct.TYPE_12__* %114 to { i64, i32 }*
  %116 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 16
  %118 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %115, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @set_tok_const(i64 %117, i32 %119, i32 0)
  br label %121

121:                                              ; preds = %113, %105
  %122 = load i8*, i8** %7, align 8
  %123 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %9, i64 0, i64 0
  %124 = call i32 @assemble_tokens_to_insn(i8* %122, %struct.TYPE_12__* %123, i32 3, %struct.alpha_insn* %8)
  %125 = load i64, i64* %12, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %154

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %8, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @MAX_INSN_FIXUPS, align 8
  %131 = icmp ult i64 %129, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert(i32 %132)
  %134 = load i32, i32* @DUMMY_RELOC_LITUSE_JSR, align 4
  %135 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %8, i32 0, i32 2
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %8, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  store i32 %134, i32* %140, align 4
  %141 = load i32, i32* @O_absent, align 4
  %142 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %8, i32 0, i32 2
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %142, align 8
  %144 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %8, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  store i32 %141, i32* %148, align 4
  %149 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %8, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %149, align 8
  %152 = load i64, i64* %12, align 8
  %153 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %8, i32 0, i32 1
  store i64 %152, i64* %153, align 8
  br label %154

154:                                              ; preds = %127, %121
  %155 = call i32 @emit_insn(%struct.alpha_insn* %8)
  ret void
}

declare dso_local i32 @regno(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @set_tok_reg(i64, i32, i32) #1

declare dso_local i64 @load_expression(i32, %struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @set_tok_cpreg(i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_tok_const(i64, i32, i32) #1

declare dso_local i32 @assemble_tokens_to_insn(i8*, %struct.TYPE_12__*, i32, %struct.alpha_insn*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @emit_insn(%struct.alpha_insn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
