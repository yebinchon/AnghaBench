; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_reloc.c__bfd_final_link_relocate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_reloc.c__bfd_final_link_relocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@bfd_reloc_outofrange = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_final_link_relocate(%struct.TYPE_9__* %0, i32* %1, %struct.TYPE_10__* %2, i32* %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %17 = load i64, i64* %13, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %20 = call i64 @bfd_get_section_limit(i32* %18, %struct.TYPE_10__* %19)
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %7
  %23 = load i32, i32* @bfd_reloc_outofrange, align 4
  store i32 %23, i32* %8, align 4
  br label %61

24:                                               ; preds = %7
  %25 = load i64, i64* %14, align 8
  %26 = load i64, i64* %15, align 8
  %27 = add nsw i64 %25, %26
  store i64 %27, i64* %16, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %24
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = load i64, i64* %16, align 8
  %43 = sub nsw i64 %42, %41
  store i64 %43, i64* %16, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %32
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* %16, align 8
  %51 = sub nsw i64 %50, %49
  store i64 %51, i64* %16, align 8
  br label %52

52:                                               ; preds = %48, %32
  br label %53

53:                                               ; preds = %52, %24
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = load i64, i64* %16, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = load i64, i64* %13, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = call i32 @_bfd_relocate_contents(%struct.TYPE_9__* %54, i32* %55, i64 %56, i32* %59)
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %53, %22
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local i64 @bfd_get_section_limit(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @_bfd_relocate_contents(%struct.TYPE_9__*, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
