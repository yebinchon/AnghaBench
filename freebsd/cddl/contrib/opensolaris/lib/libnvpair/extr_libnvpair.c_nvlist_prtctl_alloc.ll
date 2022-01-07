; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libnvpair/extr_libnvpair.c_nvlist_prtctl_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libnvpair/extr_libnvpair.c_nvlist_prtctl_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvlist_prtctl = type { i32 }
%struct.nvlist_printops = type { i32 }

@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nvlist_prtctl* @nvlist_prtctl_alloc() #0 {
  %1 = alloca %struct.nvlist_prtctl*, align 8
  %2 = alloca %struct.nvlist_prtctl*, align 8
  %3 = alloca %struct.nvlist_printops*, align 8
  %4 = call %struct.nvlist_prtctl* @malloc(i32 4)
  store %struct.nvlist_prtctl* %4, %struct.nvlist_prtctl** %2, align 8
  %5 = icmp eq %struct.nvlist_prtctl* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store %struct.nvlist_prtctl* null, %struct.nvlist_prtctl** %1, align 8
  br label %19

7:                                                ; preds = %0
  %8 = call %struct.nvlist_printops* @calloc(i32 1, i32 4)
  store %struct.nvlist_printops* %8, %struct.nvlist_printops** %3, align 8
  %9 = icmp eq %struct.nvlist_printops* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load %struct.nvlist_prtctl*, %struct.nvlist_prtctl** %2, align 8
  %12 = call i32 @free(%struct.nvlist_prtctl* %11)
  store %struct.nvlist_prtctl* null, %struct.nvlist_prtctl** %1, align 8
  br label %19

13:                                               ; preds = %7
  %14 = load i32, i32* @stdout, align 4
  %15 = load %struct.nvlist_prtctl*, %struct.nvlist_prtctl** %2, align 8
  %16 = load %struct.nvlist_printops*, %struct.nvlist_printops** %3, align 8
  %17 = call i32 @prtctl_defaults(i32 %14, %struct.nvlist_prtctl* %15, %struct.nvlist_printops* %16)
  %18 = load %struct.nvlist_prtctl*, %struct.nvlist_prtctl** %2, align 8
  store %struct.nvlist_prtctl* %18, %struct.nvlist_prtctl** %1, align 8
  br label %19

19:                                               ; preds = %13, %10, %6
  %20 = load %struct.nvlist_prtctl*, %struct.nvlist_prtctl** %1, align 8
  ret %struct.nvlist_prtctl* %20
}

declare dso_local %struct.nvlist_prtctl* @malloc(i32) #1

declare dso_local %struct.nvlist_printops* @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.nvlist_prtctl*) #1

declare dso_local i32 @prtctl_defaults(i32, %struct.nvlist_prtctl*, %struct.nvlist_printops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
