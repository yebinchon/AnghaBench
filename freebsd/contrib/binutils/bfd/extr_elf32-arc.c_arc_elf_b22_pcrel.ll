; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arc.c_arc_elf_b22_pcrel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arc.c_arc_elf_b22_pcrel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i32*, i8*, i32*, i32*, i8**)* @arc_elf_b22_pcrel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arc_elf_b22_pcrel(i32* %0, %struct.TYPE_4__* %1, i32* %2, i8* %3, i32* %4, i32* %5, i8** %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8**, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i8** %6, i8*** %14, align 8
  %15 = load i32*, i32** %13, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %7
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = sub nsw i64 %24, %20
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %22, align 8
  br label %27

27:                                               ; preds = %17, %7
  %28 = load i32*, i32** %8, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = load i8**, i8*** %14, align 8
  %35 = call i32 @bfd_elf_generic_reloc(i32* %28, %struct.TYPE_4__* %29, i32* %30, i8* %31, i32* %32, i32* %33, i8** %34)
  ret i32 %35
}

declare dso_local i32 @bfd_elf_generic_reloc(i32*, %struct.TYPE_4__*, i32*, i8*, i32*, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
