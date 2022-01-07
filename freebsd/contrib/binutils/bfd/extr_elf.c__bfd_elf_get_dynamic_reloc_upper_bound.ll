; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c__bfd_elf_get_dynamic_reloc_upper_bound.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c__bfd_elf_get_dynamic_reloc_upper_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i32 }

@bfd_error_invalid_operation = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SHT_REL = common dso_local global i64 0, align 8
@SHT_RELA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_bfd_elf_get_dynamic_reloc_upper_bound(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = call i64 @elf_dynsymtab(%struct.TYPE_9__* %6)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @bfd_error_invalid_operation, align 4
  %11 = call i32 @bfd_set_error(i32 %10)
  store i64 -1, i64* %2, align 8
  br label %72

12:                                               ; preds = %1
  store i64 8, i64* %4, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %5, align 8
  br label %16

16:                                               ; preds = %66, %12
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = icmp ne %struct.TYPE_10__* %17, null
  br i1 %18, label %19, label %70

19:                                               ; preds = %16
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SEC_LOAD, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %65

26:                                               ; preds = %19
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = call %struct.TYPE_11__* @elf_section_data(%struct.TYPE_10__* %27)
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = call i64 @elf_dynsymtab(%struct.TYPE_9__* %32)
  %34 = icmp eq i64 %31, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %26
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = call %struct.TYPE_11__* @elf_section_data(%struct.TYPE_10__* %36)
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SHT_REL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %35
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = call %struct.TYPE_11__* @elf_section_data(%struct.TYPE_10__* %44)
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SHT_RELA, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %43, %35
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = call %struct.TYPE_11__* @elf_section_data(%struct.TYPE_10__* %55)
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = sdiv i32 %54, %59
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 8
  %63 = load i64, i64* %4, align 8
  %64 = add i64 %63, %62
  store i64 %64, i64* %4, align 8
  br label %65

65:                                               ; preds = %51, %43, %26, %19
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  store %struct.TYPE_10__* %69, %struct.TYPE_10__** %5, align 8
  br label %16

70:                                               ; preds = %16
  %71 = load i64, i64* %4, align 8
  store i64 %71, i64* %2, align 8
  br label %72

72:                                               ; preds = %70, %9
  %73 = load i64, i64* %2, align 8
  ret i64 %73
}

declare dso_local i64 @elf_dynsymtab(%struct.TYPE_9__*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local %struct.TYPE_11__* @elf_section_data(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
