; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_init_2_index_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_init_2_index_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_8__* }
%struct.bfd_link_info = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_8__* }

@SEC_EXCLUDE = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_bfd_elf_init_2_index_sections(%struct.TYPE_7__* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %4, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %5, align 8
  br label %9

9:                                                ; preds = %38, %2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = icmp ne %struct.TYPE_8__* %10, null
  br i1 %11, label %12, label %42

12:                                               ; preds = %9
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SEC_EXCLUDE, align 4
  %17 = load i32, i32* @SEC_ALLOC, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SEC_READONLY, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %15, %20
  %22 = load i32, i32* @SEC_ALLOC, align 4
  %23 = load i32, i32* @SEC_READONLY, align 4
  %24 = or i32 %22, %23
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %12
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = call i32 @_bfd_elf_link_omit_section_dynsym(%struct.TYPE_7__* %27, %struct.bfd_link_info* %28, %struct.TYPE_8__* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %35 = call %struct.TYPE_9__* @elf_hash_table(%struct.bfd_link_info* %34)
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %36, align 8
  br label %42

37:                                               ; preds = %26, %12
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %5, align 8
  br label %9

42:                                               ; preds = %32, %9
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %5, align 8
  br label %46

46:                                               ; preds = %73, %42
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = icmp ne %struct.TYPE_8__* %47, null
  br i1 %48, label %49, label %77

49:                                               ; preds = %46
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SEC_EXCLUDE, align 4
  %54 = load i32, i32* @SEC_ALLOC, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @SEC_READONLY, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %52, %57
  %59 = load i32, i32* @SEC_ALLOC, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %49
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = call i32 @_bfd_elf_link_omit_section_dynsym(%struct.TYPE_7__* %62, %struct.bfd_link_info* %63, %struct.TYPE_8__* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %61
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %70 = call %struct.TYPE_9__* @elf_hash_table(%struct.bfd_link_info* %69)
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  store %struct.TYPE_8__* %68, %struct.TYPE_8__** %71, align 8
  br label %77

72:                                               ; preds = %61, %49
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  store %struct.TYPE_8__* %76, %struct.TYPE_8__** %5, align 8
  br label %46

77:                                               ; preds = %67, %46
  %78 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %79 = call %struct.TYPE_9__* @elf_hash_table(%struct.bfd_link_info* %78)
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = icmp eq %struct.TYPE_8__* %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %85 = call %struct.TYPE_9__* @elf_hash_table(%struct.bfd_link_info* %84)
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %89 = call %struct.TYPE_9__* @elf_hash_table(%struct.bfd_link_info* %88)
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  store %struct.TYPE_8__* %87, %struct.TYPE_8__** %90, align 8
  br label %91

91:                                               ; preds = %83, %77
  ret void
}

declare dso_local i32 @_bfd_elf_link_omit_section_dynsym(%struct.TYPE_7__*, %struct.bfd_link_info*, %struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_9__* @elf_hash_table(%struct.bfd_link_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
