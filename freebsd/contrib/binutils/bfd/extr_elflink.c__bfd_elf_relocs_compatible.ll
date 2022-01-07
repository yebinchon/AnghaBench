; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_relocs_compatible.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_relocs_compatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_backend_data = type { i64, i64 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_elf_relocs_compatible(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.elf_backend_data*, align 8
  %7 = alloca %struct.elf_backend_data*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @TRUE, align 4
  store i32 %12, i32* %3, align 4
  br label %36

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = call %struct.elf_backend_data* @xvec_get_elf_backend_data(i32* %14)
  store %struct.elf_backend_data* %15, %struct.elf_backend_data** %7, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call %struct.elf_backend_data* @xvec_get_elf_backend_data(i32* %16)
  store %struct.elf_backend_data* %17, %struct.elf_backend_data** %6, align 8
  %18 = load %struct.elf_backend_data*, %struct.elf_backend_data** %7, align 8
  %19 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.elf_backend_data*, %struct.elf_backend_data** %6, align 8
  %22 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %3, align 4
  br label %36

27:                                               ; preds = %13
  %28 = load %struct.elf_backend_data*, %struct.elf_backend_data** %7, align 8
  %29 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.elf_backend_data*, %struct.elf_backend_data** %6, align 8
  %32 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %27, %25, %11
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.elf_backend_data* @xvec_get_elf_backend_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
