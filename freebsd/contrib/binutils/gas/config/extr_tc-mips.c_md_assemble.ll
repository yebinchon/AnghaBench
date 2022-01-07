; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_md_assemble.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_md_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.mips_cl_insn = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i64 }

@BFD_RELOC_UNUSED = common dso_local global i32 0, align 4
@O_absent = common dso_local global i64 0, align 8
@imm_expr = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@imm2_expr = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@offset_expr = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@imm_reloc = common dso_local global i32* null, align 8
@offset_reloc = common dso_local global i32* null, align 8
@mips_opts = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str = private unnamed_addr constant [46 x i8] c"returned from mips_ip(%s) insn_opcode = 0x%x\0A\00", align 1
@insn_error = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"%s `%s'\00", align 1
@INSN_MACRO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_assemble(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mips_cl_insn, align 8
  %4 = alloca [3 x i32], align 4
  store i8* %0, i8** %2, align 8
  %5 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %6 = load i32, i32* @BFD_RELOC_UNUSED, align 4
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds i32, i32* %5, i64 1
  %8 = load i32, i32* @BFD_RELOC_UNUSED, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds i32, i32* %7, i64 1
  %10 = load i32, i32* @BFD_RELOC_UNUSED, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i64, i64* @O_absent, align 8
  store i64 %11, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @imm_expr, i32 0, i32 0), align 8
  %12 = load i64, i64* @O_absent, align 8
  store i64 %12, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @imm2_expr, i32 0, i32 0), align 8
  %13 = load i64, i64* @O_absent, align 8
  store i64 %13, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @offset_expr, i32 0, i32 0), align 8
  %14 = load i32, i32* @BFD_RELOC_UNUSED, align 4
  %15 = load i32*, i32** @imm_reloc, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @BFD_RELOC_UNUSED, align 4
  %18 = load i32*, i32** @imm_reloc, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @BFD_RELOC_UNUSED, align 4
  %21 = load i32*, i32** @imm_reloc, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @BFD_RELOC_UNUSED, align 4
  %24 = load i32*, i32** @offset_reloc, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @BFD_RELOC_UNUSED, align 4
  %27 = load i32*, i32** @offset_reloc, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @BFD_RELOC_UNUSED, align 4
  %30 = load i32*, i32** @offset_reloc, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  store i32 %29, i32* %31, align 4
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @mips_opts, i32 0, i32 0), align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = load i8*, i8** %2, align 8
  %36 = call i32 @mips16_ip(i8* %35, %struct.mips_cl_insn* %3)
  br label %45

37:                                               ; preds = %1
  %38 = load i8*, i8** %2, align 8
  %39 = call i32 @mips_ip(i8* %38, %struct.mips_cl_insn* %3)
  %40 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %41 = load i8*, i8** %2, align 8
  %42 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %3, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @DBG(i32 %43)
  br label %45

45:                                               ; preds = %37, %34
  %46 = load i64, i64* @insn_error, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i64, i64* @insn_error, align 8
  %50 = load i8*, i8** %2, align 8
  %51 = call i32 @as_bad(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %49, i8* %50)
  br label %88

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %3, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @INSN_MACRO, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %52
  %60 = call i32 (...) @macro_start()
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @mips_opts, i32 0, i32 0), align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 @mips16_macro(%struct.mips_cl_insn* %3)
  br label %67

65:                                               ; preds = %59
  %66 = call i32 @macro(%struct.mips_cl_insn* %3)
  br label %67

67:                                               ; preds = %65, %63
  %68 = call i32 (...) @macro_end()
  br label %88

69:                                               ; preds = %52
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @imm_expr, i32 0, i32 0), align 8
  %71 = load i64, i64* @O_absent, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32*, i32** @imm_reloc, align 8
  %75 = call i32 @append_insn(%struct.mips_cl_insn* %3, %struct.TYPE_8__* @imm_expr, i32* %74)
  br label %87

76:                                               ; preds = %69
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @offset_expr, i32 0, i32 0), align 8
  %78 = load i64, i64* @O_absent, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32*, i32** @offset_reloc, align 8
  %82 = call i32 @append_insn(%struct.mips_cl_insn* %3, %struct.TYPE_8__* @offset_expr, i32* %81)
  br label %86

83:                                               ; preds = %76
  %84 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %85 = call i32 @append_insn(%struct.mips_cl_insn* %3, %struct.TYPE_8__* null, i32* %84)
  br label %86

86:                                               ; preds = %83, %80
  br label %87

87:                                               ; preds = %86, %73
  br label %88

88:                                               ; preds = %48, %87, %67
  ret void
}

declare dso_local i32 @mips16_ip(i8*, %struct.mips_cl_insn*) #1

declare dso_local i32 @mips_ip(i8*, %struct.mips_cl_insn*) #1

declare dso_local i32 @DBG(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @as_bad(i8*, i64, i8*) #1

declare dso_local i32 @macro_start(...) #1

declare dso_local i32 @mips16_macro(%struct.mips_cl_insn*) #1

declare dso_local i32 @macro(%struct.mips_cl_insn*) #1

declare dso_local i32 @macro_end(...) #1

declare dso_local i32 @append_insn(%struct.mips_cl_insn*, %struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
