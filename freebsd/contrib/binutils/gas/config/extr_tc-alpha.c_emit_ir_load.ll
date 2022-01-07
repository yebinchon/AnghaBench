; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_emit_ir_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_emit_ir_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }
%struct.alpha_insn = type { i64, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }

@O_constant = common dso_local global i64 0, align 8
@AXP_REG_ZERO = common dso_local global i32 0, align 4
@alpha_gp_register = common dso_local global i32 0, align 4
@MAX_INSN_FIXUPS = common dso_local global i64 0, align 8
@DUMMY_RELOC_LITUSE_BASE = common dso_local global i32 0, align 4
@O_absent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32, i8*)* @emit_ir_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ir_load(%struct.TYPE_11__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [3 x %struct.TYPE_11__], align 16
  %10 = alloca %struct.alpha_insn, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %26

13:                                               ; preds = %3
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i64 1
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @O_constant, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @AXP_REG_ZERO, align 4
  br label %24

22:                                               ; preds = %13
  %23 = load i32, i32* @alpha_gp_register, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %7, align 4
  br label %31

26:                                               ; preds = %3
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i64 2
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %26, %24
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i64 1
  %38 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %9, i64 0, i64 1
  %39 = call i64 @load_expression(i32 %35, %struct.TYPE_11__* %37, i32* %7, %struct.TYPE_11__* %38)
  store i64 %39, i64* %8, align 8
  %40 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %9, i64 0, i64 0
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i64 0
  %43 = bitcast %struct.TYPE_11__* %40 to i8*
  %44 = bitcast %struct.TYPE_11__* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %43, i8* align 8 %44, i64 16, i1 false)
  %45 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %9, i64 0, i64 2
  %46 = load i32, i32* %7, align 4
  %47 = bitcast %struct.TYPE_11__* %45 to { i64, i32 }*
  %48 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 16
  %50 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %47, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @set_tok_preg(i64 %49, i32 %51, i32 %46)
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %9, i64 0, i64 0
  %55 = call i32 @assemble_tokens_to_insn(i8* %53, %struct.TYPE_11__* %54, i32 3, %struct.alpha_insn* %10)
  %56 = load i64, i64* %8, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %85

58:                                               ; preds = %31
  %59 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %10, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MAX_INSN_FIXUPS, align 8
  %62 = icmp ult i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i32, i32* @DUMMY_RELOC_LITUSE_BASE, align 4
  %66 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %10, i32 0, i32 2
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %10, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  store i32 %65, i32* %71, align 4
  %72 = load i32, i32* @O_absent, align 4
  %73 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %10, i32 0, i32 2
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %10, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  store i32 %72, i32* %79, align 4
  %80 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %10, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %80, align 8
  %83 = load i64, i64* %8, align 8
  %84 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %10, i32 0, i32 1
  store i64 %83, i64* %84, align 8
  br label %85

85:                                               ; preds = %58, %31
  %86 = call i32 @emit_insn(%struct.alpha_insn* %10)
  ret void
}

declare dso_local i64 @load_expression(i32, %struct.TYPE_11__*, i32*, %struct.TYPE_11__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_tok_preg(i64, i32, i32) #1

declare dso_local i32 @assemble_tokens_to_insn(i8*, %struct.TYPE_11__*, i32, %struct.alpha_insn*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @emit_insn(%struct.alpha_insn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
