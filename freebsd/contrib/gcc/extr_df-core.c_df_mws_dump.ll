; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-core.c_df_mws_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-core.c_df_mws_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.df_mw_hardreg = type { i64, %struct.df_mw_hardreg*, %struct.df_link* }
%struct.df_link = type { %struct.df_link*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%c%d(\00", align 1
@DF_REF_REG_DEF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c") \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.df_mw_hardreg*, i32*)* @df_mws_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @df_mws_dump(%struct.df_mw_hardreg* %0, i32* %1) #0 {
  %3 = alloca %struct.df_mw_hardreg*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.df_link*, align 8
  store %struct.df_mw_hardreg* %0, %struct.df_mw_hardreg** %3, align 8
  store i32* %1, i32** %4, align 8
  br label %6

6:                                                ; preds = %39, %2
  %7 = load %struct.df_mw_hardreg*, %struct.df_mw_hardreg** %3, align 8
  %8 = icmp ne %struct.df_mw_hardreg* %7, null
  br i1 %8, label %9, label %45

9:                                                ; preds = %6
  %10 = load %struct.df_mw_hardreg*, %struct.df_mw_hardreg** %3, align 8
  %11 = getelementptr inbounds %struct.df_mw_hardreg, %struct.df_mw_hardreg* %10, i32 0, i32 2
  %12 = load %struct.df_link*, %struct.df_link** %11, align 8
  store %struct.df_link* %12, %struct.df_link** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.df_mw_hardreg*, %struct.df_mw_hardreg** %3, align 8
  %15 = getelementptr inbounds %struct.df_mw_hardreg, %struct.df_mw_hardreg* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DF_REF_REG_DEF, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 100, i32 117
  %21 = load %struct.df_link*, %struct.df_link** %5, align 8
  %22 = getelementptr inbounds %struct.df_link, %struct.df_link* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @DF_REF_REGNO(i32 %23)
  %25 = call i32 (i32*, i8*, ...) @fprintf(i32* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24)
  br label %26

26:                                               ; preds = %29, %9
  %27 = load %struct.df_link*, %struct.df_link** %5, align 8
  %28 = icmp ne %struct.df_link* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.df_link*, %struct.df_link** %5, align 8
  %32 = getelementptr inbounds %struct.df_link, %struct.df_link* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @DF_REF_REGNO(i32 %33)
  %35 = call i32 (i32*, i8*, ...) @fprintf(i32* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.df_link*, %struct.df_link** %5, align 8
  %37 = getelementptr inbounds %struct.df_link, %struct.df_link* %36, i32 0, i32 0
  %38 = load %struct.df_link*, %struct.df_link** %37, align 8
  store %struct.df_link* %38, %struct.df_link** %5, align 8
  br label %26

39:                                               ; preds = %26
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 (i32*, i8*, ...) @fprintf(i32* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.df_mw_hardreg*, %struct.df_mw_hardreg** %3, align 8
  %43 = getelementptr inbounds %struct.df_mw_hardreg, %struct.df_mw_hardreg* %42, i32 0, i32 1
  %44 = load %struct.df_mw_hardreg*, %struct.df_mw_hardreg** %43, align 8
  store %struct.df_mw_hardreg* %44, %struct.df_mw_hardreg** %3, align 8
  br label %6

45:                                               ; preds = %6
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @DF_REF_REGNO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
