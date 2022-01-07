; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-core.c_df_refs_chain_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-core.c_df_refs_chain_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.df_ref = type { %struct.df_ref* }

@.str = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%c%d(%d) \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @df_refs_chain_dump(%struct.df_ref* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.df_ref*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.df_ref* %0, %struct.df_ref** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 (i32*, i8*, ...) @fprintf(i32* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %31, %3
  %10 = load %struct.df_ref*, %struct.df_ref** %4, align 8
  %11 = icmp ne %struct.df_ref* %10, null
  br i1 %11, label %12, label %35

12:                                               ; preds = %9
  %13 = load i32*, i32** %6, align 8
  %14 = load %struct.df_ref*, %struct.df_ref** %4, align 8
  %15 = call i64 @DF_REF_REG_DEF_P(%struct.df_ref* %14)
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 100, i32 117
  %19 = load %struct.df_ref*, %struct.df_ref** %4, align 8
  %20 = call i32 @DF_REF_ID(%struct.df_ref* %19)
  %21 = load %struct.df_ref*, %struct.df_ref** %4, align 8
  %22 = call i32 @DF_REF_REGNO(%struct.df_ref* %21)
  %23 = call i32 (i32*, i8*, ...) @fprintf(i32* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %20, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %12
  %27 = load %struct.df_ref*, %struct.df_ref** %4, align 8
  %28 = call i32 @DF_REF_CHAIN(%struct.df_ref* %27)
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @df_chain_dump(i32 %28, i32* %29)
  br label %31

31:                                               ; preds = %26, %12
  %32 = load %struct.df_ref*, %struct.df_ref** %4, align 8
  %33 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %32, i32 0, i32 0
  %34 = load %struct.df_ref*, %struct.df_ref** %33, align 8
  store %struct.df_ref* %34, %struct.df_ref** %4, align 8
  br label %9

35:                                               ; preds = %9
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 (i32*, i8*, ...) @fprintf(i32* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @DF_REF_REG_DEF_P(%struct.df_ref*) #1

declare dso_local i32 @DF_REF_ID(%struct.df_ref*) #1

declare dso_local i32 @DF_REF_REGNO(%struct.df_ref*) #1

declare dso_local i32 @df_chain_dump(i32, i32*) #1

declare dso_local i32 @DF_REF_CHAIN(%struct.df_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
