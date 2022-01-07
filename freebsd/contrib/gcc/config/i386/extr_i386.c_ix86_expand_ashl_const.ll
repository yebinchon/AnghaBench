; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_ashl_const.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_ashl_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@DImode = common dso_local global i32 0, align 4
@optimize_size = common dso_local global i32 0, align 4
@ix86_cost = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @ix86_expand_ashl_const to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ix86_expand_ashl_const(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %21

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @DImode, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 (i32, i32, i32)* @gen_addsi3, i32 (i32, i32, i32)* @gen_adddi3
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 %15(i32 %16, i32 %17, i32 %18)
  %20 = call i32 @emit_insn(i32 %19)
  br label %67

21:                                               ; preds = %3
  %22 = load i32, i32* @optimize_size, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %54, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ix86_cost, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %25, %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ix86_cost, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sle i32 %29, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %50, %34
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @DImode, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 (i32, i32, i32)* @gen_addsi3, i32 (i32, i32, i32)* @gen_adddi3
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 %44(i32 %45, i32 %46, i32 %47)
  %49 = call i32 @emit_insn(i32 %48)
  br label %50

50:                                               ; preds = %39
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %35

53:                                               ; preds = %35
  br label %66

54:                                               ; preds = %24, %21
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @DImode, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 (i32, i32, i32)* @gen_ashlsi3, i32 (i32, i32, i32)* @gen_ashldi3
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @GEN_INT(i32 %62)
  %64 = call i32 %59(i32 %60, i32 %61, i32 %63)
  %65 = call i32 @emit_insn(i32 %64)
  br label %66

66:                                               ; preds = %54, %53
  br label %67

67:                                               ; preds = %66, %10
  ret void
}

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_addsi3(i32, i32, i32) #1

declare dso_local i32 @gen_adddi3(i32, i32, i32) #1

declare dso_local i32 @gen_ashlsi3(i32, i32, i32) #1

declare dso_local i32 @gen_ashldi3(i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
