; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_bfd_elf_find_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_bfd_elf_find_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_internal_shdr = type { i64 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.elf_internal_shdr* @bfd_elf_find_section(i32* %0, i8* %1) #0 {
  %3 = alloca %struct.elf_internal_shdr*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.elf_internal_shdr**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call %struct.elf_internal_shdr** @elf_elfsections(i32* %10)
  store %struct.elf_internal_shdr** %11, %struct.elf_internal_shdr*** %6, align 8
  %12 = load %struct.elf_internal_shdr**, %struct.elf_internal_shdr*** %6, align 8
  %13 = icmp ne %struct.elf_internal_shdr** %12, null
  br i1 %13, label %14, label %55

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call %struct.TYPE_2__* @elf_elfheader(i32* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @bfd_elf_get_str_section(i32* %15, i32 %19)
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %54

23:                                               ; preds = %14
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @elf_numsections(i32* %24)
  store i32 %25, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %26

26:                                               ; preds = %50, %23
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %26
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.elf_internal_shdr**, %struct.elf_internal_shdr*** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.elf_internal_shdr*, %struct.elf_internal_shdr** %32, i64 %34
  %36 = load %struct.elf_internal_shdr*, %struct.elf_internal_shdr** %35, align 8
  %37 = getelementptr inbounds %struct.elf_internal_shdr, %struct.elf_internal_shdr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i8, i8* %31, i64 %38
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @strcmp(i8* %39, i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %30
  %44 = load %struct.elf_internal_shdr**, %struct.elf_internal_shdr*** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.elf_internal_shdr*, %struct.elf_internal_shdr** %44, i64 %46
  %48 = load %struct.elf_internal_shdr*, %struct.elf_internal_shdr** %47, align 8
  store %struct.elf_internal_shdr* %48, %struct.elf_internal_shdr** %3, align 8
  br label %56

49:                                               ; preds = %30
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %9, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %26

53:                                               ; preds = %26
  br label %54

54:                                               ; preds = %53, %14
  br label %55

55:                                               ; preds = %54, %2
  store %struct.elf_internal_shdr* null, %struct.elf_internal_shdr** %3, align 8
  br label %56

56:                                               ; preds = %55, %43
  %57 = load %struct.elf_internal_shdr*, %struct.elf_internal_shdr** %3, align 8
  ret %struct.elf_internal_shdr* %57
}

declare dso_local %struct.elf_internal_shdr** @elf_elfsections(i32*) #1

declare dso_local i8* @bfd_elf_get_str_section(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @elf_elfheader(i32*) #1

declare dso_local i32 @elf_numsections(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
