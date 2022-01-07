; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_define_ovtab_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_define_ovtab_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { i32, i32, i32, %struct.TYPE_10__, i64, i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.spu_link_hash_table = type { %struct.TYPE_6__*, i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@STT_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%B is not allowed to define %s\00", align 1
@bfd_error_bad_value = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.elf_link_hash_entry* (%struct.spu_link_hash_table*, i8*)* @define_ovtab_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.elf_link_hash_entry* @define_ovtab_symbol(%struct.spu_link_hash_table* %0, i8* %1) #0 {
  %3 = alloca %struct.elf_link_hash_entry*, align 8
  %4 = alloca %struct.spu_link_hash_table*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.elf_link_hash_entry*, align 8
  store %struct.spu_link_hash_table* %0, %struct.spu_link_hash_table** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.spu_link_hash_table*, %struct.spu_link_hash_table** %4, align 8
  %8 = getelementptr inbounds %struct.spu_link_hash_table, %struct.spu_link_hash_table* %7, i32 0, i32 1
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* @TRUE, align 4
  %11 = load i32, i32* @FALSE, align 4
  %12 = load i32, i32* @FALSE, align 4
  %13 = call %struct.elf_link_hash_entry* @elf_link_hash_lookup(i32* %8, i8* %9, i32 %10, i32 %11, i32 %12)
  store %struct.elf_link_hash_entry* %13, %struct.elf_link_hash_entry** %6, align 8
  %14 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %15 = icmp eq %struct.elf_link_hash_entry* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.elf_link_hash_entry* null, %struct.elf_link_hash_entry** %3, align 8
  br label %73

17:                                               ; preds = %2
  %18 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %19 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @bfd_link_hash_defined, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %26 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %53, label %29

29:                                               ; preds = %24, %17
  %30 = load i64, i64* @bfd_link_hash_defined, align 8
  %31 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %32 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  %34 = load %struct.spu_link_hash_table*, %struct.spu_link_hash_table** %4, align 8
  %35 = getelementptr inbounds %struct.spu_link_hash_table, %struct.spu_link_hash_table* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %38 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %41, align 8
  %42 = load i32, i32* @STT_OBJECT, align 4
  %43 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %44 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %46 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %48 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %50 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %49, i32 0, i32 2
  store i32 1, i32* %50, align 8
  %51 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %52 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %51, i32 0, i32 4
  store i64 0, i64* %52, align 8
  br label %71

53:                                               ; preds = %24
  %54 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %56 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %64 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @_bfd_error_handler(i32 %54, i32 %62, i32 %67)
  %69 = load i32, i32* @bfd_error_bad_value, align 4
  %70 = call i32 @bfd_set_error(i32 %69)
  store %struct.elf_link_hash_entry* null, %struct.elf_link_hash_entry** %3, align 8
  br label %73

71:                                               ; preds = %29
  %72 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  store %struct.elf_link_hash_entry* %72, %struct.elf_link_hash_entry** %3, align 8
  br label %73

73:                                               ; preds = %71, %53, %16
  %74 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %3, align 8
  ret %struct.elf_link_hash_entry* %74
}

declare dso_local %struct.elf_link_hash_entry* @elf_link_hash_lookup(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @_bfd_error_handler(i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_set_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
