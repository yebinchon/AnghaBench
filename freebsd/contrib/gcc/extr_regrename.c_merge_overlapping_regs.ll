; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regrename.c_merge_overlapping_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regrename.c_merge_overlapping_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.du_chain = type { i64, %struct.du_chain* }

@REG_DEAD = common dso_local global i32 0, align 4
@note_sets = common dso_local global i32 0, align 4
@REG_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32*, %struct.du_chain*)* @merge_overlapping_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_overlapping_regs(%struct.TYPE_8__* %0, i32* %1, %struct.du_chain* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.du_chain*, align 8
  %7 = alloca %struct.du_chain*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.du_chain* %2, %struct.du_chain** %6, align 8
  %10 = load %struct.du_chain*, %struct.du_chain** %6, align 8
  store %struct.du_chain* %10, %struct.du_chain** %7, align 8
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @REG_SET_TO_HARD_REG_SET(i32 %11, i32 %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = call i64 @BB_HEAD(%struct.TYPE_8__* %19)
  store i64 %20, i64* %8, align 8
  br label %21

21:                                               ; preds = %77, %3
  %22 = load %struct.du_chain*, %struct.du_chain** %7, align 8
  %23 = icmp ne %struct.du_chain* %22, null
  br i1 %23, label %24, label %81

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %58, %24
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.du_chain*, %struct.du_chain** %7, align 8
  %28 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %25
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @INSN_P(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %31
  %36 = load i32, i32* @REG_DEAD, align 4
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @REG_NOTES(i64 %37)
  %39 = call i32 @clear_dead_regs(i32* %9, i32 %36, i32 %38)
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @PATTERN(i64 %40)
  %42 = load i32, i32* @note_sets, align 4
  %43 = bitcast i32* %9 to i8*
  %44 = call i32 @note_stores(i32 %41, i32 %42, i8* %43)
  %45 = load %struct.du_chain*, %struct.du_chain** %7, align 8
  %46 = load %struct.du_chain*, %struct.du_chain** %6, align 8
  %47 = icmp ne %struct.du_chain* %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %35
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @IOR_HARD_REG_SET(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %35
  %54 = load i32, i32* @REG_UNUSED, align 4
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @REG_NOTES(i64 %55)
  %57 = call i32 @clear_dead_regs(i32* %9, i32 %54, i32 %56)
  br label %58

58:                                               ; preds = %53, %31
  %59 = load i64, i64* %8, align 8
  %60 = call i64 @NEXT_INSN(i64 %59)
  store i64 %60, i64* %8, align 8
  br label %25

61:                                               ; preds = %25
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @IOR_HARD_REG_SET(i32 %63, i32 %64)
  %66 = load %struct.du_chain*, %struct.du_chain** %7, align 8
  %67 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %66, i32 0, i32 1
  %68 = load %struct.du_chain*, %struct.du_chain** %67, align 8
  %69 = icmp ne %struct.du_chain* %68, null
  br i1 %69, label %77, label %70

70:                                               ; preds = %61
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @PATTERN(i64 %71)
  %73 = load i32, i32* @note_sets, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = bitcast i32* %74 to i8*
  %76 = call i32 @note_stores(i32 %72, i32 %73, i8* %75)
  br label %77

77:                                               ; preds = %70, %61
  %78 = load %struct.du_chain*, %struct.du_chain** %7, align 8
  %79 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %78, i32 0, i32 1
  %80 = load %struct.du_chain*, %struct.du_chain** %79, align 8
  store %struct.du_chain* %80, %struct.du_chain** %7, align 8
  br label %21

81:                                               ; preds = %21
  ret void
}

declare dso_local i32 @REG_SET_TO_HARD_REG_SET(i32, i32) #1

declare dso_local i64 @BB_HEAD(%struct.TYPE_8__*) #1

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i32 @clear_dead_regs(i32*, i32, i32) #1

declare dso_local i32 @REG_NOTES(i64) #1

declare dso_local i32 @note_stores(i32, i32, i8*) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i32 @IOR_HARD_REG_SET(i32, i32) #1

declare dso_local i64 @NEXT_INSN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
