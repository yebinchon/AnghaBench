; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_set_symbol_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_set_symbol_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_final_link_info = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8*, i32, i32 }
%struct.elf_link_hash_entry = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i8* }
%struct.TYPE_6__ = type { i64 }

@STB_LOCAL = common dso_local global i64 0, align 8
@SHN_ABS = common dso_local global i32 0, align 4
@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_abs_section_ptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.elf_final_link_info*, i32, i8*)* @set_symbol_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_symbol_value(i32* %0, %struct.elf_final_link_info* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.elf_final_link_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.elf_link_hash_entry**, align 8
  %12 = alloca %struct.elf_link_hash_entry*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.elf_final_link_info* %1, %struct.elf_final_link_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call %struct.elf_link_hash_entry** @elf_sym_hashes(i32* %13)
  store %struct.elf_link_hash_entry** %14, %struct.elf_link_hash_entry*** %11, align 8
  %15 = load %struct.elf_final_link_info*, %struct.elf_final_link_info** %6, align 8
  %16 = getelementptr inbounds %struct.elf_final_link_info, %struct.elf_final_link_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i64 %19
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %10, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ELF_ST_BIND(i32 %23)
  %25 = load i64, i64* @STB_LOCAL, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %4
  %31 = load i32, i32* @SHN_ABS, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  br label %84

37:                                               ; preds = %4
  %38 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %11, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %38, i64 %40
  %42 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %41, align 8
  store %struct.elf_link_hash_entry* %42, %struct.elf_link_hash_entry** %12, align 8
  br label %43

43:                                               ; preds = %59, %37
  %44 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %12, align 8
  %45 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @bfd_link_hash_indirect, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %57, label %50

50:                                               ; preds = %43
  %51 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %12, align 8
  %52 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @bfd_link_hash_warning, align 8
  %56 = icmp eq i64 %54, %55
  br label %57

57:                                               ; preds = %50, %43
  %58 = phi i1 [ true, %43 ], [ %56, %50 ]
  br i1 %58, label %59, label %67

59:                                               ; preds = %57
  %60 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %12, align 8
  %61 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %66, %struct.elf_link_hash_entry** %12, align 8
  br label %43

67:                                               ; preds = %57
  %68 = load i64, i64* @bfd_link_hash_defined, align 8
  %69 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %12, align 8
  %70 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  store i64 %68, i64* %71, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %12, align 8
  %74 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  store i8* %72, i8** %77, align 8
  %78 = load i32, i32* @bfd_abs_section_ptr, align 4
  %79 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %12, align 8
  %80 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  store i32 %78, i32* %83, align 8
  br label %84

84:                                               ; preds = %67, %30
  ret void
}

declare dso_local %struct.elf_link_hash_entry** @elf_sym_hashes(i32*) #1

declare dso_local i64 @ELF_ST_BIND(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
