; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mep-ibld.c_insert_insn_normal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mep-ibld.c_insert_insn_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* (%struct.TYPE_7__*, i32, i32*, i32, i32)*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_7__*, i32*, i32*, i32, i32)* @insert_insn_normal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @insert_insn_normal(%struct.TYPE_7__* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = call i32* @CGEN_INSN_SYNTAX(i32* %16)
  store i32* %17, i32** %12, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = call i32 @CGEN_INIT_INSERT(%struct.TYPE_7__* %18)
  %20 = load i32*, i32** %8, align 8
  %21 = call i64 @CGEN_INSN_BASE_VALUE(i32* %20)
  store i64 %21, i64* %13, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32*, i32** %9, align 8
  %29 = call i64 @CGEN_FIELDS_BITSIZE(i32* %28)
  %30 = trunc i64 %29 to i32
  %31 = call i32 @min(i32 %27, i32 %30)
  %32 = load i64, i64* %13, align 8
  %33 = call i32 @cgen_put_insn_value(%struct.TYPE_7__* %22, i32 %23, i32 %31, i64 %32)
  %34 = load i32*, i32** %12, align 8
  %35 = call i64* @CGEN_SYNTAX_STRING(i32* %34)
  store i64* %35, i64** %14, align 8
  br label %36

36:                                               ; preds = %63, %5
  %37 = load i64*, i64** %14, align 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %66

40:                                               ; preds = %36
  %41 = load i64*, i64** %14, align 8
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @CGEN_SYNTAX_CHAR_P(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %63

46:                                               ; preds = %40
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i8* (%struct.TYPE_7__*, i32, i32*, i32, i32)*, i8* (%struct.TYPE_7__*, i32, i32*, i32, i32)** %48, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = load i64*, i64** %14, align 8
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @CGEN_SYNTAX_FIELD(i64 %52)
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i8* %49(%struct.TYPE_7__* %50, i32 %53, i32* %54, i32 %55, i32 %56)
  store i8* %57, i8** %15, align 8
  %58 = load i8*, i8** %15, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %46
  %61 = load i8*, i8** %15, align 8
  store i8* %61, i8** %6, align 8
  br label %67

62:                                               ; preds = %46
  br label %63

63:                                               ; preds = %62, %45
  %64 = load i64*, i64** %14, align 8
  %65 = getelementptr inbounds i64, i64* %64, i32 1
  store i64* %65, i64** %14, align 8
  br label %36

66:                                               ; preds = %36
  store i8* null, i8** %6, align 8
  br label %67

67:                                               ; preds = %66, %60
  %68 = load i8*, i8** %6, align 8
  ret i8* %68
}

declare dso_local i32* @CGEN_INSN_SYNTAX(i32*) #1

declare dso_local i32 @CGEN_INIT_INSERT(%struct.TYPE_7__*) #1

declare dso_local i64 @CGEN_INSN_BASE_VALUE(i32*) #1

declare dso_local i32 @cgen_put_insn_value(%struct.TYPE_7__*, i32, i32, i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @CGEN_FIELDS_BITSIZE(i32*) #1

declare dso_local i64* @CGEN_SYNTAX_STRING(i32*) #1

declare dso_local i64 @CGEN_SYNTAX_CHAR_P(i64) #1

declare dso_local i32 @CGEN_SYNTAX_FIELD(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
