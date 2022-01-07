; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_reorg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_reorg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.constant_pool = type { i32 }

@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@TARGET_CPU_ZARCH = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @s390_reorg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s390_reorg() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.constant_pool*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %6 = call i32 (...) @split_all_insns_noflow()
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  br label %11

11:                                               ; preds = %40, %0
  store %struct.constant_pool* null, %struct.constant_pool** %2, align 8
  %12 = load i32, i32* %1, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = call %struct.constant_pool* (...) @s390_mainpool_start()
  store %struct.constant_pool* %15, %struct.constant_pool** %2, align 8
  %16 = load %struct.constant_pool*, %struct.constant_pool** %2, align 8
  %17 = icmp ne %struct.constant_pool* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 1, i32* %1, align 4
  br label %19

19:                                               ; preds = %18, %14
  br label %20

20:                                               ; preds = %19, %11
  %21 = load i32, i32* %1, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call %struct.constant_pool* (...) @s390_chunkify_start()
  store %struct.constant_pool* %24, %struct.constant_pool** %2, align 8
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i64, i64* @TARGET_CPU_ZARCH, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %25
  %29 = call i64 (...) @s390_split_branches()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i32, i32* %1, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.constant_pool*, %struct.constant_pool** %2, align 8
  %36 = call i32 @s390_chunkify_cancel(%struct.constant_pool* %35)
  br label %40

37:                                               ; preds = %31
  %38 = load %struct.constant_pool*, %struct.constant_pool** %2, align 8
  %39 = call i32 @s390_mainpool_cancel(%struct.constant_pool* %38)
  br label %40

40:                                               ; preds = %37, %34
  br label %11

41:                                               ; preds = %28, %25
  %42 = load i32, i32* %1, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.constant_pool*, %struct.constant_pool** %2, align 8
  %46 = call i32 @s390_chunkify_finish(%struct.constant_pool* %45)
  br label %50

47:                                               ; preds = %41
  %48 = load %struct.constant_pool*, %struct.constant_pool** %2, align 8
  %49 = call i32 @s390_mainpool_finish(%struct.constant_pool* %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %50
  %56 = load i64, i64* @TARGET_CPU_ZARCH, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %89

58:                                               ; preds = %55
  %59 = call i64 (...) @get_insns()
  store i64 %59, i64* %3, align 8
  br label %60

60:                                               ; preds = %85, %58
  %61 = load i64, i64* %3, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %88

63:                                               ; preds = %60
  %64 = load i64, i64* %3, align 8
  %65 = call i64 @s390_execute_label(i64 %64)
  store i64 %65, i64* %4, align 8
  %66 = load i64, i64* %4, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  br label %85

69:                                               ; preds = %63
  %70 = load i64, i64* %4, align 8
  %71 = load i64, i64* @const0_rtx, align 8
  %72 = icmp ne i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @gcc_assert(i32 %73)
  %75 = load i64, i64* %4, align 8
  %76 = call i32 @XEXP(i64 %75, i32 0)
  %77 = call i64 @emit_label(i32 %76)
  store i64 %77, i64* %5, align 8
  %78 = load i64, i64* %5, align 8
  %79 = call i32 @INSN_ADDRESSES_NEW(i64 %78, i32 -1)
  %80 = load i64, i64* %3, align 8
  %81 = call i32 @s390_execute_target(i64 %80)
  %82 = call i64 @emit_insn(i32 %81)
  store i64 %82, i64* %5, align 8
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @INSN_ADDRESSES_NEW(i64 %83, i32 -1)
  br label %85

85:                                               ; preds = %69, %68
  %86 = load i64, i64* %3, align 8
  %87 = call i64 @NEXT_INSN(i64 %86)
  store i64 %87, i64* %3, align 8
  br label %60

88:                                               ; preds = %60
  br label %89

89:                                               ; preds = %88, %55
  %90 = call i32 (...) @s390_optimize_prologue()
  ret void
}

declare dso_local i32 @split_all_insns_noflow(...) #1

declare dso_local %struct.constant_pool* @s390_mainpool_start(...) #1

declare dso_local %struct.constant_pool* @s390_chunkify_start(...) #1

declare dso_local i64 @s390_split_branches(...) #1

declare dso_local i32 @s390_chunkify_cancel(%struct.constant_pool*) #1

declare dso_local i32 @s390_mainpool_cancel(%struct.constant_pool*) #1

declare dso_local i32 @s390_chunkify_finish(%struct.constant_pool*) #1

declare dso_local i32 @s390_mainpool_finish(%struct.constant_pool*) #1

declare dso_local i64 @get_insns(...) #1

declare dso_local i64 @s390_execute_label(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @emit_label(i32) #1

declare dso_local i32 @XEXP(i64, i32) #1

declare dso_local i32 @INSN_ADDRESSES_NEW(i64, i32) #1

declare dso_local i64 @emit_insn(i32) #1

declare dso_local i32 @s390_execute_target(i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i32 @s390_optimize_prologue(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
