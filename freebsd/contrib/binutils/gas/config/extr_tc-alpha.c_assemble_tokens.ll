; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_assemble_tokens.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_assemble_tokens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.alpha_opcode = type { i32 }
%struct.alpha_macro = type { i32, i32 (%struct.TYPE_8__*, i32, i32)* }
%struct.alpha_insn = type { i32 }

@BFD_RELOC_UNUSED = common dso_local global i64 0, align 8
@alpha_macro_hash = common dso_local global i32 0, align 4
@alpha_opcode_hash = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"inappropriate arguments for opcode `%s'\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"opcode `%s' not supported for target %s\00", align 1
@alpha_target_name = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"unknown opcode `%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_8__*, i32, i32)* @assemble_tokens to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assemble_tokens(i8* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.alpha_opcode*, align 8
  %11 = alloca %struct.alpha_macro*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.alpha_insn, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %12, align 4
  %15 = load i64, i64* @BFD_RELOC_UNUSED, align 8
  store i64 %15, i64* %13, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %4
  %19 = load i32, i32* @alpha_macro_hash, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @hash_find(i32 %19, i8* %20)
  %22 = inttoptr i64 %21 to %struct.alpha_macro*
  store %struct.alpha_macro* %22, %struct.alpha_macro** %11, align 8
  %23 = load %struct.alpha_macro*, %struct.alpha_macro** %11, align 8
  %24 = icmp ne %struct.alpha_macro* %23, null
  br i1 %24, label %25, label %42

25:                                               ; preds = %18
  store i32 1, i32* %9, align 4
  %26 = load %struct.alpha_macro*, %struct.alpha_macro** %11, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = call %struct.alpha_macro* @find_macro_match(%struct.alpha_macro* %26, %struct.TYPE_8__* %27, i32* %7)
  store %struct.alpha_macro* %28, %struct.alpha_macro** %11, align 8
  %29 = load %struct.alpha_macro*, %struct.alpha_macro** %11, align 8
  %30 = icmp ne %struct.alpha_macro* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.alpha_macro*, %struct.alpha_macro** %11, align 8
  %33 = getelementptr inbounds %struct.alpha_macro, %struct.alpha_macro* %32, i32 0, i32 1
  %34 = load i32 (%struct.TYPE_8__*, i32, i32)*, i32 (%struct.TYPE_8__*, i32, i32)** %33, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.alpha_macro*, %struct.alpha_macro** %11, align 8
  %38 = getelementptr inbounds %struct.alpha_macro, %struct.alpha_macro* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 %34(%struct.TYPE_8__* %35, i32 %36, i32 %39)
  br label %96

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41, %18
  br label %43

43:                                               ; preds = %42, %4
  %44 = load i32, i32* @alpha_opcode_hash, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = call i64 @hash_find(i32 %44, i8* %45)
  %47 = inttoptr i64 %46 to %struct.alpha_opcode*
  store %struct.alpha_opcode* %47, %struct.alpha_opcode** %10, align 8
  %48 = load %struct.alpha_opcode*, %struct.alpha_opcode** %10, align 8
  %49 = icmp ne %struct.alpha_opcode* %48, null
  br i1 %49, label %50, label %76

50:                                               ; preds = %43
  store i32 1, i32* %9, align 4
  %51 = load %struct.alpha_opcode*, %struct.alpha_opcode** %10, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = call %struct.alpha_opcode* @find_opcode_match(%struct.alpha_opcode* %51, %struct.TYPE_8__* %52, i32* %7, i32* %12)
  store %struct.alpha_opcode* %53, %struct.alpha_opcode** %10, align 8
  %54 = load %struct.alpha_opcode*, %struct.alpha_opcode** %10, align 8
  %55 = icmp ne %struct.alpha_opcode* %54, null
  br i1 %55, label %56, label %75

56:                                               ; preds = %50
  %57 = load %struct.alpha_opcode*, %struct.alpha_opcode** %10, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i64, i64* %13, align 8
  %61 = call i32 @assemble_insn(%struct.alpha_opcode* %57, %struct.TYPE_8__* %58, i32 %59, %struct.alpha_insn* %14, i64 %60)
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* @BFD_RELOC_UNUSED, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %56
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %14, i32 0, i32 0
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %65, %56
  %74 = call i32 @emit_insn(%struct.alpha_insn* %14)
  br label %96

75:                                               ; preds = %50
  br label %76

76:                                               ; preds = %75, %43
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %76
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 (i32, i8*, ...) @as_bad(i32 %83, i8* %84)
  br label %91

86:                                               ; preds = %79
  %87 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i8*, i8** %5, align 8
  %89 = load i32, i32* @alpha_target_name, align 4
  %90 = call i32 (i32, i8*, ...) @as_bad(i32 %87, i8* %88, i32 %89)
  br label %91

91:                                               ; preds = %86, %82
  br label %96

92:                                               ; preds = %76
  %93 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i8*, i8** %5, align 8
  %95 = call i32 (i32, i8*, ...) @as_bad(i32 %93, i8* %94)
  br label %96

96:                                               ; preds = %31, %73, %92, %91
  ret void
}

declare dso_local i64 @hash_find(i32, i8*) #1

declare dso_local %struct.alpha_macro* @find_macro_match(%struct.alpha_macro*, %struct.TYPE_8__*, i32*) #1

declare dso_local %struct.alpha_opcode* @find_opcode_match(%struct.alpha_opcode*, %struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @assemble_insn(%struct.alpha_opcode*, %struct.TYPE_8__*, i32, %struct.alpha_insn*, i64) #1

declare dso_local i32 @emit_insn(%struct.alpha_insn*) #1

declare dso_local i32 @as_bad(i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
