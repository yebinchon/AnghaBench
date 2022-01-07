; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_update_plt_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-ppc.c_update_plt_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.plt_entry* }
%struct.plt_entry = type { i32, %struct.TYPE_4__, i32*, %struct.plt_entry* }
%struct.TYPE_4__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.elf_link_hash_entry*, i32*, i32)* @update_plt_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_plt_info(i32* %0, %struct.elf_link_hash_entry* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.elf_link_hash_entry*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.plt_entry*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.elf_link_hash_entry* %1, %struct.elf_link_hash_entry** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 32768
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32* null, i32** %8, align 8
  br label %15

15:                                               ; preds = %14, %4
  %16 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %17 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.plt_entry*, %struct.plt_entry** %18, align 8
  store %struct.plt_entry* %19, %struct.plt_entry** %10, align 8
  br label %20

20:                                               ; preds = %37, %15
  %21 = load %struct.plt_entry*, %struct.plt_entry** %10, align 8
  %22 = icmp ne %struct.plt_entry* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load %struct.plt_entry*, %struct.plt_entry** %10, align 8
  %25 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp eq i32* %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.plt_entry*, %struct.plt_entry** %10, align 8
  %31 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %41

36:                                               ; preds = %29, %23
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.plt_entry*, %struct.plt_entry** %10, align 8
  %39 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %38, i32 0, i32 3
  %40 = load %struct.plt_entry*, %struct.plt_entry** %39, align 8
  store %struct.plt_entry* %40, %struct.plt_entry** %10, align 8
  br label %20

41:                                               ; preds = %35, %20
  %42 = load %struct.plt_entry*, %struct.plt_entry** %10, align 8
  %43 = icmp eq %struct.plt_entry* %42, null
  br i1 %43, label %44, label %72

44:                                               ; preds = %41
  store i32 32, i32* %11, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call %struct.plt_entry* @bfd_alloc(i32* %45, i32 %46)
  store %struct.plt_entry* %47, %struct.plt_entry** %10, align 8
  %48 = load %struct.plt_entry*, %struct.plt_entry** %10, align 8
  %49 = icmp eq %struct.plt_entry* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %5, align 4
  br label %79

52:                                               ; preds = %44
  %53 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %54 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load %struct.plt_entry*, %struct.plt_entry** %55, align 8
  %57 = load %struct.plt_entry*, %struct.plt_entry** %10, align 8
  %58 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %57, i32 0, i32 3
  store %struct.plt_entry* %56, %struct.plt_entry** %58, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = load %struct.plt_entry*, %struct.plt_entry** %10, align 8
  %61 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %60, i32 0, i32 2
  store i32* %59, i32** %61, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.plt_entry*, %struct.plt_entry** %10, align 8
  %64 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.plt_entry*, %struct.plt_entry** %10, align 8
  %66 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load %struct.plt_entry*, %struct.plt_entry** %10, align 8
  %69 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %70 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store %struct.plt_entry* %68, %struct.plt_entry** %71, align 8
  br label %72

72:                                               ; preds = %52, %41
  %73 = load %struct.plt_entry*, %struct.plt_entry** %10, align 8
  %74 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %75, align 8
  %78 = load i32, i32* @TRUE, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %72, %50
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local %struct.plt_entry* @bfd_alloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
