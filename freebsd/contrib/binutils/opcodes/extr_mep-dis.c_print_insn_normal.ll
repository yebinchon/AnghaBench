; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mep-dis.c_print_insn_normal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mep-dis.c_print_insn_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 (i32, i8*, i32)* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32*, i32*, i32, i32)* @print_insn_normal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_insn_normal(i32 %0, i8* %1, i32* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i64*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = call i32* @CGEN_INSN_SYNTAX(i32* %16)
  store i32* %17, i32** %13, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %14, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @CGEN_INIT_PRINT(i32 %20)
  %22 = load i32*, i32** %13, align 8
  %23 = call i64* @CGEN_SYNTAX_STRING(i32* %22)
  store i64* %23, i64** %15, align 8
  br label %24

24:                                               ; preds = %71, %6
  %25 = load i64*, i64** %15, align 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %74

28:                                               ; preds = %24
  %29 = load i64*, i64** %15, align 8
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @CGEN_SYNTAX_MNEMONIC_P(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %35, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @CGEN_INSN_MNEMONIC(i32* %40)
  %42 = call i32 %36(i32 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %71

43:                                               ; preds = %28
  %44 = load i64*, i64** %15, align 8
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @CGEN_SYNTAX_CHAR_P(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %50, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i64*, i64** %15, align 8
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @CGEN_SYNTAX_CHAR(i64 %56)
  %58 = call i32 %51(i32 %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %71

59:                                               ; preds = %43
  %60 = load i32, i32* %7, align 4
  %61 = load i64*, i64** %15, align 8
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @CGEN_SYNTAX_FIELD(i64 %62)
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @CGEN_INSN_ATTRS(i32* %66)
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @mep_cgen_print_operand(i32 %60, i32 %63, %struct.TYPE_3__* %64, i32* %65, i32 %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %59, %48, %33
  %72 = load i64*, i64** %15, align 8
  %73 = getelementptr inbounds i64, i64* %72, i32 1
  store i64* %73, i64** %15, align 8
  br label %24

74:                                               ; preds = %24
  ret void
}

declare dso_local i32* @CGEN_INSN_SYNTAX(i32*) #1

declare dso_local i32 @CGEN_INIT_PRINT(i32) #1

declare dso_local i64* @CGEN_SYNTAX_STRING(i32*) #1

declare dso_local i64 @CGEN_SYNTAX_MNEMONIC_P(i64) #1

declare dso_local i32 @CGEN_INSN_MNEMONIC(i32*) #1

declare dso_local i64 @CGEN_SYNTAX_CHAR_P(i64) #1

declare dso_local i32 @CGEN_SYNTAX_CHAR(i64) #1

declare dso_local i32 @mep_cgen_print_operand(i32, i32, %struct.TYPE_3__*, i32*, i32, i32, i32) #1

declare dso_local i32 @CGEN_SYNTAX_FIELD(i64) #1

declare dso_local i32 @CGEN_INSN_ATTRS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
