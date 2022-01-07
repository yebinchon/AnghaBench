; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc64_elf_hide_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc64_elf_hide_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf_link_hash_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.ppc_link_hash_entry = type { %struct.elf_link_hash_entry, %struct.ppc_link_hash_entry*, i64 }
%struct.ppc_link_hash_table = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfd_link_info*, %struct.elf_link_hash_entry*, i32)* @ppc64_elf_hide_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc64_elf_hide_symbol(%struct.bfd_link_info* %0, %struct.elf_link_hash_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.elf_link_hash_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ppc_link_hash_entry*, align 8
  %8 = alloca %struct.ppc_link_hash_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ppc_link_hash_table*, align 8
  %12 = alloca i8, align 1
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %4, align 8
  store %struct.elf_link_hash_entry* %1, %struct.elf_link_hash_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %14 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @_bfd_elf_link_hash_hide_symbol(%struct.bfd_link_info* %13, %struct.elf_link_hash_entry* %14, i32 %15)
  %17 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %5, align 8
  %18 = bitcast %struct.elf_link_hash_entry* %17 to %struct.ppc_link_hash_entry*
  store %struct.ppc_link_hash_entry* %18, %struct.ppc_link_hash_entry** %7, align 8
  %19 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %20 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %139

23:                                               ; preds = %3
  %24 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %25 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %24, i32 0, i32 1
  %26 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %25, align 8
  store %struct.ppc_link_hash_entry* %26, %struct.ppc_link_hash_entry** %8, align 8
  %27 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %28 = icmp eq %struct.ppc_link_hash_entry* %27, null
  br i1 %28, label %29, label %129

29:                                               ; preds = %23
  %30 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %31 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 -1
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %12, align 1
  %39 = load i8*, i8** %9, align 8
  store i8 46, i8* %39, align 1
  %40 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %41 = call %struct.ppc_link_hash_table* @ppc_hash_table(%struct.bfd_link_info* %40)
  store %struct.ppc_link_hash_table* %41, %struct.ppc_link_hash_table** %11, align 8
  %42 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %11, align 8
  %43 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %42, i32 0, i32 0
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* @FALSE, align 4
  %46 = load i32, i32* @FALSE, align 4
  %47 = load i32, i32* @FALSE, align 4
  %48 = call i64 @elf_link_hash_lookup(i32* %43, i8* %44, i32 %45, i32 %46, i32 %47)
  %49 = inttoptr i64 %48 to %struct.ppc_link_hash_entry*
  store %struct.ppc_link_hash_entry* %49, %struct.ppc_link_hash_entry** %8, align 8
  %50 = load i8, i8* %12, align 1
  %51 = load i8*, i8** %9, align 8
  store i8 %50, i8* %51, align 1
  %52 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %53 = icmp eq %struct.ppc_link_hash_entry* %52, null
  br i1 %53, label %54, label %118

54:                                               ; preds = %29
  %55 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %56 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %62 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @strlen(i8* %66)
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %60, i64 %68
  store i8* %69, i8** %10, align 8
  br label %70

70:                                               ; preds = %89, %54
  %71 = load i8*, i8** %10, align 8
  %72 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %73 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = icmp uge i8* %71, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %70
  %80 = load i8*, i8** %10, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = load i8*, i8** %9, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %82, %85
  br label %87

87:                                               ; preds = %79, %70
  %88 = phi i1 [ false, %70 ], [ %86, %79 ]
  br i1 %88, label %89, label %94

89:                                               ; preds = %87
  %90 = load i8*, i8** %10, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 -1
  store i8* %91, i8** %10, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 -1
  store i8* %93, i8** %9, align 8
  br label %70

94:                                               ; preds = %87
  %95 = load i8*, i8** %10, align 8
  %96 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %97 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ult i8* %95, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %94
  %104 = load i8*, i8** %9, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 46
  br i1 %107, label %108, label %117

108:                                              ; preds = %103
  %109 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %11, align 8
  %110 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %109, i32 0, i32 0
  %111 = load i8*, i8** %9, align 8
  %112 = load i32, i32* @FALSE, align 4
  %113 = load i32, i32* @FALSE, align 4
  %114 = load i32, i32* @FALSE, align 4
  %115 = call i64 @elf_link_hash_lookup(i32* %110, i8* %111, i32 %112, i32 %113, i32 %114)
  %116 = inttoptr i64 %115 to %struct.ppc_link_hash_entry*
  store %struct.ppc_link_hash_entry* %116, %struct.ppc_link_hash_entry** %8, align 8
  br label %117

117:                                              ; preds = %108, %103, %94
  br label %118

118:                                              ; preds = %117, %29
  %119 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %120 = icmp ne %struct.ppc_link_hash_entry* %119, null
  br i1 %120, label %121, label %128

121:                                              ; preds = %118
  %122 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %123 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %124 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %123, i32 0, i32 1
  store %struct.ppc_link_hash_entry* %122, %struct.ppc_link_hash_entry** %124, align 8
  %125 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %7, align 8
  %126 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %127 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %126, i32 0, i32 1
  store %struct.ppc_link_hash_entry* %125, %struct.ppc_link_hash_entry** %127, align 8
  br label %128

128:                                              ; preds = %121, %118
  br label %129

129:                                              ; preds = %128, %23
  %130 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %131 = icmp ne %struct.ppc_link_hash_entry* %130, null
  br i1 %131, label %132, label %138

132:                                              ; preds = %129
  %133 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %134 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %135 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %134, i32 0, i32 0
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @_bfd_elf_link_hash_hide_symbol(%struct.bfd_link_info* %133, %struct.elf_link_hash_entry* %135, i32 %136)
  br label %138

138:                                              ; preds = %132, %129
  br label %139

139:                                              ; preds = %138, %3
  ret void
}

declare dso_local i32 @_bfd_elf_link_hash_hide_symbol(%struct.bfd_link_info*, %struct.elf_link_hash_entry*, i32) #1

declare dso_local %struct.ppc_link_hash_table* @ppc_hash_table(%struct.bfd_link_info*) #1

declare dso_local i64 @elf_link_hash_lookup(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
