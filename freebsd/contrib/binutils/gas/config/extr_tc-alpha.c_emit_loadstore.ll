; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_emit_loadstore.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_emit_loadstore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }
%struct.alpha_insn = type { i64, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }

@O_constant = common dso_local global i64 0, align 8
@AXP_REG_ZERO = common dso_local global i32 0, align 4
@alpha_gp_register = common dso_local global i32 0, align 4
@alpha_noat_on = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"macro requires $at register while noat in effect\00", align 1
@AXP_REG_AT = common dso_local global i32 0, align 4
@MAX_INSN_FIXUPS = common dso_local global i64 0, align 8
@DUMMY_RELOC_LITUSE_BASE = common dso_local global i32 0, align 4
@O_absent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32, i8*)* @emit_loadstore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_loadstore(%struct.TYPE_11__* %0, i32 %1, i8* %2) #0 {
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
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i64 1
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @O_constant, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %31
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i64 1
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @range_signed_16(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %38, %31
  %46 = load i64, i64* @alpha_noat_on, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %50 = call i32 @as_bad(i32 %49)
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32, i32* @AXP_REG_AT, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i64 1
  %55 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %9, i64 0, i64 1
  %56 = call i64 @load_expression(i32 %52, %struct.TYPE_11__* %54, i32* %7, %struct.TYPE_11__* %55)
  store i64 %56, i64* %8, align 8
  br label %63

57:                                               ; preds = %38
  %58 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %9, i64 0, i64 1
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i64 1
  %61 = bitcast %struct.TYPE_11__* %58 to i8*
  %62 = bitcast %struct.TYPE_11__* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %61, i8* align 8 %62, i64 16, i1 false)
  store i64 0, i64* %8, align 8
  br label %63

63:                                               ; preds = %57, %51
  %64 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %9, i64 0, i64 0
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i64 0
  %67 = bitcast %struct.TYPE_11__* %64 to i8*
  %68 = bitcast %struct.TYPE_11__* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %67, i8* align 8 %68, i64 16, i1 false)
  %69 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %9, i64 0, i64 2
  %70 = load i32, i32* %7, align 4
  %71 = bitcast %struct.TYPE_11__* %69 to { i64, i32 }*
  %72 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 16
  %74 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %71, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @set_tok_preg(i64 %73, i32 %75, i32 %70)
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %9, i64 0, i64 0
  %79 = call i32 @assemble_tokens_to_insn(i8* %77, %struct.TYPE_11__* %78, i32 3, %struct.alpha_insn* %10)
  %80 = load i64, i64* %8, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %109

82:                                               ; preds = %63
  %83 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %10, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @MAX_INSN_FIXUPS, align 8
  %86 = icmp ult i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load i32, i32* @DUMMY_RELOC_LITUSE_BASE, align 4
  %90 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %10, i32 0, i32 2
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %10, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  store i32 %89, i32* %95, align 4
  %96 = load i32, i32* @O_absent, align 4
  %97 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %10, i32 0, i32 2
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %10, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  store i32 %96, i32* %103, align 4
  %104 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %10, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %104, align 8
  %107 = load i64, i64* %8, align 8
  %108 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %10, i32 0, i32 1
  store i64 %107, i64* %108, align 8
  br label %109

109:                                              ; preds = %82, %63
  %110 = call i32 @emit_insn(%struct.alpha_insn* %10)
  ret void
}

declare dso_local i32 @range_signed_16(i32) #1

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

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
