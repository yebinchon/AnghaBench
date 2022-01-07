; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_get_fdh.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_get_fdh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc_link_hash_entry = type { i32, i32, %struct.ppc_link_hash_entry*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.ppc_link_hash_table = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ppc_link_hash_entry* (%struct.ppc_link_hash_entry*, %struct.ppc_link_hash_table*)* @get_fdh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ppc_link_hash_entry* @get_fdh(%struct.ppc_link_hash_entry* %0, %struct.ppc_link_hash_table* %1) #0 {
  %3 = alloca %struct.ppc_link_hash_entry*, align 8
  %4 = alloca %struct.ppc_link_hash_table*, align 8
  %5 = alloca %struct.ppc_link_hash_entry*, align 8
  %6 = alloca i8*, align 8
  store %struct.ppc_link_hash_entry* %0, %struct.ppc_link_hash_entry** %3, align 8
  store %struct.ppc_link_hash_table* %1, %struct.ppc_link_hash_table** %4, align 8
  %7 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %3, align 8
  %8 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %7, i32 0, i32 2
  %9 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %8, align 8
  store %struct.ppc_link_hash_entry* %9, %struct.ppc_link_hash_entry** %5, align 8
  %10 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %5, align 8
  %11 = icmp eq %struct.ppc_link_hash_entry* %10, null
  br i1 %11, label %12, label %42

12:                                               ; preds = %2
  %13 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %3, align 8
  %14 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8* %19, i8** %6, align 8
  %20 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %4, align 8
  %21 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %20, i32 0, i32 0
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* @FALSE, align 4
  %24 = load i32, i32* @FALSE, align 4
  %25 = load i32, i32* @FALSE, align 4
  %26 = call i64 @elf_link_hash_lookup(i32* %21, i8* %22, i32 %23, i32 %24, i32 %25)
  %27 = inttoptr i64 %26 to %struct.ppc_link_hash_entry*
  store %struct.ppc_link_hash_entry* %27, %struct.ppc_link_hash_entry** %5, align 8
  %28 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %5, align 8
  %29 = icmp ne %struct.ppc_link_hash_entry* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %12
  %31 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %5, align 8
  %32 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %3, align 8
  %34 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %5, align 8
  %35 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %34, i32 0, i32 2
  store %struct.ppc_link_hash_entry* %33, %struct.ppc_link_hash_entry** %35, align 8
  %36 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %3, align 8
  %37 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  %38 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %5, align 8
  %39 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %3, align 8
  %40 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %39, i32 0, i32 2
  store %struct.ppc_link_hash_entry* %38, %struct.ppc_link_hash_entry** %40, align 8
  br label %41

41:                                               ; preds = %30, %12
  br label %42

42:                                               ; preds = %41, %2
  %43 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %5, align 8
  ret %struct.ppc_link_hash_entry* %43
}

declare dso_local i64 @elf_link_hash_lookup(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
