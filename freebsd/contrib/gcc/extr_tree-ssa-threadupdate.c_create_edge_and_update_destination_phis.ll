; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-threadupdate.c_create_edge_and_update_destination_phis.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-threadupdate.c_create_edge_and_update_destination_phis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redirection_data = type { %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@EDGE_FALLTHRU = common dso_local global i32 0, align 4
@REG_BR_PROB_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.redirection_data*)* @create_edge_and_update_destination_phis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_edge_and_update_destination_phis(%struct.redirection_data* %0) #0 {
  %2 = alloca %struct.redirection_data*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.redirection_data* %0, %struct.redirection_data** %2, align 8
  %6 = load %struct.redirection_data*, %struct.redirection_data** %2, align 8
  %7 = getelementptr inbounds %struct.redirection_data, %struct.redirection_data* %6, i32 0, i32 1
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = load %struct.redirection_data*, %struct.redirection_data** %2, align 8
  %10 = getelementptr inbounds %struct.redirection_data, %struct.redirection_data* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @EDGE_FALLTHRU, align 4
  %15 = call %struct.TYPE_7__* @make_edge(%struct.TYPE_8__* %8, i32 %13, i32 %14)
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %3, align 8
  %16 = load i32, i32* @REG_BR_PROB_BASE, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.redirection_data*, %struct.redirection_data** %2, align 8
  %20 = getelementptr inbounds %struct.redirection_data, %struct.redirection_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @phi_nodes(i32 %28)
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %45, %1
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load %struct.redirection_data*, %struct.redirection_data** %2, align 8
  %35 = getelementptr inbounds %struct.redirection_data, %struct.redirection_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %5, align 4
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @PHI_ARG_DEF(i64 %40, i32 %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = call i32 @add_phi_arg(i64 %39, i32 %42, %struct.TYPE_7__* %43)
  br label %45

45:                                               ; preds = %33
  %46 = load i64, i64* %4, align 8
  %47 = call i64 @PHI_CHAIN(i64 %46)
  store i64 %47, i64* %4, align 8
  br label %30

48:                                               ; preds = %30
  ret void
}

declare dso_local %struct.TYPE_7__* @make_edge(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @phi_nodes(i32) #1

declare dso_local i32 @add_phi_arg(i64, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @PHI_ARG_DEF(i64, i32) #1

declare dso_local i64 @PHI_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
