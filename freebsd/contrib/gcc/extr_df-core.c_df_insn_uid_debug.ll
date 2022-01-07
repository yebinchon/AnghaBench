; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-core.c_df_insn_uid_debug.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-core.c_df_insn_uid_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.df = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"insn %d bb %d luid %d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" defs \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" uses \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" mws \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.df*, i32, i32, i32*)* @df_insn_uid_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @df_insn_uid_debug(%struct.df* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.df*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.df* %0, %struct.df** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load %struct.df*, %struct.df** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @DF_INSN_UID_DEFS(%struct.df* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load %struct.df*, %struct.df** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @DF_INSN_UID_DEFS(%struct.df* %15, i32 %16)
  %18 = call i32 @DF_REF_BBNO(i64 %17)
  store i32 %18, i32* %9, align 4
  br label %31

19:                                               ; preds = %4
  %20 = load %struct.df*, %struct.df** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @DF_INSN_UID_USES(%struct.df* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.df*, %struct.df** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @DF_INSN_UID_USES(%struct.df* %25, i32 %26)
  %28 = call i32 @DF_REF_BBNO(i64 %27)
  store i32 %28, i32* %9, align 4
  br label %30

29:                                               ; preds = %19
  store i32 -1, i32* %9, align 4
  br label %30

30:                                               ; preds = %29, %24
  br label %31

31:                                               ; preds = %30, %14
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.df*, %struct.df** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @DF_INSN_UID_LUID(%struct.df* %35, i32 %36)
  %38 = call i32 (i32*, i8*, ...) @fprintf(i32* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i32 %37)
  %39 = load %struct.df*, %struct.df** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @DF_INSN_UID_DEFS(%struct.df* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %31
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 (i32*, i8*, ...) @fprintf(i32* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.df*, %struct.df** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @DF_INSN_UID_DEFS(%struct.df* %46, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @df_refs_chain_dump(i64 %48, i32 %49, i32* %50)
  br label %52

52:                                               ; preds = %43, %31
  %53 = load %struct.df*, %struct.df** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i64 @DF_INSN_UID_USES(%struct.df* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 (i32*, i8*, ...) @fprintf(i32* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %60 = load %struct.df*, %struct.df** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @DF_INSN_UID_USES(%struct.df* %60, i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @df_refs_chain_dump(i64 %62, i32 %63, i32* %64)
  br label %66

66:                                               ; preds = %57, %52
  %67 = load %struct.df*, %struct.df** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i64 @DF_INSN_UID_MWS(%struct.df* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 (i32*, i8*, ...) @fprintf(i32* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %74 = load %struct.df*, %struct.df** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i64 @DF_INSN_UID_MWS(%struct.df* %74, i32 %75)
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @df_mws_dump(i64 %76, i32* %77)
  br label %79

79:                                               ; preds = %71, %66
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 (i32*, i8*, ...) @fprintf(i32* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i64 @DF_INSN_UID_DEFS(%struct.df*, i32) #1

declare dso_local i32 @DF_REF_BBNO(i64) #1

declare dso_local i64 @DF_INSN_UID_USES(%struct.df*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @DF_INSN_UID_LUID(%struct.df*, i32) #1

declare dso_local i32 @df_refs_chain_dump(i64, i32, i32*) #1

declare dso_local i64 @DF_INSN_UID_MWS(%struct.df*, i32) #1

declare dso_local i32 @df_mws_dump(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
