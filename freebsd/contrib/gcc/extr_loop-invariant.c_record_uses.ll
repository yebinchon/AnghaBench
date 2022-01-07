; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-invariant.c_record_uses.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-invariant.c_record_uses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.df_ref = type { %struct.df_ref* }
%struct.invariant = type { i32 }
%struct.TYPE_2__ = type { %struct.df_ref* }

@df = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @record_uses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_uses(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.df_ref*, align 8
  %4 = alloca %struct.invariant*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @df, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.TYPE_2__* @DF_INSN_GET(i32 %5, i32 %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.df_ref*, %struct.df_ref** %8, align 8
  store %struct.df_ref* %9, %struct.df_ref** %3, align 8
  br label %10

10:                                               ; preds = %28, %1
  %11 = load %struct.df_ref*, %struct.df_ref** %3, align 8
  %12 = icmp ne %struct.df_ref* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %10
  %14 = load %struct.df_ref*, %struct.df_ref** %3, align 8
  %15 = call %struct.invariant* @invariant_for_use(%struct.df_ref* %14)
  store %struct.invariant* %15, %struct.invariant** %4, align 8
  %16 = load %struct.invariant*, %struct.invariant** %4, align 8
  %17 = icmp ne %struct.invariant* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load %struct.invariant*, %struct.invariant** %4, align 8
  %20 = getelementptr inbounds %struct.invariant, %struct.invariant* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.df_ref*, %struct.df_ref** %3, align 8
  %23 = call i32 @DF_REF_LOC(%struct.df_ref* %22)
  %24 = load %struct.df_ref*, %struct.df_ref** %3, align 8
  %25 = call i32 @DF_REF_INSN(%struct.df_ref* %24)
  %26 = call i32 @record_use(i32 %21, i32 %23, i32 %25)
  br label %27

27:                                               ; preds = %18, %13
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.df_ref*, %struct.df_ref** %3, align 8
  %30 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %29, i32 0, i32 0
  %31 = load %struct.df_ref*, %struct.df_ref** %30, align 8
  store %struct.df_ref* %31, %struct.df_ref** %3, align 8
  br label %10

32:                                               ; preds = %10
  ret void
}

declare dso_local %struct.TYPE_2__* @DF_INSN_GET(i32, i32) #1

declare dso_local %struct.invariant* @invariant_for_use(%struct.df_ref*) #1

declare dso_local i32 @record_use(i32, i32, i32) #1

declare dso_local i32 @DF_REF_LOC(%struct.df_ref*) #1

declare dso_local i32 @DF_REF_INSN(%struct.df_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
