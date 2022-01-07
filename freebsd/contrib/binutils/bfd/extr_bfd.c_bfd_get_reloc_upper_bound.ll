; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bfd.c_bfd_get_reloc_upper_bound.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bfd.c_bfd_get_reloc_upper_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@bfd_object = common dso_local global i64 0, align 8
@bfd_error_invalid_operation = common dso_local global i32 0, align 4
@_get_reloc_upper_bound = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bfd_get_reloc_upper_bound(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @bfd_object, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @bfd_error_invalid_operation, align 4
  %13 = call i32 @bfd_set_error(i32 %12)
  store i64 -1, i64* %3, align 8
  br label %22

14:                                               ; preds = %2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = load i32, i32* @_get_reloc_upper_bound, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to %struct.TYPE_5__*
  %21 = call i64 @BFD_SEND(%struct.TYPE_5__* %15, i32 %16, %struct.TYPE_5__* %20)
  store i64 %21, i64* %3, align 8
  br label %22

22:                                               ; preds = %14, %11
  %23 = load i64, i64* %3, align 8
  ret i64 %23
}

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i64 @BFD_SEND(%struct.TYPE_5__*, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
