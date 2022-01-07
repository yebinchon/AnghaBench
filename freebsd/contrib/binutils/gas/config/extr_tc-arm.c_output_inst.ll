; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_output_inst.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_output_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32, i64, i64 }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@inst = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [11 x i8] c"%s -- `%s'\00", align 1
@thumb_mode = common dso_local global i64 0, align 8
@THUMB_SIZE = common dso_local global i32 0, align 4
@INSN_SIZE = common dso_local global i32 0, align 4
@BFD_RELOC_UNUSED = common dso_local global i64 0, align 8
@frag_now = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @output_inst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_inst(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %3, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 4), align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @as_bad(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %7, i8* %8)
  br label %86

10:                                               ; preds = %1
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 3), align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 (...) @output_relax_insn()
  br label %86

15:                                               ; preds = %10
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %86

19:                                               ; preds = %15
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %21 = call i8* @frag_more(i32 %20)
  store i8* %21, i8** %3, align 8
  %22 = load i64, i64* @thumb_mode, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %26 = load i32, i32* @THUMB_SIZE, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %30 = load i32, i32* @THUMB_SIZE, align 4
  %31 = mul nsw i32 2, %30
  %32 = icmp eq i32 %29, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %37 = call i32 @put_thumb32_insn(i8* %35, i32 %36)
  br label %66

38:                                               ; preds = %24, %19
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %40 = load i32, i32* @INSN_SIZE, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %44 = load i32, i32* @INSN_SIZE, align 4
  %45 = mul nsw i32 2, %44
  %46 = icmp eq i32 %43, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i8*, i8** %3, align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %51 = load i32, i32* @INSN_SIZE, align 4
  %52 = call i32 @md_number_to_chars(i8* %49, i32 %50, i32 %51)
  %53 = load i8*, i8** %3, align 8
  %54 = load i32, i32* @INSN_SIZE, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %58 = load i32, i32* @INSN_SIZE, align 4
  %59 = call i32 @md_number_to_chars(i8* %56, i32 %57, i32 %58)
  br label %65

60:                                               ; preds = %38
  %61 = load i8*, i8** %3, align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %64 = call i32 @md_number_to_chars(i8* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %42
  br label %66

66:                                               ; preds = %65, %28
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 1, i32 0), align 8
  %68 = load i64, i64* @BFD_RELOC_UNUSED, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** @frag_now, align 8
  %72 = load i8*, i8** %3, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** @frag_now, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = sub i64 0, %76
  %78 = getelementptr inbounds i8, i8* %72, i64 %77
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 1, i32 1), align 8
  %81 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 1, i32 0), align 8
  %82 = call i32 @fix_new_arm(%struct.TYPE_7__* %71, i8* %78, i32 %79, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 1, i32 2), i32 %80, i64 %81)
  br label %83

83:                                               ; preds = %70, %66
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %85 = call i32 @dwarf2_emit_insn(i32 %84)
  br label %86

86:                                               ; preds = %83, %18, %13, %6
  ret void
}

declare dso_local i32 @as_bad(i8*, i64, i8*) #1

declare dso_local i32 @output_relax_insn(...) #1

declare dso_local i8* @frag_more(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @put_thumb32_insn(i8*, i32) #1

declare dso_local i32 @md_number_to_chars(i8*, i32, i32) #1

declare dso_local i32 @fix_new_arm(%struct.TYPE_7__*, i8*, i32, i32*, i32, i64) #1

declare dso_local i32 @dwarf2_emit_insn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
