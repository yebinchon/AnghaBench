; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c__bfd_elf_link_hash_copy_indirect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c__bfd_elf_link_hash_copy_indirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf_link_hash_entry = type { i32, i64, %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.elf_link_hash_table = type { i32, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@bfd_link_hash_indirect = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_bfd_elf_link_hash_copy_indirect(%struct.bfd_link_info* %0, %struct.elf_link_hash_entry* %1, %struct.elf_link_hash_entry* %2) #0 {
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.elf_link_hash_entry*, align 8
  %6 = alloca %struct.elf_link_hash_entry*, align 8
  %7 = alloca %struct.elf_link_hash_table*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %4, align 8
  store %struct.elf_link_hash_entry* %1, %struct.elf_link_hash_entry** %5, align 8
  store %struct.elf_link_hash_entry* %2, %struct.elf_link_hash_entry** %6, align 8
  %8 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %9 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %8, i32 0, i32 10
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %12 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %11, i32 0, i32 10
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %16 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %19 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %23 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %26 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %30 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %33 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %37 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %40 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %44 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %47 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %51 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @bfd_link_hash_indirect, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %3
  br label %166

57:                                               ; preds = %3
  %58 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %59 = call %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info* %58)
  store %struct.elf_link_hash_table* %59, %struct.elf_link_hash_table** %7, align 8
  %60 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %61 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %7, align 8
  %65 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %63, %67
  br i1 %68, label %69, label %96

69:                                               ; preds = %57
  %70 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %71 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %77 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %75, %69
  %80 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %81 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %85 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, %83
  store i64 %88, i64* %86, align 8
  %89 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %7, align 8
  %90 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %94 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  store i64 %92, i64* %95, align 8
  br label %96

96:                                               ; preds = %79, %57
  %97 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %98 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %7, align 8
  %102 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp sgt i64 %100, %104
  br i1 %105, label %106, label %133

106:                                              ; preds = %96
  %107 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %108 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %114 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  store i64 0, i64* %115, align 8
  br label %116

116:                                              ; preds = %112, %106
  %117 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %118 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %122 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, %120
  store i64 %125, i64* %123, align 8
  %126 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %7, align 8
  %127 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %131 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  store i64 %129, i64* %132, align 8
  br label %133

133:                                              ; preds = %116, %96
  %134 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %135 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, -1
  br i1 %137, label %138, label %166

138:                                              ; preds = %133
  %139 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %140 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, -1
  br i1 %142, label %143, label %151

143:                                              ; preds = %138
  %144 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %7, align 8
  %145 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %148 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @_bfd_elf_strtab_delref(i32 %146, i64 %149)
  br label %151

151:                                              ; preds = %143, %138
  %152 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %153 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %156 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %158 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %161 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %160, i32 0, i32 1
  store i64 %159, i64* %161, align 8
  %162 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %163 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %162, i32 0, i32 0
  store i32 -1, i32* %163, align 8
  %164 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %165 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %164, i32 0, i32 1
  store i64 0, i64* %165, align 8
  br label %166

166:                                              ; preds = %56, %151, %133
  ret void
}

declare dso_local %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @_bfd_elf_strtab_delref(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
