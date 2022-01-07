; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_opncls.c_bfd_make_writable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_opncls.c_bfd_make_writable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, %struct.bfd_in_memory* }
%struct.bfd_in_memory = type { i64, i64 }

@no_direction = common dso_local global i64 0, align 8
@bfd_error_invalid_operation = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@BFD_IN_MEMORY = common dso_local global i32 0, align 4
@write_direction = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_make_writable(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.bfd_in_memory*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @no_direction, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @bfd_error_invalid_operation, align 4
  %12 = call i32 @bfd_set_error(i32 %11)
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %2, align 4
  br label %34

14:                                               ; preds = %1
  %15 = call %struct.bfd_in_memory* @bfd_malloc(i32 16)
  store %struct.bfd_in_memory* %15, %struct.bfd_in_memory** %4, align 8
  %16 = load %struct.bfd_in_memory*, %struct.bfd_in_memory** %4, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  store %struct.bfd_in_memory* %16, %struct.bfd_in_memory** %18, align 8
  %19 = load %struct.bfd_in_memory*, %struct.bfd_in_memory** %4, align 8
  %20 = getelementptr inbounds %struct.bfd_in_memory, %struct.bfd_in_memory* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.bfd_in_memory*, %struct.bfd_in_memory** %4, align 8
  %22 = getelementptr inbounds %struct.bfd_in_memory, %struct.bfd_in_memory* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @BFD_IN_MEMORY, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load i64, i64* @write_direction, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %14, %10
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local %struct.bfd_in_memory* @bfd_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
