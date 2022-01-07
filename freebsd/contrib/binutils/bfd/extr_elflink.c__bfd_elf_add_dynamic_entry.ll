; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_add_dynamic_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_add_dynamic_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf_link_hash_table = type { i32 }
%struct.elf_backend_data = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 (i32, %struct.TYPE_10__*, i32*)* }
%struct.TYPE_10__ = type { %struct.TYPE_7__, i8* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_9__ = type { i32, i32* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c".dynamic\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_elf_add_dynamic_entry(%struct.bfd_link_info* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.elf_link_hash_table*, align 8
  %9 = alloca %struct.elf_backend_data*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_10__, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %15 = call %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info* %14)
  store %struct.elf_link_hash_table* %15, %struct.elf_link_hash_table** %8, align 8
  %16 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %8, align 8
  %17 = call i32 @is_elf_hash_table(%struct.elf_link_hash_table* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %4, align 4
  br label %80

21:                                               ; preds = %3
  %22 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %8, align 8
  %23 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.elf_backend_data* @get_elf_backend_data(i32 %24)
  store %struct.elf_backend_data* %25, %struct.elf_backend_data** %9, align 8
  %26 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %8, align 8
  %27 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.TYPE_9__* @bfd_get_section_by_name(i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %10, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %31 = icmp ne %struct.TYPE_9__* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @BFD_ASSERT(i32 %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.elf_backend_data*, %struct.elf_backend_data** %9, align 8
  %38 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %36, %41
  store i32 %42, i32* %11, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32* @bfd_realloc(i32* %45, i32 %46)
  store i32* %47, i32** %12, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %21
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %4, align 4
  br label %80

52:                                               ; preds = %21
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  store i8* %53, i8** %54, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load %struct.elf_backend_data*, %struct.elf_backend_data** %9, align 8
  %59 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32 (i32, %struct.TYPE_10__*, i32*)*, i32 (i32, %struct.TYPE_10__*, i32*)** %61, align 8
  %63 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %8, align 8
  %64 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %12, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  %72 = call i32 %62(i32 %65, %struct.TYPE_10__* %13, i32* %71)
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  store i32* %76, i32** %78, align 8
  %79 = load i32, i32* @TRUE, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %52, %50, %19
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @is_elf_hash_table(%struct.elf_link_hash_table*) #1

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i32) #1

declare dso_local %struct.TYPE_9__* @bfd_get_section_by_name(i32, i8*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32* @bfd_realloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
