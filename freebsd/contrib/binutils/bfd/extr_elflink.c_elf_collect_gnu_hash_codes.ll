; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_collect_gnu_hash_codes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_collect_gnu_hash_codes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.collect_gnu_hash_codes = type { i64*, i64, i64*, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.elf_link_hash_entry*)* }

@bfd_link_hash_warning = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@ELF_VER_CHR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_link_hash_entry*, i8*)* @elf_collect_gnu_hash_codes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_collect_gnu_hash_codes(%struct.elf_link_hash_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elf_link_hash_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.collect_gnu_hash_codes*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.elf_link_hash_entry* %0, %struct.elf_link_hash_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.collect_gnu_hash_codes*
  store %struct.collect_gnu_hash_codes* %12, %struct.collect_gnu_hash_codes** %6, align 8
  store i8* null, i8** %10, align 8
  %13 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %14 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @bfd_link_hash_warning, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %21 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %26, %struct.elf_link_hash_entry** %4, align 8
  br label %27

27:                                               ; preds = %19, %2
  %28 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %29 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %3, align 4
  br label %134

34:                                               ; preds = %27
  %35 = load %struct.collect_gnu_hash_codes*, %struct.collect_gnu_hash_codes** %6, align 8
  %36 = getelementptr inbounds %struct.collect_gnu_hash_codes, %struct.collect_gnu_hash_codes* %35, i32 0, i32 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32 (%struct.elf_link_hash_entry*)*, i32 (%struct.elf_link_hash_entry*)** %38, align 8
  %40 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %41 = call i32 %39(%struct.elf_link_hash_entry* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %3, align 4
  br label %134

45:                                               ; preds = %34
  %46 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %47 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %7, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* @ELF_VER_CHR, align 4
  %53 = call i8* @strchr(i8* %51, i32 %52)
  store i8* %53, i8** %8, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %82

56:                                               ; preds = %45
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = add nsw i64 %61, 1
  %63 = trunc i64 %62 to i32
  %64 = call i8* @bfd_malloc(i32 %63)
  store i8* %64, i8** %10, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = trunc i64 %71 to i32
  %73 = call i32 @memcpy(i8* %65, i8* %66, i32 %72)
  %74 = load i8*, i8** %10, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = getelementptr inbounds i8, i8* %74, i64 %79
  store i8 0, i8* %80, align 1
  %81 = load i8*, i8** %10, align 8
  store i8* %81, i8** %7, align 8
  br label %82

82:                                               ; preds = %56, %45
  %83 = load i8*, i8** %7, align 8
  %84 = call i64 @bfd_elf_gnu_hash(i8* %83)
  store i64 %84, i64* %9, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load %struct.collect_gnu_hash_codes*, %struct.collect_gnu_hash_codes** %6, align 8
  %87 = getelementptr inbounds %struct.collect_gnu_hash_codes, %struct.collect_gnu_hash_codes* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = load %struct.collect_gnu_hash_codes*, %struct.collect_gnu_hash_codes** %6, align 8
  %90 = getelementptr inbounds %struct.collect_gnu_hash_codes, %struct.collect_gnu_hash_codes* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i64, i64* %88, i64 %91
  store i64 %85, i64* %92, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load %struct.collect_gnu_hash_codes*, %struct.collect_gnu_hash_codes** %6, align 8
  %95 = getelementptr inbounds %struct.collect_gnu_hash_codes, %struct.collect_gnu_hash_codes* %94, i32 0, i32 2
  %96 = load i64*, i64** %95, align 8
  %97 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %98 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %96, i64 %100
  store i64 %93, i64* %101, align 8
  %102 = load %struct.collect_gnu_hash_codes*, %struct.collect_gnu_hash_codes** %6, align 8
  %103 = getelementptr inbounds %struct.collect_gnu_hash_codes, %struct.collect_gnu_hash_codes* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %103, align 8
  %106 = load %struct.collect_gnu_hash_codes*, %struct.collect_gnu_hash_codes** %6, align 8
  %107 = getelementptr inbounds %struct.collect_gnu_hash_codes, %struct.collect_gnu_hash_codes* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp ult i64 %108, 0
  br i1 %109, label %119, label %110

110:                                              ; preds = %82
  %111 = load %struct.collect_gnu_hash_codes*, %struct.collect_gnu_hash_codes** %6, align 8
  %112 = getelementptr inbounds %struct.collect_gnu_hash_codes, %struct.collect_gnu_hash_codes* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %115 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = icmp ugt i64 %113, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %110, %82
  %120 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %4, align 8
  %121 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = load %struct.collect_gnu_hash_codes*, %struct.collect_gnu_hash_codes** %6, align 8
  %125 = getelementptr inbounds %struct.collect_gnu_hash_codes, %struct.collect_gnu_hash_codes* %124, i32 0, i32 3
  store i64 %123, i64* %125, align 8
  br label %126

126:                                              ; preds = %119, %110
  %127 = load i8*, i8** %10, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i8*, i8** %10, align 8
  %131 = call i32 @free(i8* %130)
  br label %132

132:                                              ; preds = %129, %126
  %133 = load i32, i32* @TRUE, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %132, %43, %32
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i8* @bfd_malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @bfd_elf_gnu_hash(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
