; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cli-out.c_cli_redirect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cli-out.c_cli_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_out = type { i32 }
%struct.ui_file = type { i32 }
%struct.ui_out_data = type { %struct.ui_file*, %struct.ui_file* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cli_redirect(%struct.ui_out* %0, %struct.ui_file* %1) #0 {
  %3 = alloca %struct.ui_out*, align 8
  %4 = alloca %struct.ui_file*, align 8
  %5 = alloca %struct.ui_out_data*, align 8
  store %struct.ui_out* %0, %struct.ui_out** %3, align 8
  store %struct.ui_file* %1, %struct.ui_file** %4, align 8
  %6 = load %struct.ui_out*, %struct.ui_out** %3, align 8
  %7 = call %struct.ui_out_data* @ui_out_data(%struct.ui_out* %6)
  store %struct.ui_out_data* %7, %struct.ui_out_data** %5, align 8
  %8 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %9 = icmp ne %struct.ui_file* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.ui_out_data*, %struct.ui_out_data** %5, align 8
  %12 = getelementptr inbounds %struct.ui_out_data, %struct.ui_out_data* %11, i32 0, i32 1
  %13 = load %struct.ui_file*, %struct.ui_file** %12, align 8
  %14 = load %struct.ui_out_data*, %struct.ui_out_data** %5, align 8
  %15 = getelementptr inbounds %struct.ui_out_data, %struct.ui_out_data* %14, i32 0, i32 0
  store %struct.ui_file* %13, %struct.ui_file** %15, align 8
  %16 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %17 = load %struct.ui_out_data*, %struct.ui_out_data** %5, align 8
  %18 = getelementptr inbounds %struct.ui_out_data, %struct.ui_out_data* %17, i32 0, i32 1
  store %struct.ui_file* %16, %struct.ui_file** %18, align 8
  br label %33

19:                                               ; preds = %2
  %20 = load %struct.ui_out_data*, %struct.ui_out_data** %5, align 8
  %21 = getelementptr inbounds %struct.ui_out_data, %struct.ui_out_data* %20, i32 0, i32 0
  %22 = load %struct.ui_file*, %struct.ui_file** %21, align 8
  %23 = icmp ne %struct.ui_file* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.ui_out_data*, %struct.ui_out_data** %5, align 8
  %26 = getelementptr inbounds %struct.ui_out_data, %struct.ui_out_data* %25, i32 0, i32 0
  %27 = load %struct.ui_file*, %struct.ui_file** %26, align 8
  %28 = load %struct.ui_out_data*, %struct.ui_out_data** %5, align 8
  %29 = getelementptr inbounds %struct.ui_out_data, %struct.ui_out_data* %28, i32 0, i32 1
  store %struct.ui_file* %27, %struct.ui_file** %29, align 8
  %30 = load %struct.ui_out_data*, %struct.ui_out_data** %5, align 8
  %31 = getelementptr inbounds %struct.ui_out_data, %struct.ui_out_data* %30, i32 0, i32 0
  store %struct.ui_file* null, %struct.ui_file** %31, align 8
  br label %32

32:                                               ; preds = %24, %19
  br label %33

33:                                               ; preds = %32, %10
  ret i32 0
}

declare dso_local %struct.ui_out_data* @ui_out_data(%struct.ui_out*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
