; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_quick_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_quick_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_10__* }

@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_KEEP = common dso_local global i32 0, align 4
@symtab = common dso_local global %struct.TYPE_9__** null, align 8
@symptr = common dso_local global i32 0, align 4
@BSF_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i32*, i8*, i32, i32)* @quick_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @quick_section(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct.TYPE_10__* @bfd_make_section_old_way(i32* %11, i8* %12)
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %9, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @SEC_ALLOC, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SEC_LOAD, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SEC_KEEP, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @bfd_set_section_flags(i32* %14, %struct.TYPE_10__* %15, i32 %22)
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @bfd_set_section_alignment(i32* %24, %struct.TYPE_10__* %25, i32 %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %30, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call %struct.TYPE_9__* @bfd_make_empty_symbol(i32* %31)
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %10, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %34 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @symtab, align 8
  %35 = load i32, i32* @symptr, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @symptr, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %34, i64 %37
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %38, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %46, align 8
  %47 = load i32, i32* @BSF_LOCAL, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  ret %struct.TYPE_10__* %52
}

declare dso_local %struct.TYPE_10__* @bfd_make_section_old_way(i32*, i8*) #1

declare dso_local i32 @bfd_set_section_flags(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @bfd_set_section_alignment(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local %struct.TYPE_9__* @bfd_make_empty_symbol(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
