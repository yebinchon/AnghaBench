; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_cgen-asm.c_cgen_parse_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_cgen-asm.c_cgen_parse_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* (%struct.TYPE_4__*, i32, i8**, i32, i32, i32*, i32*)* }

@CGEN_PARSE_OPERAND_ADDRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cgen_parse_address(%struct.TYPE_4__* %0, i8** %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i8* (%struct.TYPE_4__*, i32, i8**, i32, i32, i32*, i32*)*, i8* (%struct.TYPE_4__*, i32, i8**, i32, i32, i32*, i32*)** %17, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %20 = load i32, i32* @CGEN_PARSE_OPERAND_ADDRESS, align 4
  %21 = load i8**, i8*** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i8* %18(%struct.TYPE_4__* %19, i32 %20, i8** %21, i32 %22, i32 %23, i32* %14, i32* %13)
  store i8* %24, i8** %15, align 8
  %25 = load i8*, i8** %15, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %6
  %28 = load i32*, i32** %11, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %14, align 4
  %32 = load i32*, i32** %11, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %13, align 4
  %35 = load i32*, i32** %12, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %6
  %37 = load i8*, i8** %15, align 8
  ret i8* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
