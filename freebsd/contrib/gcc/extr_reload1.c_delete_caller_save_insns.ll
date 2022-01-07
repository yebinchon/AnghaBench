; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_delete_caller_save_insns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_delete_caller_save_insns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn_chain = type { %struct.insn_chain*, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { %struct.insn_chain* }

@reload_insn_chain = common dso_local global %struct.insn_chain* null, align 8
@unused_insn_chains = common dso_local global %struct.insn_chain* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @delete_caller_save_insns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_caller_save_insns() #0 {
  %1 = alloca %struct.insn_chain*, align 8
  %2 = alloca %struct.insn_chain*, align 8
  %3 = alloca i32, align 4
  %4 = load %struct.insn_chain*, %struct.insn_chain** @reload_insn_chain, align 8
  store %struct.insn_chain* %4, %struct.insn_chain** %1, align 8
  br label %5

5:                                                ; preds = %66, %0
  %6 = load %struct.insn_chain*, %struct.insn_chain** %1, align 8
  %7 = icmp ne %struct.insn_chain* %6, null
  br i1 %7, label %8, label %67

8:                                                ; preds = %5
  br label %9

9:                                                ; preds = %53, %8
  %10 = load %struct.insn_chain*, %struct.insn_chain** %1, align 8
  %11 = icmp ne %struct.insn_chain* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load %struct.insn_chain*, %struct.insn_chain** %1, align 8
  %14 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %12, %9
  %18 = phi i1 [ false, %9 ], [ %16, %12 ]
  br i1 %18, label %19, label %59

19:                                               ; preds = %17
  %20 = load %struct.insn_chain*, %struct.insn_chain** %1, align 8
  %21 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %20, i32 0, i32 0
  %22 = load %struct.insn_chain*, %struct.insn_chain** %21, align 8
  store %struct.insn_chain* %22, %struct.insn_chain** %2, align 8
  %23 = load %struct.insn_chain*, %struct.insn_chain** %1, align 8
  %24 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %3, align 4
  %26 = load %struct.insn_chain*, %struct.insn_chain** %1, align 8
  %27 = load %struct.insn_chain*, %struct.insn_chain** @reload_insn_chain, align 8
  %28 = icmp eq %struct.insn_chain* %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load %struct.insn_chain*, %struct.insn_chain** %2, align 8
  store %struct.insn_chain* %30, %struct.insn_chain** @reload_insn_chain, align 8
  br label %31

31:                                               ; preds = %29, %19
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @delete_insn(i32 %32)
  %34 = load %struct.insn_chain*, %struct.insn_chain** %2, align 8
  %35 = icmp ne %struct.insn_chain* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.insn_chain*, %struct.insn_chain** %1, align 8
  %38 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load %struct.insn_chain*, %struct.insn_chain** %2, align 8
  %41 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %40, i32 0, i32 1
  store %struct.TYPE_2__* %39, %struct.TYPE_2__** %41, align 8
  br label %42

42:                                               ; preds = %36, %31
  %43 = load %struct.insn_chain*, %struct.insn_chain** %1, align 8
  %44 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = icmp ne %struct.TYPE_2__* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.insn_chain*, %struct.insn_chain** %2, align 8
  %49 = load %struct.insn_chain*, %struct.insn_chain** %1, align 8
  %50 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store %struct.insn_chain* %48, %struct.insn_chain** %52, align 8
  br label %53

53:                                               ; preds = %47, %42
  %54 = load %struct.insn_chain*, %struct.insn_chain** @unused_insn_chains, align 8
  %55 = load %struct.insn_chain*, %struct.insn_chain** %1, align 8
  %56 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %55, i32 0, i32 0
  store %struct.insn_chain* %54, %struct.insn_chain** %56, align 8
  %57 = load %struct.insn_chain*, %struct.insn_chain** %1, align 8
  store %struct.insn_chain* %57, %struct.insn_chain** @unused_insn_chains, align 8
  %58 = load %struct.insn_chain*, %struct.insn_chain** %2, align 8
  store %struct.insn_chain* %58, %struct.insn_chain** %1, align 8
  br label %9

59:                                               ; preds = %17
  %60 = load %struct.insn_chain*, %struct.insn_chain** %1, align 8
  %61 = icmp ne %struct.insn_chain* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.insn_chain*, %struct.insn_chain** %1, align 8
  %64 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %63, i32 0, i32 0
  %65 = load %struct.insn_chain*, %struct.insn_chain** %64, align 8
  store %struct.insn_chain* %65, %struct.insn_chain** %1, align 8
  br label %66

66:                                               ; preds = %62, %59
  br label %5

67:                                               ; preds = %5
  ret void
}

declare dso_local i32 @delete_insn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
