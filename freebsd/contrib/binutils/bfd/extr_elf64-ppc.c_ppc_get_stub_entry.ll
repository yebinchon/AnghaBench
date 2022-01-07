; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc_get_stub_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc_get_stub_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc_stub_hash_entry = type { %struct.TYPE_10__*, %struct.ppc_link_hash_entry* }
%struct.TYPE_10__ = type { i64 }
%struct.ppc_link_hash_entry = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.ppc_stub_hash_entry* }
%struct.ppc_link_hash_table = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ppc_stub_hash_entry* (%struct.TYPE_10__*, %struct.TYPE_10__*, %struct.ppc_link_hash_entry*, i32*, %struct.ppc_link_hash_table*)* @ppc_get_stub_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ppc_stub_hash_entry* @ppc_get_stub_entry(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, %struct.ppc_link_hash_entry* %2, i32* %3, %struct.ppc_link_hash_table* %4) #0 {
  %6 = alloca %struct.ppc_stub_hash_entry*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.ppc_link_hash_entry*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ppc_link_hash_table*, align 8
  %12 = alloca %struct.ppc_stub_hash_entry*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store %struct.ppc_link_hash_entry* %2, %struct.ppc_link_hash_entry** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.ppc_link_hash_table* %4, %struct.ppc_link_hash_table** %11, align 8
  %15 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %11, align 8
  %16 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %15, i32 0, i32 1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %13, align 8
  %24 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %25 = icmp ne %struct.ppc_link_hash_entry* %24, null
  br i1 %25, label %26, label %55

26:                                               ; preds = %5
  %27 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %28 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.ppc_stub_hash_entry*, %struct.ppc_stub_hash_entry** %29, align 8
  %31 = icmp ne %struct.ppc_stub_hash_entry* %30, null
  br i1 %31, label %32, label %55

32:                                               ; preds = %26
  %33 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %34 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load %struct.ppc_stub_hash_entry*, %struct.ppc_stub_hash_entry** %35, align 8
  %37 = getelementptr inbounds %struct.ppc_stub_hash_entry, %struct.ppc_stub_hash_entry* %36, i32 0, i32 1
  %38 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %37, align 8
  %39 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %40 = icmp eq %struct.ppc_link_hash_entry* %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %32
  %42 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %43 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load %struct.ppc_stub_hash_entry*, %struct.ppc_stub_hash_entry** %44, align 8
  %46 = getelementptr inbounds %struct.ppc_stub_hash_entry, %struct.ppc_stub_hash_entry* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %49 = icmp eq %struct.TYPE_10__* %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %52 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load %struct.ppc_stub_hash_entry*, %struct.ppc_stub_hash_entry** %53, align 8
  store %struct.ppc_stub_hash_entry* %54, %struct.ppc_stub_hash_entry** %12, align 8
  br label %81

55:                                               ; preds = %41, %32, %26, %5
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = call i8* @ppc_stub_name(%struct.TYPE_10__* %56, %struct.TYPE_10__* %57, %struct.ppc_link_hash_entry* %58, i32* %59)
  store i8* %60, i8** %14, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store %struct.ppc_stub_hash_entry* null, %struct.ppc_stub_hash_entry** %6, align 8
  br label %83

64:                                               ; preds = %55
  %65 = load %struct.ppc_link_hash_table*, %struct.ppc_link_hash_table** %11, align 8
  %66 = getelementptr inbounds %struct.ppc_link_hash_table, %struct.ppc_link_hash_table* %65, i32 0, i32 0
  %67 = load i8*, i8** %14, align 8
  %68 = load i32, i32* @FALSE, align 4
  %69 = load i32, i32* @FALSE, align 4
  %70 = call %struct.ppc_stub_hash_entry* @ppc_stub_hash_lookup(i32* %66, i8* %67, i32 %68, i32 %69)
  store %struct.ppc_stub_hash_entry* %70, %struct.ppc_stub_hash_entry** %12, align 8
  %71 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %72 = icmp ne %struct.ppc_link_hash_entry* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %64
  %74 = load %struct.ppc_stub_hash_entry*, %struct.ppc_stub_hash_entry** %12, align 8
  %75 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %9, align 8
  %76 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  store %struct.ppc_stub_hash_entry* %74, %struct.ppc_stub_hash_entry** %77, align 8
  br label %78

78:                                               ; preds = %73, %64
  %79 = load i8*, i8** %14, align 8
  %80 = call i32 @free(i8* %79)
  br label %81

81:                                               ; preds = %78, %50
  %82 = load %struct.ppc_stub_hash_entry*, %struct.ppc_stub_hash_entry** %12, align 8
  store %struct.ppc_stub_hash_entry* %82, %struct.ppc_stub_hash_entry** %6, align 8
  br label %83

83:                                               ; preds = %81, %63
  %84 = load %struct.ppc_stub_hash_entry*, %struct.ppc_stub_hash_entry** %6, align 8
  ret %struct.ppc_stub_hash_entry* %84
}

declare dso_local i8* @ppc_stub_name(%struct.TYPE_10__*, %struct.TYPE_10__*, %struct.ppc_link_hash_entry*, i32*) #1

declare dso_local %struct.ppc_stub_hash_entry* @ppc_stub_hash_lookup(i32*, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
