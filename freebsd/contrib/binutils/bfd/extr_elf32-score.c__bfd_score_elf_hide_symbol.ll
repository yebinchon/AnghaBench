; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c__bfd_score_elf_hide_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c__bfd_score_elf_hide_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf_link_hash_entry = type { i32 }
%struct.score_got_info = type { i64, i64, i32, i32*, i32, %struct.score_got_info* }
%struct.score_elf_link_hash_entry = type { %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.score_got_entry = type { i32, %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { %struct.score_elf_link_hash_entry* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.score_got_info* }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfd_link_info*, %struct.elf_link_hash_entry*, i64)* @_bfd_score_elf_hide_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_bfd_score_elf_hide_symbol(%struct.bfd_link_info* %0, %struct.elf_link_hash_entry* %1, i64 %2) #0 {
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.elf_link_hash_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.score_got_info*, align 8
  %10 = alloca %struct.score_elf_link_hash_entry*, align 8
  %11 = alloca %struct.score_got_entry, align 8
  %12 = alloca %struct.score_got_info*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %4, align 8
  store %struct.elf_link_hash_entry* %1, %struct.elf_link_hash_entry** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %14 = bitcast %struct.elf_link_hash_entry* %13 to %struct.score_elf_link_hash_entry*
  store %struct.score_elf_link_hash_entry* %14, %struct.score_elf_link_hash_entry** %10, align 8
  %15 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %10, align 8
  %16 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %156

20:                                               ; preds = %3
  %21 = load i64, i64* @TRUE, align 8
  %22 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %10, align 8
  %23 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %25 = call %struct.TYPE_11__* @elf_hash_table(%struct.bfd_link_info* %24)
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %150

30:                                               ; preds = %20
  %31 = load i64, i64* %6, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %150

33:                                               ; preds = %30
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* @FALSE, align 4
  %36 = call i32* @score_elf_got_section(i32* %34, i32 %35)
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %156

40:                                               ; preds = %33
  %41 = load i32*, i32** %8, align 8
  %42 = call %struct.TYPE_10__* @score_elf_section_data(i32* %41)
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct.score_got_info*, %struct.score_got_info** %44, align 8
  store %struct.score_got_info* %45, %struct.score_got_info** %9, align 8
  %46 = load %struct.score_got_info*, %struct.score_got_info** %9, align 8
  %47 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %46, i32 0, i32 5
  %48 = load %struct.score_got_info*, %struct.score_got_info** %47, align 8
  %49 = icmp ne %struct.score_got_info* %48, null
  br i1 %49, label %50, label %110

50:                                               ; preds = %40
  %51 = load %struct.score_got_info*, %struct.score_got_info** %9, align 8
  store %struct.score_got_info* %51, %struct.score_got_info** %12, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds %struct.score_got_entry, %struct.score_got_entry* %11, i32 0, i32 2
  store i32* %52, i32** %53, align 8
  %54 = getelementptr inbounds %struct.score_got_entry, %struct.score_got_entry* %11, i32 0, i32 0
  store i32 -1, i32* %54, align 8
  %55 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %10, align 8
  %56 = getelementptr inbounds %struct.score_got_entry, %struct.score_got_entry* %11, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store %struct.score_elf_link_hash_entry* %55, %struct.score_elf_link_hash_entry** %57, align 8
  %58 = load %struct.score_got_info*, %struct.score_got_info** %9, align 8
  %59 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %58, i32 0, i32 5
  %60 = load %struct.score_got_info*, %struct.score_got_info** %59, align 8
  store %struct.score_got_info* %60, %struct.score_got_info** %9, align 8
  br label %61

61:                                               ; preds = %87, %50
  %62 = load %struct.score_got_info*, %struct.score_got_info** %9, align 8
  %63 = load %struct.score_got_info*, %struct.score_got_info** %12, align 8
  %64 = icmp ne %struct.score_got_info* %62, %63
  br i1 %64, label %65, label %91

65:                                               ; preds = %61
  %66 = load %struct.score_got_info*, %struct.score_got_info** %9, align 8
  %67 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @htab_find(i32 %68, %struct.score_got_entry* %11)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %65
  %72 = load %struct.score_got_info*, %struct.score_got_info** %9, align 8
  %73 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @BFD_ASSERT(i32 %76)
  %78 = load %struct.score_got_info*, %struct.score_got_info** %9, align 8
  %79 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  %82 = load %struct.score_got_info*, %struct.score_got_info** %9, align 8
  %83 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, -1
  store i64 %85, i64* %83, align 8
  br label %86

86:                                               ; preds = %71, %65
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.score_got_info*, %struct.score_got_info** %9, align 8
  %89 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %88, i32 0, i32 5
  %90 = load %struct.score_got_info*, %struct.score_got_info** %89, align 8
  store %struct.score_got_info* %90, %struct.score_got_info** %9, align 8
  br label %61

91:                                               ; preds = %61
  %92 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %10, align 8
  %93 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %98, label %109

98:                                               ; preds = %91
  %99 = load %struct.score_got_info*, %struct.score_got_info** %12, align 8
  %100 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp sgt i64 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i32 @BFD_ASSERT(i32 %103)
  %105 = load %struct.score_got_info*, %struct.score_got_info** %12, align 8
  %106 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, -1
  store i64 %108, i64* %106, align 8
  br label %109

109:                                              ; preds = %98, %91
  br label %149

110:                                              ; preds = %40
  %111 = load %struct.score_got_info*, %struct.score_got_info** %9, align 8
  %112 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %110
  %116 = load %struct.score_got_info*, %struct.score_got_info** %9, align 8
  %117 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = icmp eq i32* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load %struct.score_got_info*, %struct.score_got_info** %9, align 8
  %122 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 8
  br label %148

125:                                              ; preds = %115, %110
  %126 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %10, align 8
  %127 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %147

132:                                              ; preds = %125
  %133 = load %struct.score_got_info*, %struct.score_got_info** %9, align 8
  %134 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp sgt i64 %135, 0
  %137 = zext i1 %136 to i32
  %138 = call i32 @BFD_ASSERT(i32 %137)
  %139 = load %struct.score_got_info*, %struct.score_got_info** %9, align 8
  %140 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 8
  %143 = load %struct.score_got_info*, %struct.score_got_info** %9, align 8
  %144 = getelementptr inbounds %struct.score_got_info, %struct.score_got_info* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %145, -1
  store i64 %146, i64* %144, align 8
  br label %147

147:                                              ; preds = %132, %125
  br label %148

148:                                              ; preds = %147, %120
  br label %149

149:                                              ; preds = %148, %109
  br label %150

150:                                              ; preds = %149, %30, %20
  %151 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %152 = load %struct.score_elf_link_hash_entry*, %struct.score_elf_link_hash_entry** %10, align 8
  %153 = getelementptr inbounds %struct.score_elf_link_hash_entry, %struct.score_elf_link_hash_entry* %152, i32 0, i32 0
  %154 = load i64, i64* %6, align 8
  %155 = call i32 @_bfd_elf_link_hash_hide_symbol(%struct.bfd_link_info* %151, %struct.TYPE_12__* %153, i64 %154)
  br label %156

156:                                              ; preds = %150, %39, %19
  ret void
}

declare dso_local %struct.TYPE_11__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32* @score_elf_got_section(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @score_elf_section_data(i32*) #1

declare dso_local i64 @htab_find(i32, %struct.score_got_entry*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @_bfd_elf_link_hash_hide_symbol(%struct.bfd_link_info*, %struct.TYPE_12__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
