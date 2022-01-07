; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_create_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_create_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.mips_cl_insn = type { i32, i32, i64, i32**, i64, i32*, i32, i64, i32, %struct.mips_opcode* }
%struct.mips_opcode = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@mips_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mips_cl_insn*, %struct.mips_opcode*)* @create_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_insn(%struct.mips_cl_insn* %0, %struct.mips_opcode* %1) #0 {
  %3 = alloca %struct.mips_cl_insn*, align 8
  %4 = alloca %struct.mips_opcode*, align 8
  %5 = alloca i64, align 8
  store %struct.mips_cl_insn* %0, %struct.mips_cl_insn** %3, align 8
  store %struct.mips_opcode* %1, %struct.mips_opcode** %4, align 8
  %6 = load %struct.mips_opcode*, %struct.mips_opcode** %4, align 8
  %7 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %3, align 8
  %8 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %7, i32 0, i32 9
  store %struct.mips_opcode* %6, %struct.mips_opcode** %8, align 8
  %9 = load i32, i32* @FALSE, align 4
  %10 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %3, align 8
  %11 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %10, i32 0, i32 8
  store i32 %9, i32* %11, align 8
  %12 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %3, align 8
  %13 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %12, i32 0, i32 7
  store i64 0, i64* %13, align 8
  %14 = load %struct.mips_opcode*, %struct.mips_opcode** %4, align 8
  %15 = getelementptr inbounds %struct.mips_opcode, %struct.mips_opcode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %3, align 8
  %18 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 8
  %19 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %3, align 8
  %20 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %19, i32 0, i32 5
  store i32* null, i32** %20, align 8
  %21 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %3, align 8
  %22 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  store i64 0, i64* %5, align 8
  br label %23

23:                                               ; preds = %36, %2
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %3, align 8
  %26 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %25, i32 0, i32 3
  %27 = load i32**, i32*** %26, align 8
  %28 = call i64 @ARRAY_SIZE(i32** %27)
  %29 = icmp ult i64 %24, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %3, align 8
  %32 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %31, i32 0, i32 3
  %33 = load i32**, i32*** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds i32*, i32** %33, i64 %34
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %30
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %5, align 8
  br label %23

39:                                               ; preds = %23
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 0), align 8
  %41 = icmp sgt i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %3, align 8
  %44 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 0), align 8
  %46 = icmp sgt i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %3, align 8
  %49 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %3, align 8
  %51 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  ret void
}

declare dso_local i64 @ARRAY_SIZE(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
