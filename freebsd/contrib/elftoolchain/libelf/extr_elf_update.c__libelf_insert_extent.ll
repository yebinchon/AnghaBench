; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_elf_update.c__libelf_insert_extent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_elf_update.c__libelf_insert_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Elf_Extent_List = type { i32 }
%struct._Elf_Extent = type { i32, i8*, i8*, i8* }

@ELF_EXTENT_EHDR = common dso_local global i32 0, align 4
@ELF_EXTENT_SHDR = common dso_local global i32 0, align 4
@LAYOUT = common dso_local global i32 0, align 4
@RESOURCE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ex_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._Elf_Extent_List*, i32, i8*, i8*, i8*)* @_libelf_insert_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_libelf_insert_extent(%struct._Elf_Extent_List* %0, i32 %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct._Elf_Extent_List*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct._Elf_Extent*, align 8
  %13 = alloca %struct._Elf_Extent*, align 8
  store %struct._Elf_Extent_List* %0, %struct._Elf_Extent_List** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @ELF_EXTENT_EHDR, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @ELF_EXTENT_SHDR, align 4
  %20 = icmp sle i32 %18, %19
  br label %21

21:                                               ; preds = %17, %5
  %22 = phi i1 [ false, %5 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  store %struct._Elf_Extent* null, %struct._Elf_Extent** %13, align 8
  %25 = load %struct._Elf_Extent_List*, %struct._Elf_Extent_List** %7, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @_libelf_extent_is_unused(%struct._Elf_Extent_List* %25, i8* %26, i8* %27, %struct._Elf_Extent** %13)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* @LAYOUT, align 4
  %32 = call i32 @LIBELF_SET_ERROR(i32 %31, i32 0)
  store i32 0, i32* %6, align 4
  br label %66

33:                                               ; preds = %21
  %34 = call %struct._Elf_Extent* @malloc(i32 32)
  store %struct._Elf_Extent* %34, %struct._Elf_Extent** %12, align 8
  %35 = icmp eq %struct._Elf_Extent* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* @RESOURCE, align 4
  %38 = load i32, i32* @errno, align 4
  %39 = call i32 @LIBELF_SET_ERROR(i32 %37, i32 %38)
  store i32 0, i32* %6, align 4
  br label %66

40:                                               ; preds = %33
  %41 = load i8*, i8** %9, align 8
  %42 = load %struct._Elf_Extent*, %struct._Elf_Extent** %12, align 8
  %43 = getelementptr inbounds %struct._Elf_Extent, %struct._Elf_Extent* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load %struct._Elf_Extent*, %struct._Elf_Extent** %12, align 8
  %46 = getelementptr inbounds %struct._Elf_Extent, %struct._Elf_Extent* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load %struct._Elf_Extent*, %struct._Elf_Extent** %12, align 8
  %49 = getelementptr inbounds %struct._Elf_Extent, %struct._Elf_Extent* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct._Elf_Extent*, %struct._Elf_Extent** %12, align 8
  %52 = getelementptr inbounds %struct._Elf_Extent, %struct._Elf_Extent* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct._Elf_Extent*, %struct._Elf_Extent** %13, align 8
  %54 = icmp ne %struct._Elf_Extent* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %40
  %56 = load %struct._Elf_Extent*, %struct._Elf_Extent** %13, align 8
  %57 = load %struct._Elf_Extent*, %struct._Elf_Extent** %12, align 8
  %58 = load i32, i32* @ex_next, align 4
  %59 = call i32 @SLIST_INSERT_AFTER(%struct._Elf_Extent* %56, %struct._Elf_Extent* %57, i32 %58)
  br label %65

60:                                               ; preds = %40
  %61 = load %struct._Elf_Extent_List*, %struct._Elf_Extent_List** %7, align 8
  %62 = load %struct._Elf_Extent*, %struct._Elf_Extent** %12, align 8
  %63 = load i32, i32* @ex_next, align 4
  %64 = call i32 @SLIST_INSERT_HEAD(%struct._Elf_Extent_List* %61, %struct._Elf_Extent* %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %55
  store i32 1, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %36, %30
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_libelf_extent_is_unused(%struct._Elf_Extent_List*, i8*, i8*, %struct._Elf_Extent**) #1

declare dso_local i32 @LIBELF_SET_ERROR(i32, i32) #1

declare dso_local %struct._Elf_Extent* @malloc(i32) #1

declare dso_local i32 @SLIST_INSERT_AFTER(%struct._Elf_Extent*, %struct._Elf_Extent*, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(%struct._Elf_Extent_List*, %struct._Elf_Extent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
