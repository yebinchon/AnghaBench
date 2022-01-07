; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_corelow.c_gdb_check_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_corelow.c_gdb_check_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.core_fns = type { i64 (i32*)*, %struct.core_fns* }

@core_file_fns = common dso_local global %struct.core_fns* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @gdb_check_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdb_check_format(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.core_fns*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load %struct.core_fns*, %struct.core_fns** @core_file_fns, align 8
  store %struct.core_fns* %5, %struct.core_fns** %4, align 8
  br label %6

6:                                                ; preds = %18, %1
  %7 = load %struct.core_fns*, %struct.core_fns** %4, align 8
  %8 = icmp ne %struct.core_fns* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = load %struct.core_fns*, %struct.core_fns** %4, align 8
  %11 = getelementptr inbounds %struct.core_fns, %struct.core_fns* %10, i32 0, i32 0
  %12 = load i64 (i32*)*, i64 (i32*)** %11, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 %12(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %23

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.core_fns*, %struct.core_fns** %4, align 8
  %20 = getelementptr inbounds %struct.core_fns, %struct.core_fns* %19, i32 0, i32 1
  %21 = load %struct.core_fns*, %struct.core_fns** %20, align 8
  store %struct.core_fns* %21, %struct.core_fns** %4, align 8
  br label %6

22:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %16
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
