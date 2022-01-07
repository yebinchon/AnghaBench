; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-core.c_df_regno_debug.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-core.c_df_regno_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.df = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"reg %d defs \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" uses \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @df_regno_debug(%struct.df* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.df*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.df* %0, %struct.df** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 (i32*, i8*, ...) @fprintf(i32* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.df*, %struct.df** %4, align 8
  %11 = load %struct.df*, %struct.df** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.TYPE_4__* @DF_REG_DEF_GET(%struct.df* %11, i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @df_regs_chain_dump(%struct.df* %10, i32 %15, i32* %16)
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 (i32*, i8*, ...) @fprintf(i32* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.df*, %struct.df** %4, align 8
  %21 = load %struct.df*, %struct.df** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.TYPE_3__* @DF_REG_USE_GET(%struct.df* %21, i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @df_regs_chain_dump(%struct.df* %20, i32 %25, i32* %26)
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @df_regs_chain_dump(%struct.df*, i32, i32*) #1

declare dso_local %struct.TYPE_4__* @DF_REG_DEF_GET(%struct.df*, i32) #1

declare dso_local %struct.TYPE_3__* @DF_REG_USE_GET(%struct.df*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
