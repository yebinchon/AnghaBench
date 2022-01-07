; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_tp_main.c_params_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_tp_main.c_params_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.params*)* @params_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @params_fini(%struct.params* %0) #0 {
  %2 = alloca %struct.params*, align 8
  store %struct.params* %0, %struct.params** %2, align 8
  %3 = load %struct.params*, %struct.params** %2, align 8
  %4 = getelementptr inbounds %struct.params, %struct.params* %3, i32 0, i32 3
  %5 = call i32 @atf_map_fini(i32* %4)
  %6 = load %struct.params*, %struct.params** %2, align 8
  %7 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 2
  %8 = call i32 @atf_fs_path_fini(i32* %7)
  %9 = load %struct.params*, %struct.params** %2, align 8
  %10 = getelementptr inbounds %struct.params, %struct.params* %9, i32 0, i32 1
  %11 = call i32 @atf_fs_path_fini(i32* %10)
  %12 = load %struct.params*, %struct.params** %2, align 8
  %13 = getelementptr inbounds %struct.params, %struct.params* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.params*, %struct.params** %2, align 8
  %18 = getelementptr inbounds %struct.params, %struct.params* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @free(i32* %19)
  br label %21

21:                                               ; preds = %16, %1
  ret void
}

declare dso_local i32 @atf_map_fini(i32*) #1

declare dso_local i32 @atf_fs_path_fini(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
