; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_move_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_move_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_cl_insn = type { i64, %struct.TYPE_2__**, i32* }
%struct.TYPE_2__ = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mips_cl_insn*, i32*, i64)* @move_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @move_insn(%struct.mips_cl_insn* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.mips_cl_insn*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.mips_cl_insn* %0, %struct.mips_cl_insn** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %10 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %9, i32 0, i32 2
  store i32* %8, i32** %10, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %13 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  store i64 0, i64* %7, align 8
  br label %14

14:                                               ; preds = %47, %3
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %17 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %17, align 8
  %19 = call i64 @ARRAY_SIZE(%struct.TYPE_2__** %18)
  %20 = icmp ult i64 %15, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %14
  %22 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %23 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %24, i64 %25
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %29, label %46

29:                                               ; preds = %21
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %32 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %33, i64 %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32* %30, i32** %37, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %40 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %41, i64 %42
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i64 %38, i64* %45, align 8
  br label %46

46:                                               ; preds = %29, %21
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %7, align 8
  br label %14

50:                                               ; preds = %14
  %51 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %52 = call i32 @install_insn(%struct.mips_cl_insn* %51)
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_2__**) #1

declare dso_local i32 @install_insn(%struct.mips_cl_insn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
