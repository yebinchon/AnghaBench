; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_reloc_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_reloc_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@elf_header = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @get_reloc_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_reloc_size(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 0), align 4
  switch i32 %4, label %12 [
    i32 132, label %5
    i32 131, label %5
    i32 130, label %5
    i32 129, label %5
  ]

5:                                                ; preds = %1, %1, %1, %1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ELF32_R_TYPE(i32 %8)
  switch i32 %9, label %11 [
    i32 128, label %10
  ]

10:                                               ; preds = %5
  store i32 2, i32* %2, align 4
  br label %13

11:                                               ; preds = %5
  store i32 4, i32* %2, align 4
  br label %13

12:                                               ; preds = %1
  store i32 4, i32* %2, align 4
  br label %13

13:                                               ; preds = %12, %11, %10
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

declare dso_local i32 @ELF32_R_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
