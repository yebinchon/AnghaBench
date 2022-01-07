; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_append_dynamic_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_append_dynamic_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.bfd_elf_dynamic_list* }
%struct.bfd_elf_dynamic_list = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.bfd_elf_version_expr* }
%struct.bfd_elf_version_expr = type { %struct.bfd_elf_version_expr* }

@link_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@lang_vers_match = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lang_append_dynamic_list(%struct.bfd_elf_version_expr* %0) #0 {
  %2 = alloca %struct.bfd_elf_version_expr*, align 8
  %3 = alloca %struct.bfd_elf_version_expr*, align 8
  %4 = alloca %struct.bfd_elf_dynamic_list*, align 8
  store %struct.bfd_elf_version_expr* %0, %struct.bfd_elf_version_expr** %2, align 8
  %5 = load %struct.bfd_elf_dynamic_list*, %struct.bfd_elf_dynamic_list** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @link_info, i32 0, i32 0), align 8
  %6 = icmp ne %struct.bfd_elf_dynamic_list* %5, null
  br i1 %6, label %7, label %30

7:                                                ; preds = %1
  %8 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %2, align 8
  store %struct.bfd_elf_version_expr* %8, %struct.bfd_elf_version_expr** %3, align 8
  br label %9

9:                                                ; preds = %15, %7
  %10 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %3, align 8
  %11 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %10, i32 0, i32 0
  %12 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %11, align 8
  %13 = icmp ne %struct.bfd_elf_version_expr* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14
  %16 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %3, align 8
  %17 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %16, i32 0, i32 0
  %18 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %17, align 8
  store %struct.bfd_elf_version_expr* %18, %struct.bfd_elf_version_expr** %3, align 8
  br label %9

19:                                               ; preds = %9
  %20 = load %struct.bfd_elf_dynamic_list*, %struct.bfd_elf_dynamic_list** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @link_info, i32 0, i32 0), align 8
  %21 = getelementptr inbounds %struct.bfd_elf_dynamic_list, %struct.bfd_elf_dynamic_list* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %22, align 8
  %24 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %3, align 8
  %25 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %24, i32 0, i32 0
  store %struct.bfd_elf_version_expr* %23, %struct.bfd_elf_version_expr** %25, align 8
  %26 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %2, align 8
  %27 = load %struct.bfd_elf_dynamic_list*, %struct.bfd_elf_dynamic_list** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @link_info, i32 0, i32 0), align 8
  %28 = getelementptr inbounds %struct.bfd_elf_dynamic_list, %struct.bfd_elf_dynamic_list* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store %struct.bfd_elf_version_expr* %26, %struct.bfd_elf_version_expr** %29, align 8
  br label %40

30:                                               ; preds = %1
  %31 = call %struct.bfd_elf_dynamic_list* @xcalloc(i32 1, i32 16)
  store %struct.bfd_elf_dynamic_list* %31, %struct.bfd_elf_dynamic_list** %4, align 8
  %32 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %2, align 8
  %33 = load %struct.bfd_elf_dynamic_list*, %struct.bfd_elf_dynamic_list** %4, align 8
  %34 = getelementptr inbounds %struct.bfd_elf_dynamic_list, %struct.bfd_elf_dynamic_list* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store %struct.bfd_elf_version_expr* %32, %struct.bfd_elf_version_expr** %35, align 8
  %36 = load i32, i32* @lang_vers_match, align 4
  %37 = load %struct.bfd_elf_dynamic_list*, %struct.bfd_elf_dynamic_list** %4, align 8
  %38 = getelementptr inbounds %struct.bfd_elf_dynamic_list, %struct.bfd_elf_dynamic_list* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.bfd_elf_dynamic_list*, %struct.bfd_elf_dynamic_list** %4, align 8
  store %struct.bfd_elf_dynamic_list* %39, %struct.bfd_elf_dynamic_list** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @link_info, i32 0, i32 0), align 8
  br label %40

40:                                               ; preds = %30, %19
  ret void
}

declare dso_local %struct.bfd_elf_dynamic_list* @xcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
