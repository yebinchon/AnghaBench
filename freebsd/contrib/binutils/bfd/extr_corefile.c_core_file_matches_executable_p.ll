; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_corefile.c_core_file_matches_executable_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_corefile.c_core_file_matches_executable_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@bfd_core = common dso_local global i64 0, align 8
@bfd_object = common dso_local global i64 0, align 8
@bfd_error_wrong_format = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@_core_file_matches_executable_p = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core_file_matches_executable_p(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @bfd_core, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @bfd_object, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11, %2
  %18 = load i32, i32* @bfd_error_wrong_format, align 4
  %19 = call i32 @bfd_set_error(i32 %18)
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %3, align 4
  br label %27

21:                                               ; preds = %11
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = load i32, i32* @_core_file_matches_executable_p, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = call i32 @BFD_SEND(%struct.TYPE_6__* %22, i32 %23, %struct.TYPE_6__* %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %21, %17
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32 @BFD_SEND(%struct.TYPE_6__*, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
