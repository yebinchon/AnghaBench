; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_iv_analysis_loop_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_iv_analysis_loop_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }
%struct.TYPE_5__ = type { i32 }

@df = common dso_local global i32* null, align 8
@current_loop = common dso_local global %struct.loop* null, align 8
@DF_HARD_REGS = common dso_local global i32 0, align 4
@DF_EQUIV_NOTES = common dso_local global i32 0, align 4
@DF_UD_CHAIN = common dso_local global i32 0, align 4
@biv_hash = common dso_local global i32 0, align 4
@biv_eq = common dso_local global i32 0, align 4
@bivs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iv_analysis_loop_init(%struct.loop* %0) #0 {
  %2 = alloca %struct.loop*, align 8
  %3 = alloca %struct.TYPE_5__**, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.loop* %0, %struct.loop** %2, align 8
  %8 = load %struct.loop*, %struct.loop** %2, align 8
  %9 = call %struct.TYPE_5__** @get_loop_body_in_dom_order(%struct.loop* %8)
  store %struct.TYPE_5__** %9, %struct.TYPE_5__*** %3, align 8
  %10 = call i32 @BITMAP_ALLOC(i32* null)
  store i32 %10, i32* %5, align 4
  %11 = load i32*, i32** @df, align 8
  %12 = icmp eq i32* %11, null
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %7, align 4
  %14 = load %struct.loop*, %struct.loop** %2, align 8
  store %struct.loop* %14, %struct.loop** @current_loop, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load i32, i32* @DF_HARD_REGS, align 4
  %19 = load i32, i32* @DF_EQUIV_NOTES, align 4
  %20 = or i32 %18, %19
  %21 = call i32* @df_init(i32 %20)
  store i32* %21, i32** @df, align 8
  %22 = load i32*, i32** @df, align 8
  %23 = load i32, i32* @DF_UD_CHAIN, align 4
  %24 = call i32 @df_chain_add_problem(i32* %22, i32 %23)
  %25 = load i32, i32* @biv_hash, align 4
  %26 = load i32, i32* @biv_eq, align 4
  %27 = call i32 @htab_create(i32 10, i32 %25, i32 %26, i32 (%struct.TYPE_5__**)* @free)
  store i32 %27, i32* @bivs, align 4
  br label %30

28:                                               ; preds = %1
  %29 = call i32 (...) @clear_iv_info()
  br label %30

30:                                               ; preds = %28, %17
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %48, %30
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.loop*, %struct.loop** %2, align 8
  %34 = getelementptr inbounds %struct.loop, %struct.loop* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  %38 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %38, i64 %40
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @bitmap_set_bit(i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %37
  %49 = load i32, i32* %6, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %31

51:                                               ; preds = %31
  %52 = load i32*, i32** @df, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @df_set_blocks(i32* %52, i32 %53)
  %55 = load i32*, i32** @df, align 8
  %56 = call i32 @df_analyze(i32* %55)
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @BITMAP_FREE(i32 %57)
  %59 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %60 = call i32 @free(%struct.TYPE_5__** %59)
  ret void
}

declare dso_local %struct.TYPE_5__** @get_loop_body_in_dom_order(%struct.loop*) #1

declare dso_local i32 @BITMAP_ALLOC(i32*) #1

declare dso_local i32* @df_init(i32) #1

declare dso_local i32 @df_chain_add_problem(i32*, i32) #1

declare dso_local i32 @htab_create(i32, i32, i32, i32 (%struct.TYPE_5__**)*) #1

declare dso_local i32 @free(%struct.TYPE_5__**) #1

declare dso_local i32 @clear_iv_info(...) #1

declare dso_local i32 @bitmap_set_bit(i32, i32) #1

declare dso_local i32 @df_set_blocks(i32*, i32) #1

declare dso_local i32 @df_analyze(i32*) #1

declare dso_local i32 @BITMAP_FREE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
