; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_emit_ldXu.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_emit_ldXu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32 }
%struct.alpha_insn = type { i64, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i8* }

@alpha_target = common dso_local global i32 0, align 4
@AXP_OPCODE_BWX = common dso_local global i32 0, align 4
@ldXu_op = common dso_local global i32* null, align 8
@alpha_noat_on = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"macro requires $at register while noat in effect\00", align 1
@O_constant = common dso_local global i64 0, align 8
@AXP_REG_ZERO = common dso_local global i32 0, align 4
@alpha_gp_register = common dso_local global i32 0, align 4
@AXP_REG_AT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ldq_u\00", align 1
@MAX_INSN_FIXUPS = common dso_local global i64 0, align 8
@DUMMY_RELOC_LITUSE_BASE = common dso_local global i32 0, align 4
@O_absent = common dso_local global i8* null, align 8
@extXl_op = common dso_local global i8** null, align 8
@DUMMY_RELOC_LITUSE_BYTOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32, i8*)* @emit_ldXu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ldXu(%struct.TYPE_13__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [3 x %struct.TYPE_13__], align 16
  %8 = alloca %struct.alpha_insn, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i32, i32* @alpha_target, align 4
  %12 = load i32, i32* @AXP_OPCODE_BWX, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32*, i32** @ldXu_op, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @emit_ir_load(%struct.TYPE_13__* %16, i32 %17, i32 %22)
  br label %159

24:                                               ; preds = %3
  %25 = load i64, i64* @alpha_noat_on, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 @as_bad(i32 %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i64 1
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @O_constant, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @AXP_REG_ZERO, align 4
  br label %44

42:                                               ; preds = %33
  %43 = load i32, i32* @alpha_gp_register, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %9, align 4
  br label %51

46:                                               ; preds = %30
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i64 2
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %46, %44
  %52 = load i32, i32* @AXP_REG_AT, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i64 1
  %55 = call i64 @load_expression(i32 %52, %struct.TYPE_13__* %54, i32* %9, i32* null)
  store i64 %55, i64* %10, align 8
  %56 = getelementptr inbounds [3 x %struct.TYPE_13__], [3 x %struct.TYPE_13__]* %7, i64 0, i64 0
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i64 0
  %59 = bitcast %struct.TYPE_13__* %56 to i8*
  %60 = bitcast %struct.TYPE_13__* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %59, i8* align 8 %60, i64 16, i1 false)
  %61 = getelementptr inbounds [3 x %struct.TYPE_13__], [3 x %struct.TYPE_13__]* %7, i64 0, i64 1
  %62 = bitcast %struct.TYPE_13__* %61 to { i64, i32 }*
  %63 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 16
  %65 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %62, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @set_tok_const(i64 %64, i32 %66, i32 0)
  %68 = getelementptr inbounds [3 x %struct.TYPE_13__], [3 x %struct.TYPE_13__]* %7, i64 0, i64 2
  %69 = load i32, i32* %9, align 4
  %70 = bitcast %struct.TYPE_13__* %68 to { i64, i32 }*
  %71 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 16
  %73 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %70, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @set_tok_preg(i64 %72, i32 %74, i32 %69)
  %76 = getelementptr inbounds [3 x %struct.TYPE_13__], [3 x %struct.TYPE_13__]* %7, i64 0, i64 0
  %77 = call i32 @assemble_tokens_to_insn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_13__* %76, i32 3, %struct.alpha_insn* %8)
  %78 = load i64, i64* %10, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %107

80:                                               ; preds = %51
  %81 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %8, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @MAX_INSN_FIXUPS, align 8
  %84 = icmp ult i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load i32, i32* @DUMMY_RELOC_LITUSE_BASE, align 4
  %88 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %8, i32 0, i32 2
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %8, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  store i32 %87, i32* %93, align 8
  %94 = load i8*, i8** @O_absent, align 8
  %95 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %8, i32 0, i32 2
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %8, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  store i8* %94, i8** %101, align 8
  %102 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %8, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %102, align 8
  %105 = load i64, i64* %10, align 8
  %106 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %8, i32 0, i32 1
  store i64 %105, i64* %106, align 8
  br label %107

107:                                              ; preds = %80, %51
  %108 = call i32 @emit_insn(%struct.alpha_insn* %8)
  %109 = getelementptr inbounds [3 x %struct.TYPE_13__], [3 x %struct.TYPE_13__]* %7, i64 0, i64 1
  %110 = load i32, i32* %9, align 4
  %111 = bitcast %struct.TYPE_13__* %109 to { i64, i32 }*
  %112 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 16
  %114 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %111, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @set_tok_reg(i64 %113, i32 %115, i32 %110)
  %117 = getelementptr inbounds [3 x %struct.TYPE_13__], [3 x %struct.TYPE_13__]* %7, i64 0, i64 2
  %118 = getelementptr inbounds [3 x %struct.TYPE_13__], [3 x %struct.TYPE_13__]* %7, i64 0, i64 0
  %119 = bitcast %struct.TYPE_13__* %117 to i8*
  %120 = bitcast %struct.TYPE_13__* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %119, i8* align 16 %120, i64 16, i1 false)
  %121 = load i8**, i8*** @extXl_op, align 8
  %122 = load i8*, i8** %6, align 8
  %123 = ptrtoint i8* %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds [3 x %struct.TYPE_13__], [3 x %struct.TYPE_13__]* %7, i64 0, i64 0
  %127 = call i32 @assemble_tokens_to_insn(i8* %125, %struct.TYPE_13__* %126, i32 3, %struct.alpha_insn* %8)
  %128 = load i64, i64* %10, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %157

130:                                              ; preds = %107
  %131 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %8, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @MAX_INSN_FIXUPS, align 8
  %134 = icmp ult i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert(i32 %135)
  %137 = load i32, i32* @DUMMY_RELOC_LITUSE_BYTOFF, align 4
  %138 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %8, i32 0, i32 2
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  %140 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %8, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 1
  store i32 %137, i32* %143, align 8
  %144 = load i8*, i8** @O_absent, align 8
  %145 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %8, i32 0, i32 2
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %145, align 8
  %147 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %8, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  store i8* %144, i8** %151, align 8
  %152 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %8, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %152, align 8
  %155 = load i64, i64* %10, align 8
  %156 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %8, i32 0, i32 1
  store i64 %155, i64* %156, align 8
  br label %157

157:                                              ; preds = %130, %107
  %158 = call i32 @emit_insn(%struct.alpha_insn* %8)
  br label %159

159:                                              ; preds = %157, %15
  ret void
}

declare dso_local i32 @emit_ir_load(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @load_expression(i32, %struct.TYPE_13__*, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_tok_const(i64, i32, i32) #1

declare dso_local i32 @set_tok_preg(i64, i32, i32) #1

declare dso_local i32 @assemble_tokens_to_insn(i8*, %struct.TYPE_13__*, i32, %struct.alpha_insn*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @emit_insn(%struct.alpha_insn*) #1

declare dso_local i32 @set_tok_reg(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
