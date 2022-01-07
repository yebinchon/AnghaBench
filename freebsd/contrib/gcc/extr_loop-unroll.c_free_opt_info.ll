; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unroll.c_free_opt_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unroll.c_free_opt_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opt_info = type { i64, i64 }

@release_var_copies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.opt_info*)* @free_opt_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_opt_info(%struct.opt_info* %0) #0 {
  %2 = alloca %struct.opt_info*, align 8
  store %struct.opt_info* %0, %struct.opt_info** %2, align 8
  %3 = load %struct.opt_info*, %struct.opt_info** %2, align 8
  %4 = getelementptr inbounds %struct.opt_info, %struct.opt_info* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.opt_info*, %struct.opt_info** %2, align 8
  %9 = getelementptr inbounds %struct.opt_info, %struct.opt_info* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @htab_delete(i64 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.opt_info*, %struct.opt_info** %2, align 8
  %14 = getelementptr inbounds %struct.opt_info, %struct.opt_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load %struct.opt_info*, %struct.opt_info** %2, align 8
  %19 = getelementptr inbounds %struct.opt_info, %struct.opt_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @release_var_copies, align 4
  %22 = call i32 @htab_traverse(i64 %20, i32 %21, i32* null)
  %23 = load %struct.opt_info*, %struct.opt_info** %2, align 8
  %24 = getelementptr inbounds %struct.opt_info, %struct.opt_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @htab_delete(i64 %25)
  br label %27

27:                                               ; preds = %17, %12
  %28 = load %struct.opt_info*, %struct.opt_info** %2, align 8
  %29 = call i32 @free(%struct.opt_info* %28)
  ret void
}

declare dso_local i32 @htab_delete(i64) #1

declare dso_local i32 @htab_traverse(i64, i32, i32*) #1

declare dso_local i32 @free(%struct.opt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
