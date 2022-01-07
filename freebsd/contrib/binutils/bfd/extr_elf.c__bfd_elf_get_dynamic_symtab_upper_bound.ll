; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c__bfd_elf_get_dynamic_symtab_upper_bound.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c__bfd_elf_get_dynamic_symtab_upper_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@bfd_error_invalid_operation = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_bfd_elf_get_dynamic_symtab_upper_bound(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.TYPE_8__* @elf_tdata(i32* %7)
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %6, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @elf_dynsymtab(i32* %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @bfd_error_invalid_operation, align 4
  %15 = call i32 @bfd_set_error(i32 %14)
  store i64 -1, i64* %2, align 8
  br label %37

16:                                               ; preds = %1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call %struct.TYPE_7__* @get_elf_backend_data(i32* %20)
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sdiv i64 %19, %25
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = add nsw i64 %27, 1
  %29 = mul i64 %28, 8
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %4, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %16
  %33 = load i64, i64* %5, align 8
  %34 = sub i64 %33, 8
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %32, %16
  %36 = load i64, i64* %5, align 8
  store i64 %36, i64* %2, align 8
  br label %37

37:                                               ; preds = %35, %13
  %38 = load i64, i64* %2, align 8
  ret i64 %38
}

declare dso_local %struct.TYPE_8__* @elf_tdata(i32*) #1

declare dso_local i64 @elf_dynsymtab(i32*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local %struct.TYPE_7__* @get_elf_backend_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
