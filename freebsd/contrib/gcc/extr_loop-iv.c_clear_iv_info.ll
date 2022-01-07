; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_clear_iv_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_clear_iv_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_iv = type { i32 }
%struct.df_ref = type { i32 }

@df = common dso_local global i32 0, align 4
@bivs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @clear_iv_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_iv_info() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtx_iv*, align 8
  %4 = alloca %struct.df_ref*, align 8
  %5 = load i32, i32* @df, align 4
  %6 = call i32 @DF_DEFS_SIZE(i32 %5)
  store i32 %6, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %25, %0
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = load i32, i32* @df, align 4
  %13 = load i32, i32* %1, align 4
  %14 = call %struct.df_ref* @DF_DEFS_GET(i32 %12, i32 %13)
  store %struct.df_ref* %14, %struct.df_ref** %4, align 8
  %15 = load %struct.df_ref*, %struct.df_ref** %4, align 8
  %16 = call %struct.rtx_iv* @DF_REF_IV(%struct.df_ref* %15)
  store %struct.rtx_iv* %16, %struct.rtx_iv** %3, align 8
  %17 = load %struct.rtx_iv*, %struct.rtx_iv** %3, align 8
  %18 = icmp ne %struct.rtx_iv* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  br label %25

20:                                               ; preds = %11
  %21 = load %struct.rtx_iv*, %struct.rtx_iv** %3, align 8
  %22 = call i32 @free(%struct.rtx_iv* %21)
  %23 = load %struct.df_ref*, %struct.df_ref** %4, align 8
  %24 = call i32 @DF_REF_IV_SET(%struct.df_ref* %23, i32* null)
  br label %25

25:                                               ; preds = %20, %19
  %26 = load i32, i32* %1, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %7

28:                                               ; preds = %7
  %29 = load i32, i32* @bivs, align 4
  %30 = call i32 @htab_empty(i32 %29)
  ret void
}

declare dso_local i32 @DF_DEFS_SIZE(i32) #1

declare dso_local %struct.df_ref* @DF_DEFS_GET(i32, i32) #1

declare dso_local %struct.rtx_iv* @DF_REF_IV(%struct.df_ref*) #1

declare dso_local i32 @free(%struct.rtx_iv*) #1

declare dso_local i32 @DF_REF_IV_SET(%struct.df_ref*, i32*) #1

declare dso_local i32 @htab_empty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
