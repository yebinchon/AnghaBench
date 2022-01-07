; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-core.c_df_insn_debug_regno.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-core.c_df_insn_debug_regno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.df = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"insn %d bb %d luid %d defs \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" uses \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @df_insn_debug_regno(%struct.df* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.df*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.df* %0, %struct.df** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @INSN_UID(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.df*, %struct.df** %4, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @DF_INSN_UID_DEFS(%struct.df* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.df*, %struct.df** %4, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @DF_INSN_UID_DEFS(%struct.df* %16, i32 %17)
  %19 = call i32 @DF_REF_BBNO(i64 %18)
  store i32 %19, i32* %8, align 4
  br label %32

20:                                               ; preds = %3
  %21 = load %struct.df*, %struct.df** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @DF_INSN_UID_USES(%struct.df* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.df*, %struct.df** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @DF_INSN_UID_USES(%struct.df* %26, i32 %27)
  %29 = call i32 @DF_REF_BBNO(i64 %28)
  store i32 %29, i32* %8, align 4
  br label %31

30:                                               ; preds = %20
  store i32 -1, i32* %8, align 4
  br label %31

31:                                               ; preds = %30, %25
  br label %32

32:                                               ; preds = %31, %15
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.df*, %struct.df** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @DF_INSN_LUID(%struct.df* %36, i32 %37)
  %39 = call i32 (i32*, i8*, ...) @fprintf(i32* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35, i32 %38)
  %40 = load %struct.df*, %struct.df** %4, align 8
  %41 = load %struct.df*, %struct.df** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @DF_INSN_UID_DEFS(%struct.df* %41, i32 %42)
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @df_regs_chain_dump(%struct.df* %40, i64 %43, i32* %44)
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 (i32*, i8*, ...) @fprintf(i32* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.df*, %struct.df** %4, align 8
  %49 = load %struct.df*, %struct.df** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @DF_INSN_UID_USES(%struct.df* %49, i32 %50)
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @df_regs_chain_dump(%struct.df* %48, i64 %51, i32* %52)
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 (i32*, i8*, ...) @fprintf(i32* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @INSN_UID(i32) #1

declare dso_local i64 @DF_INSN_UID_DEFS(%struct.df*, i32) #1

declare dso_local i32 @DF_REF_BBNO(i64) #1

declare dso_local i64 @DF_INSN_UID_USES(%struct.df*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @DF_INSN_LUID(%struct.df*, i32) #1

declare dso_local i32 @df_regs_chain_dump(%struct.df*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
