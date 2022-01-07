; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_size_got_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_size_got_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_14__* }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i64 }

@MAX_GOT_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"%B: .got subsegment exceeds 64K (size %d)\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfd_link_info*)* @elf64_alpha_size_got_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf64_alpha_size_got_sections(%struct.bfd_link_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bfd_link_info*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %3, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  %8 = load %struct.bfd_link_info*, %struct.bfd_link_info** %3, align 8
  %9 = call %struct.TYPE_12__* @alpha_elf_hash_table(%struct.bfd_link_info* %8)
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_14__* %11, %struct.TYPE_14__** %5, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = icmp eq %struct.TYPE_14__* %12, null
  br i1 %13, label %14, label %76

14:                                               ; preds = %1
  %15 = load %struct.bfd_link_info*, %struct.bfd_link_info** %3, align 8
  %16 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %4, align 8
  br label %18

18:                                               ; preds = %62, %14
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = icmp ne %struct.TYPE_14__* %19, null
  br i1 %20, label %21, label %66

21:                                               ; preds = %18
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %23 = call %struct.TYPE_15__* @alpha_elf_tdata(%struct.TYPE_14__* %22)
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %7, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %27 = icmp eq %struct.TYPE_14__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %62

29:                                               ; preds = %21
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %32 = icmp eq %struct.TYPE_14__* %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @BFD_ASSERT(i32 %33)
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %36 = call %struct.TYPE_15__* @alpha_elf_tdata(%struct.TYPE_14__* %35)
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MAX_GOT_SIZE, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %29
  %42 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %45 = call %struct.TYPE_15__* @alpha_elf_tdata(%struct.TYPE_14__* %44)
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @_bfd_error_handler(i32 %42, %struct.TYPE_14__* %43, i64 %47)
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %2, align 4
  br label %118

50:                                               ; preds = %29
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %52 = icmp eq %struct.TYPE_14__* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %54, %struct.TYPE_14__** %5, align 8
  br label %60

55:                                               ; preds = %50
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %58 = call %struct.TYPE_15__* @alpha_elf_tdata(%struct.TYPE_14__* %57)
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  store %struct.TYPE_14__* %56, %struct.TYPE_14__** %59, align 8
  br label %60

60:                                               ; preds = %55, %53
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %61, %struct.TYPE_14__** %6, align 8
  br label %62

62:                                               ; preds = %60, %28
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  store %struct.TYPE_14__* %65, %struct.TYPE_14__** %4, align 8
  br label %18

66:                                               ; preds = %18
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %68 = icmp eq %struct.TYPE_14__* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @TRUE, align 4
  store i32 %70, i32* %2, align 4
  br label %118

71:                                               ; preds = %66
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %73 = load %struct.bfd_link_info*, %struct.bfd_link_info** %3, align 8
  %74 = call %struct.TYPE_12__* @alpha_elf_hash_table(%struct.bfd_link_info* %73)
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  store %struct.TYPE_14__* %72, %struct.TYPE_14__** %75, align 8
  br label %76

76:                                               ; preds = %71, %1
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %77, %struct.TYPE_14__** %6, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %79 = call %struct.TYPE_15__* @alpha_elf_tdata(%struct.TYPE_14__* %78)
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  store %struct.TYPE_14__* %81, %struct.TYPE_14__** %4, align 8
  br label %82

82:                                               ; preds = %113, %76
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %84 = icmp ne %struct.TYPE_14__* %83, null
  br i1 %84, label %85, label %114

85:                                               ; preds = %82
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %88 = call i64 @elf64_alpha_can_merge_gots(%struct.TYPE_14__* %86, %struct.TYPE_14__* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %85
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %93 = call i32 @elf64_alpha_merge_gots(%struct.TYPE_14__* %91, %struct.TYPE_14__* %92)
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %95 = call %struct.TYPE_15__* @alpha_elf_tdata(%struct.TYPE_14__* %94)
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  store i64 0, i64* %98, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %100 = call %struct.TYPE_15__* @alpha_elf_tdata(%struct.TYPE_14__* %99)
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  store %struct.TYPE_14__* %102, %struct.TYPE_14__** %4, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %105 = call %struct.TYPE_15__* @alpha_elf_tdata(%struct.TYPE_14__* %104)
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  store %struct.TYPE_14__* %103, %struct.TYPE_14__** %106, align 8
  br label %113

107:                                              ; preds = %85
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* %108, %struct.TYPE_14__** %6, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %110 = call %struct.TYPE_15__* @alpha_elf_tdata(%struct.TYPE_14__* %109)
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %111, align 8
  store %struct.TYPE_14__* %112, %struct.TYPE_14__** %4, align 8
  br label %113

113:                                              ; preds = %107, %90
  br label %82

114:                                              ; preds = %82
  %115 = load %struct.bfd_link_info*, %struct.bfd_link_info** %3, align 8
  %116 = call i32 @elf64_alpha_calc_got_offsets(%struct.bfd_link_info* %115)
  %117 = load i32, i32* @TRUE, align 4
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %114, %69, %41
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local %struct.TYPE_12__* @alpha_elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_15__* @alpha_elf_tdata(%struct.TYPE_14__*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @_bfd_error_handler(i32, %struct.TYPE_14__*, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @elf64_alpha_can_merge_gots(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @elf64_alpha_merge_gots(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @elf64_alpha_calc_got_offsets(%struct.bfd_link_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
