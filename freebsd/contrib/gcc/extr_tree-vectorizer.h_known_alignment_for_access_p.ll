; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vectorizer.h_known_alignment_for_access_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vectorizer.h_known_alignment_for_access_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_reference = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.data_reference*)* @known_alignment_for_access_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @known_alignment_for_access_p(%struct.data_reference* %0) #0 {
  %2 = alloca %struct.data_reference*, align 8
  store %struct.data_reference* %0, %struct.data_reference** %2, align 8
  %3 = load %struct.data_reference*, %struct.data_reference** %2, align 8
  %4 = call i32 @DR_MISALIGNMENT(%struct.data_reference* %3)
  %5 = icmp ne i32 %4, -1
  %6 = zext i1 %5 to i32
  ret i32 %6
}

declare dso_local i32 @DR_MISALIGNMENT(%struct.data_reference*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
