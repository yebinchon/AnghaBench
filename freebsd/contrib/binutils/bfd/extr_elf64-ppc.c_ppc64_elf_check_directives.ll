; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc64_elf_check_directives.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc64_elf_check_directives.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.bfd_link_info = type { i32 }
%struct.ppc_link_hash_table = type { i64, %struct.TYPE_7__, %struct.ppc_link_hash_entry* }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ppc_link_hash_entry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ppc_link_hash_entry* }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.bfd_link_info*)* @ppc64_elf_check_directives to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc64_elf_check_directives(%struct.TYPE_8__* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.ppc_link_hash_table*, align 8
  %7 = alloca %struct.ppc_link_hash_entry**, align 8
  %8 = alloca %struct.ppc_link_hash_entry*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %9 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %10 = call %struct.ppc_link_hash_table* @ppc_hash_table(%struct.bfd_link_info* %9)
  store %struct.ppc_link_hash_table* %10, %struct.ppc_link_hash_table** %6, align 8
  %11 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %12 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @is_ppc64_elf_target(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @TRUE, align 4
  store i32 %19, i32* %3, align 4
  br label %72

20:                                               ; preds = %2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @is_ppc64_elf_target(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %20
  %27 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %28 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %27, i32 0, i32 2
  store %struct.ppc_link_hash_entry** %28, %struct.ppc_link_hash_entry*** %7, align 8
  br label %29

29:                                               ; preds = %41, %26
  %30 = load %struct.ppc_link_hash_entry**, %struct.ppc_link_hash_entry*** %7, align 8
  %31 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %30, align 8
  store %struct.ppc_link_hash_entry* %31, %struct.ppc_link_hash_entry** %8, align 8
  %32 = icmp ne %struct.ppc_link_hash_entry* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load %struct.ppc_link_hash_entry**, %struct.ppc_link_hash_entry*** %7, align 8
  store %struct.ppc_link_hash_entry* null, %struct.ppc_link_hash_entry** %34, align 8
  %35 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %36 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %37 = call i32 @add_symbol_adjust(%struct.ppc_link_hash_entry* %35, %struct.bfd_link_info* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %3, align 4
  br label %72

41:                                               ; preds = %33
  %42 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %43 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store %struct.ppc_link_hash_entry** %44, %struct.ppc_link_hash_entry*** %7, align 8
  br label %29

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %45, %20
  %47 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %48 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %47, i32 0, i32 2
  store %struct.ppc_link_hash_entry** %48, %struct.ppc_link_hash_entry*** %7, align 8
  br label %49

49:                                               ; preds = %53, %46
  %50 = load %struct.ppc_link_hash_entry**, %struct.ppc_link_hash_entry*** %7, align 8
  %51 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %50, align 8
  store %struct.ppc_link_hash_entry* %51, %struct.ppc_link_hash_entry** %8, align 8
  %52 = icmp ne %struct.ppc_link_hash_entry* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load %struct.ppc_link_hash_entry**, %struct.ppc_link_hash_entry*** %7, align 8
  store %struct.ppc_link_hash_entry* null, %struct.ppc_link_hash_entry** %54, align 8
  %55 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  %56 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store %struct.ppc_link_hash_entry** %57, %struct.ppc_link_hash_entry*** %7, align 8
  br label %49

58:                                               ; preds = %49
  %59 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %60 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %65 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = call i32 @bfd_link_repair_undef_list(%struct.TYPE_9__* %66)
  %68 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %6, align 8
  %69 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %63, %58
  %71 = load i32, i32* @TRUE, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %39, %18
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.ppc_link_hash_table* @ppc_hash_table(%struct.bfd_link_info*) #1

declare dso_local i64 @is_ppc64_elf_target(i32) #1

declare dso_local i32 @add_symbol_adjust(%struct.ppc_link_hash_entry*, %struct.bfd_link_info*) #1

declare dso_local i32 @bfd_link_repair_undef_list(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
