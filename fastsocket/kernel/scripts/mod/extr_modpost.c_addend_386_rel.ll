; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_addend_386_rel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_addend_386_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_info = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@ET_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_info*, i32*, %struct.TYPE_6__*)* @addend_386_rel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addend_386_rel(%struct.elf_info* %0, i32* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca %struct.elf_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.elf_info* %0, %struct.elf_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ELF_R_TYPE(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = call i32* @reloc_location(%struct.elf_info* %13, i32* %14, %struct.TYPE_6__* %15)
  store i32* %16, i32** %8, align 8
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %47 [
    i32 129, label %18
    i32 128, label %24
  ]

18:                                               ; preds = %3
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @TO_NATIVE(i32 %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  br label %47

24:                                               ; preds = %3
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @TO_NATIVE(i32 %26)
  %28 = add nsw i32 %27, 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %32 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ET_EXEC, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %24
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %38, %24
  br label %47

47:                                               ; preds = %3, %46, %18
  ret i32 0
}

declare dso_local i32 @ELF_R_TYPE(i32) #1

declare dso_local i32* @reloc_location(%struct.elf_info*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @TO_NATIVE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
