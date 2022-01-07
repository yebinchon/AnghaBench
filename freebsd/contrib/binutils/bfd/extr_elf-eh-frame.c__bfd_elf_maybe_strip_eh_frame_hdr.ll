; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-eh-frame.c__bfd_elf_maybe_strip_eh_frame_hdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-eh-frame.c__bfd_elf_maybe_strip_eh_frame_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.elf_link_hash_table = type { %struct.eh_frame_hdr_info }
%struct.eh_frame_hdr_info = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c".eh_frame\00", align 1
@SEC_EXCLUDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_elf_maybe_strip_eh_frame_hdr(%struct.bfd_link_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bfd_link_info*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.elf_link_hash_table*, align 8
  %7 = alloca %struct.eh_frame_hdr_info*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %3, align 8
  %8 = load %struct.bfd_link_info*, %struct.bfd_link_info** %3, align 8
  %9 = call %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info* %8)
  store %struct.elf_link_hash_table* %9, %struct.elf_link_hash_table** %6, align 8
  %10 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %6, align 8
  %11 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %10, i32 0, i32 0
  store %struct.eh_frame_hdr_info* %11, %struct.eh_frame_hdr_info** %7, align 8
  %12 = load %struct.eh_frame_hdr_info*, %struct.eh_frame_hdr_info** %7, align 8
  %13 = getelementptr inbounds %struct.eh_frame_hdr_info, %struct.eh_frame_hdr_info* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = icmp eq %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @TRUE, align 4
  store i32 %17, i32* %2, align 4
  br label %84

18:                                               ; preds = %1
  %19 = load %struct.eh_frame_hdr_info*, %struct.eh_frame_hdr_info** %7, align 8
  %20 = getelementptr inbounds %struct.eh_frame_hdr_info, %struct.eh_frame_hdr_info* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @bfd_is_abs_section(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load %struct.eh_frame_hdr_info*, %struct.eh_frame_hdr_info** %7, align 8
  %28 = getelementptr inbounds %struct.eh_frame_hdr_info, %struct.eh_frame_hdr_info* %27, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %28, align 8
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %2, align 4
  br label %84

30:                                               ; preds = %18
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  %31 = load %struct.bfd_link_info*, %struct.bfd_link_info** %3, align 8
  %32 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %65

35:                                               ; preds = %30
  %36 = load %struct.bfd_link_info*, %struct.bfd_link_info** %3, align 8
  %37 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %5, align 8
  br label %39

39:                                               ; preds = %60, %35
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = icmp ne %struct.TYPE_7__* %40, null
  br i1 %41, label %42, label %64

42:                                               ; preds = %39
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = call %struct.TYPE_8__* @bfd_get_section_by_name(%struct.TYPE_7__* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %4, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = icmp ne %struct.TYPE_8__* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %50, 8
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @bfd_is_abs_section(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  br label %64

59:                                               ; preds = %52, %47, %42
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %5, align 8
  br label %39

64:                                               ; preds = %58, %39
  br label %65

65:                                               ; preds = %64, %30
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = icmp eq %struct.TYPE_7__* %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load i32, i32* @SEC_EXCLUDE, align 4
  %70 = load %struct.eh_frame_hdr_info*, %struct.eh_frame_hdr_info** %7, align 8
  %71 = getelementptr inbounds %struct.eh_frame_hdr_info, %struct.eh_frame_hdr_info* %70, i32 0, i32 1
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %69
  store i32 %75, i32* %73, align 4
  %76 = load %struct.eh_frame_hdr_info*, %struct.eh_frame_hdr_info** %7, align 8
  %77 = getelementptr inbounds %struct.eh_frame_hdr_info, %struct.eh_frame_hdr_info* %76, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %77, align 8
  %78 = load i32, i32* @TRUE, align 4
  store i32 %78, i32* %2, align 4
  br label %84

79:                                               ; preds = %65
  %80 = load i32, i32* @TRUE, align 4
  %81 = load %struct.eh_frame_hdr_info*, %struct.eh_frame_hdr_info** %7, align 8
  %82 = getelementptr inbounds %struct.eh_frame_hdr_info, %struct.eh_frame_hdr_info* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @TRUE, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %79, %68, %26, %16
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i64 @bfd_is_abs_section(i32) #1

declare dso_local %struct.TYPE_8__* @bfd_get_section_by_name(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
