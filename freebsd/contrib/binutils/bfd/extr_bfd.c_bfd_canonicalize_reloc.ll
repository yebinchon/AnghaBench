; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bfd.c_bfd_canonicalize_reloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bfd.c_bfd_canonicalize_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@bfd_object = common dso_local global i64 0, align 8
@bfd_error_invalid_operation = common dso_local global i32 0, align 4
@_bfd_canonicalize_reloc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bfd_canonicalize_reloc(%struct.TYPE_5__* %0, i32 %1, i32** %2, i32** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32** %3, i32*** %9, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @bfd_object, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @bfd_error_invalid_operation, align 4
  %17 = call i32 @bfd_set_error(i32 %16)
  store i64 -1, i64* %5, align 8
  br label %27

18:                                               ; preds = %4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = load i32, i32* @_bfd_canonicalize_reloc, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32**, i32*** %8, align 8
  %24 = load i32**, i32*** %9, align 8
  %25 = bitcast i32** %24 to %struct.TYPE_5__*
  %26 = call i64 @BFD_SEND(%struct.TYPE_5__* %19, i32 %20, %struct.TYPE_5__* %25)
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %18, %15
  %28 = load i64, i64* %5, align 8
  ret i64 %28
}

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i64 @BFD_SEND(%struct.TYPE_5__*, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
