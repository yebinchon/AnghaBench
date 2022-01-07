; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_size_plt_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-alpha.c_elf64_alpha_size_plt_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32* }

@.str = private unnamed_addr constant [5 x i8] c".plt\00", align 1
@elf64_alpha_size_plt_section_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c".rela.plt\00", align 1
@elf64_alpha_use_secureplt = common dso_local global i64 0, align 8
@NEW_PLT_HEADER_SIZE = common dso_local global i64 0, align 8
@NEW_PLT_ENTRY_SIZE = common dso_local global i64 0, align 8
@OLD_PLT_HEADER_SIZE = common dso_local global i64 0, align 8
@OLD_PLT_ENTRY_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c".got.plt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfd_link_info*)* @elf64_alpha_size_plt_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf64_alpha_size_plt_section(%struct.bfd_link_info* %0) #0 {
  %2 = alloca %struct.bfd_link_info*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %2, align 8
  %8 = load %struct.bfd_link_info*, %struct.bfd_link_info** %2, align 8
  %9 = call %struct.TYPE_6__* @elf_hash_table(%struct.bfd_link_info* %8)
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call %struct.TYPE_5__* @bfd_get_section_by_name(i32* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %3, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = icmp eq %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %68

17:                                               ; preds = %1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.bfd_link_info*, %struct.bfd_link_info** %2, align 8
  %21 = call i32 @alpha_elf_hash_table(%struct.bfd_link_info* %20)
  %22 = load i32, i32* @elf64_alpha_size_plt_section_1, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = call i32 @alpha_elf_link_hash_traverse(i32 %21, i32 %22, %struct.TYPE_5__* %23)
  %25 = load i32*, i32** %7, align 8
  %26 = call %struct.TYPE_5__* @bfd_get_section_by_name(i32* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %4, align 8
  store i64 0, i64* %6, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %17
  %32 = load i64, i64* @elf64_alpha_use_secureplt, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NEW_PLT_HEADER_SIZE, align 8
  %39 = sub i64 %37, %38
  %40 = load i64, i64* @NEW_PLT_ENTRY_SIZE, align 8
  %41 = udiv i64 %39, %40
  store i64 %41, i64* %6, align 8
  br label %50

42:                                               ; preds = %31
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @OLD_PLT_HEADER_SIZE, align 8
  %47 = sub i64 %45, %46
  %48 = load i64, i64* @OLD_PLT_ENTRY_SIZE, align 8
  %49 = udiv i64 %47, %48
  store i64 %49, i64* %6, align 8
  br label %50

50:                                               ; preds = %42, %34
  br label %51

51:                                               ; preds = %50, %17
  %52 = load i64, i64* %6, align 8
  %53 = mul i64 %52, 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load i64, i64* @elf64_alpha_use_secureplt, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %51
  %59 = load i32*, i32** %7, align 8
  %60 = call %struct.TYPE_5__* @bfd_get_section_by_name(i32* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp ne i64 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 16, i32 0
  %65 = sext i32 %64 to i64
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %16, %58, %51
  ret void
}

declare dso_local %struct.TYPE_6__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_5__* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local i32 @alpha_elf_link_hash_traverse(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @alpha_elf_hash_table(%struct.bfd_link_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
