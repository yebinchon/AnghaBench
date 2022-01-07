; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-core.c_df_ref_debug.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-core.c_df_ref_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.df_ref = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%c%d \00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"reg %d bb %d insn %d flag %x chain \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @df_ref_debug(%struct.df_ref* %0, i32* %1) #0 {
  %3 = alloca %struct.df_ref*, align 8
  %4 = alloca i32*, align 8
  store %struct.df_ref* %0, %struct.df_ref** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = load %struct.df_ref*, %struct.df_ref** %3, align 8
  %7 = call i64 @DF_REF_REG_DEF_P(%struct.df_ref* %6)
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 100, i32 117
  %11 = load %struct.df_ref*, %struct.df_ref** %3, align 8
  %12 = call i32 @DF_REF_ID(%struct.df_ref* %11)
  %13 = call i32 (i32*, i8*, ...) @fprintf(i32* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %12)
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.df_ref*, %struct.df_ref** %3, align 8
  %16 = call i32 @DF_REF_REGNO(%struct.df_ref* %15)
  %17 = load %struct.df_ref*, %struct.df_ref** %3, align 8
  %18 = call i32 @DF_REF_BBNO(%struct.df_ref* %17)
  %19 = load %struct.df_ref*, %struct.df_ref** %3, align 8
  %20 = call i64 @DF_REF_INSN(%struct.df_ref* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.df_ref*, %struct.df_ref** %3, align 8
  %24 = call i64 @DF_REF_INSN(%struct.df_ref* %23)
  %25 = call i32 @INSN_UID(i64 %24)
  br label %27

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi i32 [ %25, %22 ], [ -1, %26 ]
  %29 = load %struct.df_ref*, %struct.df_ref** %3, align 8
  %30 = call i32 @DF_REF_FLAGS(%struct.df_ref* %29)
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %18, i32 %28, i32 %30)
  %32 = load %struct.df_ref*, %struct.df_ref** %3, align 8
  %33 = call i32 @DF_REF_CHAIN(%struct.df_ref* %32)
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @df_chain_dump(i32 %33, i32* %34)
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 (i32*, i8*, ...) @fprintf(i32* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @DF_REF_REG_DEF_P(%struct.df_ref*) #1

declare dso_local i32 @DF_REF_ID(%struct.df_ref*) #1

declare dso_local i32 @DF_REF_REGNO(%struct.df_ref*) #1

declare dso_local i32 @DF_REF_BBNO(%struct.df_ref*) #1

declare dso_local i64 @DF_REF_INSN(%struct.df_ref*) #1

declare dso_local i32 @INSN_UID(i64) #1

declare dso_local i32 @DF_REF_FLAGS(%struct.df_ref*) #1

declare dso_local i32 @df_chain_dump(i32, i32*) #1

declare dso_local i32 @DF_REF_CHAIN(%struct.df_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
