; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bfd.c_bfd_preserve_save.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bfd.c_bfd_preserve_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32*, i32*, i32, i32*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.bfd_preserve = type { i32, i64, i32*, i32*, i32, i32*, i32* }

@bfd_section_hash_newfunc = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@bfd_default_arch_struct = common dso_local global i32 0, align 4
@BFD_IN_MEMORY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_preserve_save(%struct.TYPE_5__* %0, %struct.bfd_preserve* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.bfd_preserve*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.bfd_preserve* %1, %struct.bfd_preserve** %5, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load %struct.bfd_preserve*, %struct.bfd_preserve** %5, align 8
  %11 = getelementptr inbounds %struct.bfd_preserve, %struct.bfd_preserve* %10, i32 0, i32 6
  store i32* %9, i32** %11, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.bfd_preserve*, %struct.bfd_preserve** %5, align 8
  %16 = getelementptr inbounds %struct.bfd_preserve, %struct.bfd_preserve* %15, i32 0, i32 5
  store i32* %14, i32** %16, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.bfd_preserve*, %struct.bfd_preserve** %5, align 8
  %21 = getelementptr inbounds %struct.bfd_preserve, %struct.bfd_preserve* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.bfd_preserve*, %struct.bfd_preserve** %5, align 8
  %26 = getelementptr inbounds %struct.bfd_preserve, %struct.bfd_preserve* %25, i32 0, i32 3
  store i32* %24, i32** %26, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.bfd_preserve*, %struct.bfd_preserve** %5, align 8
  %31 = getelementptr inbounds %struct.bfd_preserve, %struct.bfd_preserve* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.bfd_preserve*, %struct.bfd_preserve** %5, align 8
  %36 = getelementptr inbounds %struct.bfd_preserve, %struct.bfd_preserve* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.bfd_preserve*, %struct.bfd_preserve** %5, align 8
  %41 = getelementptr inbounds %struct.bfd_preserve, %struct.bfd_preserve* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 6
  %44 = load i32, i32* @bfd_section_hash_newfunc, align 4
  %45 = call i32 @bfd_hash_table_init(i32* %43, i32 %44, i32 4)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %2
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %3, align 4
  br label %67

49:                                               ; preds = %2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 4
  store i32* @bfd_default_arch_struct, i32** %54, align 8
  %55 = load i32, i32* @BFD_IN_MEMORY, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  store i32* null, i32** %61, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  store i32* null, i32** %63, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* @TRUE, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %49, %47
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @bfd_hash_table_init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
