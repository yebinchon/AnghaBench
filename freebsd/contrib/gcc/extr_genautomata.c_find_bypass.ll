; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_find_bypass.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_find_bypass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bypass_decl = type { %struct.insn_reserv_decl*, %struct.bypass_decl* }
%struct.insn_reserv_decl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bypass_decl* (%struct.bypass_decl*, %struct.insn_reserv_decl*)* @find_bypass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bypass_decl* @find_bypass(%struct.bypass_decl* %0, %struct.insn_reserv_decl* %1) #0 {
  %3 = alloca %struct.bypass_decl*, align 8
  %4 = alloca %struct.insn_reserv_decl*, align 8
  %5 = alloca %struct.bypass_decl*, align 8
  store %struct.bypass_decl* %0, %struct.bypass_decl** %3, align 8
  store %struct.insn_reserv_decl* %1, %struct.insn_reserv_decl** %4, align 8
  %6 = load %struct.bypass_decl*, %struct.bypass_decl** %3, align 8
  store %struct.bypass_decl* %6, %struct.bypass_decl** %5, align 8
  br label %7

7:                                                ; preds = %18, %2
  %8 = load %struct.bypass_decl*, %struct.bypass_decl** %5, align 8
  %9 = icmp ne %struct.bypass_decl* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = load %struct.bypass_decl*, %struct.bypass_decl** %5, align 8
  %12 = getelementptr inbounds %struct.bypass_decl, %struct.bypass_decl* %11, i32 0, i32 0
  %13 = load %struct.insn_reserv_decl*, %struct.insn_reserv_decl** %12, align 8
  %14 = load %struct.insn_reserv_decl*, %struct.insn_reserv_decl** %4, align 8
  %15 = icmp eq %struct.insn_reserv_decl* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %22

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.bypass_decl*, %struct.bypass_decl** %5, align 8
  %20 = getelementptr inbounds %struct.bypass_decl, %struct.bypass_decl* %19, i32 0, i32 1
  %21 = load %struct.bypass_decl*, %struct.bypass_decl** %20, align 8
  store %struct.bypass_decl* %21, %struct.bypass_decl** %5, align 8
  br label %7

22:                                               ; preds = %16, %7
  %23 = load %struct.bypass_decl*, %struct.bypass_decl** %5, align 8
  ret %struct.bypass_decl* %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
