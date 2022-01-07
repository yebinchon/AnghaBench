; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_section_ignore_discarded_relocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_section_ignore_discarded_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.elf_backend_data = type { i64 (%struct.TYPE_4__*)* }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @elf_section_ignore_discarded_relocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_section_ignore_discarded_relocs(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.elf_backend_data*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %10 [
    i32 128, label %8
    i32 129, label %8
  ]

8:                                                ; preds = %1, %1
  %9 = load i32, i32* @TRUE, align 4
  store i32 %9, i32* %2, align 4
  br label %31

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %10
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.elf_backend_data* @get_elf_backend_data(i32 %14)
  store %struct.elf_backend_data* %15, %struct.elf_backend_data** %4, align 8
  %16 = load %struct.elf_backend_data*, %struct.elf_backend_data** %4, align 8
  %17 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %16, i32 0, i32 0
  %18 = load i64 (%struct.TYPE_4__*)*, i64 (%struct.TYPE_4__*)** %17, align 8
  %19 = icmp ne i64 (%struct.TYPE_4__*)* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %11
  %21 = load %struct.elf_backend_data*, %struct.elf_backend_data** %4, align 8
  %22 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %21, i32 0, i32 0
  %23 = load i64 (%struct.TYPE_4__*)*, i64 (%struct.TYPE_4__*)** %22, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = call i64 %23(%struct.TYPE_4__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %2, align 4
  br label %31

29:                                               ; preds = %20, %11
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %27, %8
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
