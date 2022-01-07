; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-cp.c_ipcp_cval_set_cvalue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-cp.c_ipcp_cval_set_cvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipcp_formal = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.parameter_info = type { i32 }

@CONST_VALUE = common dso_local global i32 0, align 4
@CONST_VALUE_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipcp_formal*, %union.parameter_info*, i32)* @ipcp_cval_set_cvalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipcp_cval_set_cvalue(%struct.ipcp_formal* %0, %union.parameter_info* %1, i32 %2) #0 {
  %4 = alloca %struct.ipcp_formal*, align 8
  %5 = alloca %union.parameter_info*, align 8
  %6 = alloca i32, align 4
  store %struct.ipcp_formal* %0, %struct.ipcp_formal** %4, align 8
  store %union.parameter_info* %1, %union.parameter_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @CONST_VALUE, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @CONST_VALUE_REF, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %10, %3
  %15 = load %union.parameter_info*, %union.parameter_info** %5, align 8
  %16 = bitcast %union.parameter_info* %15 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ipcp_formal*, %struct.ipcp_formal** %4, align 8
  %19 = getelementptr inbounds %struct.ipcp_formal, %struct.ipcp_formal* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  br label %21

21:                                               ; preds = %14, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
