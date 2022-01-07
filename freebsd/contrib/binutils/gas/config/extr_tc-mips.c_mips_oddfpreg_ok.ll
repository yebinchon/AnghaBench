; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_mips_oddfpreg_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_mips_oddfpreg_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mips_opcode = type { i8*, i32 }

@INSN_MACRO = common dso_local global i32 0, align 4
@mips_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@INSN_COPROC_MEMORY_DELAY = common dso_local global i32 0, align 4
@INSN_STORE_MEMORY = common dso_local global i32 0, align 4
@INSN_LOAD_COPROC_DELAY = common dso_local global i32 0, align 4
@INSN_COPROC_MOVE_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mips_opcode*, i32)* @mips_oddfpreg_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_oddfpreg_ok(%struct.mips_opcode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mips_opcode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.mips_opcode* %0, %struct.mips_opcode** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mips_opcode*, %struct.mips_opcode** %4, align 8
  %8 = getelementptr inbounds %struct.mips_opcode, %struct.mips_opcode* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %6, align 8
  %10 = load %struct.mips_opcode*, %struct.mips_opcode** %4, align 8
  %11 = getelementptr inbounds %struct.mips_opcode, %struct.mips_opcode* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @INSN_MACRO, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %86

16:                                               ; preds = %2
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 0), align 4
  %18 = call i64 @ISA_HAS_ODD_SINGLE_FPR(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %65

20:                                               ; preds = %16
  %21 = load %struct.mips_opcode*, %struct.mips_opcode** %4, align 8
  %22 = getelementptr inbounds %struct.mips_opcode, %struct.mips_opcode* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 129
  switch i32 %24, label %27 [
    i32 128, label %25
    i32 0, label %25
    i32 129, label %26
  ]

25:                                               ; preds = %20, %20
  store i32 1, i32* %3, align 4
  br label %86

26:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %86

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.mips_opcode*, %struct.mips_opcode** %4, align 8
  %30 = getelementptr inbounds %struct.mips_opcode, %struct.mips_opcode* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @strchr(i8* %31, i8 signext 46)
  store i8* %32, i8** %6, align 8
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load i8*, i8** %6, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = call i8* @strchr(i8* %40, i8 signext 46)
  br label %43

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i8* [ %41, %38 ], [ null, %42 ]
  store i8* %44, i8** %6, align 8
  br label %45

45:                                               ; preds = %43, %28
  %46 = load i8*, i8** %6, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %62

48:                                               ; preds = %45
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 119
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 115
  br label %60

60:                                               ; preds = %54, %48
  %61 = phi i1 [ true, %48 ], [ %59, %54 ]
  br label %62

62:                                               ; preds = %60, %45
  %63 = phi i1 [ false, %45 ], [ %61, %60 ]
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %3, align 4
  br label %86

65:                                               ; preds = %16
  %66 = load %struct.mips_opcode*, %struct.mips_opcode** %4, align 8
  %67 = getelementptr inbounds %struct.mips_opcode, %struct.mips_opcode* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, 128
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %65
  %72 = load %struct.mips_opcode*, %struct.mips_opcode** %4, align 8
  %73 = getelementptr inbounds %struct.mips_opcode, %struct.mips_opcode* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @INSN_COPROC_MEMORY_DELAY, align 4
  %76 = load i32, i32* @INSN_STORE_MEMORY, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @INSN_LOAD_COPROC_DELAY, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @INSN_COPROC_MOVE_DELAY, align 4
  %81 = or i32 %79, %80
  %82 = and i32 %74, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  store i32 1, i32* %3, align 4
  br label %86

85:                                               ; preds = %71, %65
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %84, %62, %26, %25, %15
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i64 @ISA_HAS_ODD_SINGLE_FPR(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
