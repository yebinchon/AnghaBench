; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c__bfd_score_elf_always_size_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c__bfd_score_elf_always_size_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_12__* }
%struct.bfd_link_info = type { %struct.TYPE_11__* }
%struct.score_got_info = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__* }

@TRUE = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SCORE_FUNCTION_STUB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.bfd_link_info*)* @_bfd_score_elf_always_size_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bfd_score_elf_always_size_sections(%struct.TYPE_11__* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.score_got_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %15 = call %struct.TYPE_13__* @elf_hash_table(%struct.bfd_link_info* %14)
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %6, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = icmp eq %struct.TYPE_11__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* %3, align 4
  br label %138

22:                                               ; preds = %2
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = call %struct.score_got_info* @score_elf_got_info(%struct.TYPE_11__* %23, %struct.TYPE_12__** %7)
  store %struct.score_got_info* %24, %struct.score_got_info** %8, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %26 = icmp eq %struct.TYPE_12__* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %3, align 4
  br label %138

29:                                               ; preds = %22
  %30 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %31 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %30, i32 0, i32 0
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %12, align 8
  br label %33

33:                                               ; preds = %64, %29
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %35 = icmp ne %struct.TYPE_11__* %34, null
  br i1 %35, label %36, label %68

36:                                               ; preds = %33
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %13, align 8
  br label %40

40:                                               ; preds = %59, %36
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %42 = icmp ne %struct.TYPE_12__* %41, null
  br i1 %42, label %43, label %63

43:                                               ; preds = %40
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SEC_ALLOC, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %59

51:                                               ; preds = %43
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 15
  %56 = and i32 %55, -16
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %51, %50
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  store %struct.TYPE_12__* %62, %struct.TYPE_12__** %13, align 8
  br label %40

63:                                               ; preds = %40
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  store %struct.TYPE_11__* %67, %struct.TYPE_11__** %12, align 8
  br label %33

68:                                               ; preds = %33
  %69 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %70 = call i32 @score_elf_sort_hash_table(%struct.bfd_link_info* %69, i32 1)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* @FALSE, align 4
  store i32 %73, i32* %3, align 4
  br label %138

74:                                               ; preds = %68
  %75 = load %struct.score_got_info*, %struct.score_got_info** %8, align 8
  %76 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %75, i32 0, i32 2
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = icmp ne %struct.TYPE_10__* %77, null
  br i1 %78, label %79, label %90

79:                                               ; preds = %74
  %80 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %81 = call %struct.TYPE_13__* @elf_hash_table(%struct.bfd_link_info* %80)
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.score_got_info*, %struct.score_got_info** %8, align 8
  %85 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %84, i32 0, i32 2
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %83, %88
  store i32 %89, i32* %9, align 4
  br label %91

90:                                               ; preds = %74
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %90, %79
  %92 = load i32, i32* @SCORE_FUNCTION_STUB_SIZE, align 4
  %93 = load i32, i32* %9, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = ashr i32 %97, 16
  %99 = add nsw i32 %98, 5
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load %struct.score_got_info*, %struct.score_got_info** %8, align 8
  %102 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load %struct.score_got_info*, %struct.score_got_info** %8, align 8
  %106 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %109 = call i32 @SCORE_ELF_GOT_SIZE(%struct.TYPE_11__* %108)
  %110 = mul nsw i32 %107, %109
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.score_got_info*, %struct.score_got_info** %8, align 8
  %117 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %120 = call i32 @SCORE_ELF_GOT_SIZE(%struct.TYPE_11__* %119)
  %121 = mul nsw i32 %118, %120
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load %struct.score_got_info*, %struct.score_got_info** %8, align 8
  %127 = call i32 @score_elf_resolve_final_got_entries(%struct.score_got_info* %126)
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %133 = call i64 @SCORE_ELF_GOT_MAX_SIZE(%struct.TYPE_11__* %132)
  %134 = icmp sgt i64 %131, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %91
  br label %136

136:                                              ; preds = %135, %91
  %137 = load i32, i32* @TRUE, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %136, %72, %27, %20
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local %struct.TYPE_13__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.score_got_info* @score_elf_got_info(%struct.TYPE_11__*, %struct.TYPE_12__**) #1

declare dso_local i32 @score_elf_sort_hash_table(%struct.bfd_link_info*, i32) #1

declare dso_local i32 @SCORE_ELF_GOT_SIZE(%struct.TYPE_11__*) #1

declare dso_local i32 @score_elf_resolve_final_got_entries(%struct.score_got_info*) #1

declare dso_local i64 @SCORE_ELF_GOT_MAX_SIZE(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
