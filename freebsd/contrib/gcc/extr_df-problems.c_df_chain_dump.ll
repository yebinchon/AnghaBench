; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-problems.c_df_chain_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-problems.c_df_chain_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.df_link = type { i32, %struct.df_link* }

@.str = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%c%d(bb %d insn %d) \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @df_chain_dump(%struct.df_link* %0, i32* %1) #0 {
  %3 = alloca %struct.df_link*, align 8
  %4 = alloca i32*, align 8
  store %struct.df_link* %0, %struct.df_link** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 (i32*, i8*, ...) @fprintf(i32* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %41, %2
  %8 = load %struct.df_link*, %struct.df_link** %3, align 8
  %9 = icmp ne %struct.df_link* %8, null
  br i1 %9, label %10, label %45

10:                                               ; preds = %7
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.df_link*, %struct.df_link** %3, align 8
  %13 = getelementptr inbounds %struct.df_link, %struct.df_link* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @DF_REF_REG_DEF_P(i32 %14)
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 100, i32 117
  %19 = load %struct.df_link*, %struct.df_link** %3, align 8
  %20 = getelementptr inbounds %struct.df_link, %struct.df_link* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @DF_REF_ID(i32 %21)
  %23 = load %struct.df_link*, %struct.df_link** %3, align 8
  %24 = getelementptr inbounds %struct.df_link, %struct.df_link* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @DF_REF_BBNO(i32 %25)
  %27 = load %struct.df_link*, %struct.df_link** %3, align 8
  %28 = getelementptr inbounds %struct.df_link, %struct.df_link* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @DF_REF_INSN(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %10
  %33 = load %struct.df_link*, %struct.df_link** %3, align 8
  %34 = getelementptr inbounds %struct.df_link, %struct.df_link* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @DF_REF_INSN_UID(i32 %35)
  br label %38

37:                                               ; preds = %10
  br label %38

38:                                               ; preds = %37, %32
  %39 = phi i32 [ %36, %32 ], [ -1, %37 ]
  %40 = call i32 (i32*, i8*, ...) @fprintf(i32* %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %22, i32 %26, i32 %39)
  br label %41

41:                                               ; preds = %38
  %42 = load %struct.df_link*, %struct.df_link** %3, align 8
  %43 = getelementptr inbounds %struct.df_link, %struct.df_link* %42, i32 0, i32 1
  %44 = load %struct.df_link*, %struct.df_link** %43, align 8
  store %struct.df_link* %44, %struct.df_link** %3, align 8
  br label %7

45:                                               ; preds = %7
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 (i32*, i8*, ...) @fprintf(i32* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @DF_REF_REG_DEF_P(i32) #1

declare dso_local i32 @DF_REF_ID(i32) #1

declare dso_local i32 @DF_REF_BBNO(i32) #1

declare dso_local i64 @DF_REF_INSN(i32) #1

declare dso_local i32 @DF_REF_INSN_UID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
