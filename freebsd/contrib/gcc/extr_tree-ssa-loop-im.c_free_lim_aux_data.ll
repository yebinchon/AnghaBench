; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-im.c_free_lim_aux_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-im.c_free_lim_aux_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lim_aux_data = type { %struct.lim_aux_data*, %struct.lim_aux_data* }
%struct.depend = type { %struct.depend*, %struct.depend* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lim_aux_data*)* @free_lim_aux_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_lim_aux_data(%struct.lim_aux_data* %0) #0 {
  %2 = alloca %struct.lim_aux_data*, align 8
  %3 = alloca %struct.depend*, align 8
  %4 = alloca %struct.depend*, align 8
  store %struct.lim_aux_data* %0, %struct.lim_aux_data** %2, align 8
  %5 = load %struct.lim_aux_data*, %struct.lim_aux_data** %2, align 8
  %6 = getelementptr inbounds %struct.lim_aux_data, %struct.lim_aux_data* %5, i32 0, i32 1
  %7 = load %struct.lim_aux_data*, %struct.lim_aux_data** %6, align 8
  %8 = bitcast %struct.lim_aux_data* %7 to %struct.depend*
  store %struct.depend* %8, %struct.depend** %3, align 8
  br label %9

9:                                                ; preds = %19, %1
  %10 = load %struct.depend*, %struct.depend** %3, align 8
  %11 = icmp ne %struct.depend* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load %struct.depend*, %struct.depend** %3, align 8
  %14 = getelementptr inbounds %struct.depend, %struct.depend* %13, i32 0, i32 0
  %15 = load %struct.depend*, %struct.depend** %14, align 8
  store %struct.depend* %15, %struct.depend** %4, align 8
  %16 = load %struct.depend*, %struct.depend** %3, align 8
  %17 = bitcast %struct.depend* %16 to %struct.lim_aux_data*
  %18 = call i32 @free(%struct.lim_aux_data* %17)
  br label %19

19:                                               ; preds = %12
  %20 = load %struct.depend*, %struct.depend** %4, align 8
  store %struct.depend* %20, %struct.depend** %3, align 8
  br label %9

21:                                               ; preds = %9
  %22 = load %struct.lim_aux_data*, %struct.lim_aux_data** %2, align 8
  %23 = call i32 @free(%struct.lim_aux_data* %22)
  ret void
}

declare dso_local i32 @free(%struct.lim_aux_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
