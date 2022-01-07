; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_expandarg.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_expandarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.nodelist* }
%struct.nodelist = type { i32 }
%struct.arglist = type { i32 }
%struct.worddest = type { i64, %struct.arglist* }

@fflag = common dso_local global i64 0, align 8
@EXP_GLOB = common dso_local global i32 0, align 4
@WORD_IDLE = common dso_local global i64 0, align 8
@expdest = common dso_local global i64 0, align 8
@EXP_SPLIT = common dso_local global i32 0, align 4
@WORD_QUOTEMARK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expandarg(%union.node* %0, %struct.arglist* %1, i32 %2) #0 {
  %4 = alloca %union.node*, align 8
  %5 = alloca %struct.arglist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.worddest, align 8
  %8 = alloca %struct.nodelist*, align 8
  store %union.node* %0, %union.node** %4, align 8
  store %struct.arglist* %1, %struct.arglist** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* @fflag, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i32, i32* @EXP_GLOB, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %11, %3
  %17 = load %union.node*, %union.node** %4, align 8
  %18 = bitcast %union.node* %17 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.nodelist*, %struct.nodelist** %19, align 8
  store %struct.nodelist* %20, %struct.nodelist** %8, align 8
  %21 = load %struct.arglist*, %struct.arglist** %5, align 8
  %22 = getelementptr inbounds %struct.worddest, %struct.worddest* %7, i32 0, i32 1
  store %struct.arglist* %21, %struct.arglist** %22, align 8
  %23 = load i64, i64* @WORD_IDLE, align 8
  %24 = getelementptr inbounds %struct.worddest, %struct.worddest* %7, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  %25 = load i64, i64* @expdest, align 8
  %26 = call i32 @STARTSTACKSTR(i64 %25)
  %27 = load %union.node*, %union.node** %4, align 8
  %28 = bitcast %union.node* %27 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @argstr(i32 %30, %struct.nodelist** %8, i32 %31, %struct.worddest* %7)
  %33 = load %struct.arglist*, %struct.arglist** %5, align 8
  %34 = icmp eq %struct.arglist* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %16
  %36 = load i64, i64* @expdest, align 8
  %37 = call i32 @STACKSTRNUL(i64 %36)
  br label %88

38:                                               ; preds = %16
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @EXP_SPLIT, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %38
  %44 = load i64, i64* @expdest, align 8
  %45 = call i64 (...) @stackblock()
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.worddest, %struct.worddest* %7, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @WORD_QUOTEMARK, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %78

52:                                               ; preds = %47, %43, %38
  %53 = load i64, i64* @expdest, align 8
  %54 = call i32 @STPUTC(i8 signext 0, i64 %53)
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @EXP_SPLIT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %52
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @EXP_GLOB, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i64, i64* @expdest, align 8
  %66 = call i32 @grabstackstr(i64 %65)
  %67 = getelementptr inbounds %struct.worddest, %struct.worddest* %7, i32 0, i32 1
  %68 = load %struct.arglist*, %struct.arglist** %67, align 8
  %69 = call i32 @expandmeta(i32 %66, %struct.arglist* %68)
  br label %76

70:                                               ; preds = %59
  %71 = getelementptr inbounds %struct.worddest, %struct.worddest* %7, i32 0, i32 1
  %72 = load %struct.arglist*, %struct.arglist** %71, align 8
  %73 = load i64, i64* @expdest, align 8
  %74 = call i32 @grabstackstr(i64 %73)
  %75 = call i32 @appendarglist(%struct.arglist* %72, i32 %74)
  br label %76

76:                                               ; preds = %70, %64
  br label %77

77:                                               ; preds = %76, %52
  br label %78

78:                                               ; preds = %77, %47
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @EXP_SPLIT, align 4
  %81 = and i32 %79, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.arglist*, %struct.arglist** %5, align 8
  %85 = load i64, i64* @expdest, align 8
  %86 = call i32 @grabstackstr(i64 %85)
  %87 = call i32 @appendarglist(%struct.arglist* %84, i32 %86)
  br label %88

88:                                               ; preds = %35, %83, %78
  ret void
}

declare dso_local i32 @STARTSTACKSTR(i64) #1

declare dso_local i32 @argstr(i32, %struct.nodelist**, i32, %struct.worddest*) #1

declare dso_local i32 @STACKSTRNUL(i64) #1

declare dso_local i64 @stackblock(...) #1

declare dso_local i32 @STPUTC(i8 signext, i64) #1

declare dso_local i32 @expandmeta(i32, %struct.arglist*) #1

declare dso_local i32 @grabstackstr(i64) #1

declare dso_local i32 @appendarglist(%struct.arglist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
