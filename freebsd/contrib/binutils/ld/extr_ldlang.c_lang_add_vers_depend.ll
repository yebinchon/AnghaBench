; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_add_vers_depend.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_add_vers_depend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_elf_version_tree = type { i32, %struct.bfd_elf_version_tree* }
%struct.bfd_elf_version_deps = type { %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_deps* }

@lang_elf_version_info = common dso_local global %struct.bfd_elf_version_tree* null, align 8
@.str = private unnamed_addr constant [46 x i8] c"%X%P: unable to find version dependency `%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfd_elf_version_deps* @lang_add_vers_depend(%struct.bfd_elf_version_deps* %0, i8* %1) #0 {
  %3 = alloca %struct.bfd_elf_version_deps*, align 8
  %4 = alloca %struct.bfd_elf_version_deps*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bfd_elf_version_deps*, align 8
  %7 = alloca %struct.bfd_elf_version_tree*, align 8
  store %struct.bfd_elf_version_deps* %0, %struct.bfd_elf_version_deps** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = call %struct.bfd_elf_version_deps* @xmalloc(i32 16)
  store %struct.bfd_elf_version_deps* %8, %struct.bfd_elf_version_deps** %6, align 8
  %9 = load %struct.bfd_elf_version_deps*, %struct.bfd_elf_version_deps** %4, align 8
  %10 = load %struct.bfd_elf_version_deps*, %struct.bfd_elf_version_deps** %6, align 8
  %11 = getelementptr inbounds %struct.bfd_elf_version_deps, %struct.bfd_elf_version_deps* %10, i32 0, i32 1
  store %struct.bfd_elf_version_deps* %9, %struct.bfd_elf_version_deps** %11, align 8
  %12 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** @lang_elf_version_info, align 8
  store %struct.bfd_elf_version_tree* %12, %struct.bfd_elf_version_tree** %7, align 8
  br label %13

13:                                               ; preds = %29, %2
  %14 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %7, align 8
  %15 = icmp ne %struct.bfd_elf_version_tree* %14, null
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %7, align 8
  %18 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @strcmp(i32 %19, i8* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %7, align 8
  %25 = load %struct.bfd_elf_version_deps*, %struct.bfd_elf_version_deps** %6, align 8
  %26 = getelementptr inbounds %struct.bfd_elf_version_deps, %struct.bfd_elf_version_deps* %25, i32 0, i32 0
  store %struct.bfd_elf_version_tree* %24, %struct.bfd_elf_version_tree** %26, align 8
  %27 = load %struct.bfd_elf_version_deps*, %struct.bfd_elf_version_deps** %6, align 8
  store %struct.bfd_elf_version_deps* %27, %struct.bfd_elf_version_deps** %3, align 8
  br label %38

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %7, align 8
  %31 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %30, i32 0, i32 1
  %32 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %31, align 8
  store %struct.bfd_elf_version_tree* %32, %struct.bfd_elf_version_tree** %7, align 8
  br label %13

33:                                               ; preds = %13
  %34 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @einfo(i32 %34, i8* %35)
  %37 = load %struct.bfd_elf_version_deps*, %struct.bfd_elf_version_deps** %6, align 8
  store %struct.bfd_elf_version_deps* %37, %struct.bfd_elf_version_deps** %3, align 8
  br label %38

38:                                               ; preds = %33, %23
  %39 = load %struct.bfd_elf_version_deps*, %struct.bfd_elf_version_deps** %3, align 8
  ret %struct.bfd_elf_version_deps* %39
}

declare dso_local %struct.bfd_elf_version_deps* @xmalloc(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @einfo(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
