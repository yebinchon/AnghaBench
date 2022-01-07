; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_elf_hide_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips_elf_hide_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf_link_hash_entry = type { i32 }
%struct.mips_got_info = type { i64, i64, i32, i32*, i32, %struct.mips_got_info* }
%struct.mips_elf_link_hash_entry = type { %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.mips_got_entry = type { i32, i64, %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { %struct.mips_elf_link_hash_entry* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.mips_got_info* }

@STT_TLS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_bfd_mips_elf_hide_symbol(%struct.bfd_link_info* %0, %struct.elf_link_hash_entry* %1, i64 %2) #0 {
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.elf_link_hash_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mips_got_info*, align 8
  %10 = alloca %struct.mips_elf_link_hash_entry*, align 8
  %11 = alloca %struct.mips_got_entry, align 8
  %12 = alloca %struct.mips_got_info*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %4, align 8
  store %struct.elf_link_hash_entry* %1, %struct.elf_link_hash_entry** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %14 = bitcast %struct.elf_link_hash_entry* %13 to %struct.mips_elf_link_hash_entry*
  store %struct.mips_elf_link_hash_entry* %14, %struct.mips_elf_link_hash_entry** %10, align 8
  %15 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %10, align 8
  %16 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %164

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %10, align 8
  %23 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %25 = call %struct.TYPE_11__* @elf_hash_table(%struct.bfd_link_info* %24)
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %158

30:                                               ; preds = %20
  %31 = load i64, i64* %6, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %158

33:                                               ; preds = %30
  %34 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %10, align 8
  %35 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @STT_TLS, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %158

40:                                               ; preds = %33
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* @TRUE, align 4
  %43 = call i32* @mips_elf_got_section(i32* %41, i32 %42)
  store i32* %43, i32** %8, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %158

45:                                               ; preds = %40
  %46 = load i32*, i32** %8, align 8
  %47 = call %struct.TYPE_10__* @mips_elf_section_data(i32* %46)
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load %struct.mips_got_info*, %struct.mips_got_info** %49, align 8
  store %struct.mips_got_info* %50, %struct.mips_got_info** %9, align 8
  %51 = icmp ne %struct.mips_got_info* %50, null
  br i1 %51, label %52, label %158

52:                                               ; preds = %45
  %53 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %54 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %53, i32 0, i32 5
  %55 = load %struct.mips_got_info*, %struct.mips_got_info** %54, align 8
  %56 = icmp ne %struct.mips_got_info* %55, null
  br i1 %56, label %57, label %118

57:                                               ; preds = %52
  %58 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  store %struct.mips_got_info* %58, %struct.mips_got_info** %12, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds %struct.mips_got_entry, %struct.mips_got_entry* %11, i32 0, i32 3
  store i32* %59, i32** %60, align 8
  %61 = getelementptr inbounds %struct.mips_got_entry, %struct.mips_got_entry* %11, i32 0, i32 0
  store i32 -1, i32* %61, align 8
  %62 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %10, align 8
  %63 = getelementptr inbounds %struct.mips_got_entry, %struct.mips_got_entry* %11, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store %struct.mips_elf_link_hash_entry* %62, %struct.mips_elf_link_hash_entry** %64, align 8
  %65 = getelementptr inbounds %struct.mips_got_entry, %struct.mips_got_entry* %11, i32 0, i32 1
  store i64 0, i64* %65, align 8
  %66 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %67 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %66, i32 0, i32 5
  %68 = load %struct.mips_got_info*, %struct.mips_got_info** %67, align 8
  store %struct.mips_got_info* %68, %struct.mips_got_info** %9, align 8
  br label %69

69:                                               ; preds = %95, %57
  %70 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %71 = load %struct.mips_got_info*, %struct.mips_got_info** %12, align 8
  %72 = icmp ne %struct.mips_got_info* %70, %71
  br i1 %72, label %73, label %99

73:                                               ; preds = %69
  %74 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %75 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @htab_find(i32 %76, %struct.mips_got_entry* %11)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %73
  %80 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %81 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp sgt i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @BFD_ASSERT(i32 %84)
  %86 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %87 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  %90 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %91 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, -1
  store i64 %93, i64* %91, align 8
  br label %94

94:                                               ; preds = %79, %73
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %97 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %96, i32 0, i32 5
  %98 = load %struct.mips_got_info*, %struct.mips_got_info** %97, align 8
  store %struct.mips_got_info* %98, %struct.mips_got_info** %9, align 8
  br label %69

99:                                               ; preds = %69
  %100 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %10, align 8
  %101 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %106, label %117

106:                                              ; preds = %99
  %107 = load %struct.mips_got_info*, %struct.mips_got_info** %12, align 8
  %108 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp sgt i64 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @BFD_ASSERT(i32 %111)
  %113 = load %struct.mips_got_info*, %struct.mips_got_info** %12, align 8
  %114 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, -1
  store i64 %116, i64* %114, align 8
  br label %117

117:                                              ; preds = %106, %99
  br label %157

118:                                              ; preds = %52
  %119 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %120 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %118
  %124 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %125 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %130 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 8
  br label %156

133:                                              ; preds = %123, %118
  %134 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %10, align 8
  %135 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %155

140:                                              ; preds = %133
  %141 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %142 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp sgt i64 %143, 0
  %145 = zext i1 %144 to i32
  %146 = call i32 @BFD_ASSERT(i32 %145)
  %147 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %148 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 8
  %151 = load %struct.mips_got_info*, %struct.mips_got_info** %9, align 8
  %152 = getelementptr inbounds %struct.mips_got_info, %struct.mips_got_info* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, -1
  store i64 %154, i64* %152, align 8
  br label %155

155:                                              ; preds = %140, %133
  br label %156

156:                                              ; preds = %155, %128
  br label %157

157:                                              ; preds = %156, %117
  br label %158

158:                                              ; preds = %157, %45, %40, %33, %30, %20
  %159 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %160 = load %struct.mips_elf_link_hash_entry*, %struct.mips_elf_link_hash_entry** %10, align 8
  %161 = getelementptr inbounds %struct.mips_elf_link_hash_entry, %struct.mips_elf_link_hash_entry* %160, i32 0, i32 0
  %162 = load i64, i64* %6, align 8
  %163 = call i32 @_bfd_elf_link_hash_hide_symbol(%struct.bfd_link_info* %159, %struct.TYPE_12__* %161, i64 %162)
  br label %164

164:                                              ; preds = %158, %19
  ret void
}

declare dso_local %struct.TYPE_11__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32* @mips_elf_got_section(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @mips_elf_section_data(i32*) #1

declare dso_local i64 @htab_find(i32, %struct.mips_got_entry*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @_bfd_elf_link_hash_hide_symbol(%struct.bfd_link_info*, %struct.TYPE_12__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
