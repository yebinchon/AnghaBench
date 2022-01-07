; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_new_vers_pattern.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_new_vers_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_elf_version_expr = type { i8*, i8*, i8*, i64, i64, %struct.bfd_elf_version_expr* }

@.str = private unnamed_addr constant [2 x i8] c"C\00", align 1
@BFD_ELF_VERSION_C_TYPE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"C++\00", align 1
@BFD_ELF_VERSION_CXX_TYPE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"Java\00", align 1
@BFD_ELF_VERSION_JAVA_TYPE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [52 x i8] c"%X%P: unknown language `%s' in version information\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfd_elf_version_expr* @lang_new_vers_pattern(%struct.bfd_elf_version_expr* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.bfd_elf_version_expr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bfd_elf_version_expr*, align 8
  store %struct.bfd_elf_version_expr* %0, %struct.bfd_elf_version_expr** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = call %struct.bfd_elf_version_expr* @xmalloc(i32 48)
  store %struct.bfd_elf_version_expr* %10, %struct.bfd_elf_version_expr** %9, align 8
  %11 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %5, align 8
  %12 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %13 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %12, i32 0, i32 5
  store %struct.bfd_elf_version_expr* %11, %struct.bfd_elf_version_expr** %13, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %19

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  br label %19

19:                                               ; preds = %17, %16
  %20 = phi i8* [ null, %16 ], [ %18, %17 ]
  %21 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %22 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %24 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %26 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i8*, i8** %6, align 8
  br label %34

31:                                               ; preds = %19
  %32 = load i8*, i8** %6, align 8
  %33 = call i8* @realsymbol(i8* %32)
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi i8* [ %30, %29 ], [ %33, %31 ]
  %36 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %37 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load i8*, i8** %7, align 8
  %42 = call i64 @strcasecmp(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40, %34
  %45 = load i8*, i8** @BFD_ELF_VERSION_C_TYPE, align 8
  %46 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %47 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  br label %73

48:                                               ; preds = %40
  %49 = load i8*, i8** %7, align 8
  %50 = call i64 @strcasecmp(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i8*, i8** @BFD_ELF_VERSION_CXX_TYPE, align 8
  %54 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %55 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  br label %72

56:                                               ; preds = %48
  %57 = load i8*, i8** %7, align 8
  %58 = call i64 @strcasecmp(i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i8*, i8** @BFD_ELF_VERSION_JAVA_TYPE, align 8
  %62 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %63 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  br label %71

64:                                               ; preds = %56
  %65 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @einfo(i32 %65, i8* %66)
  %68 = load i8*, i8** @BFD_ELF_VERSION_C_TYPE, align 8
  %69 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %70 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %64, %60
  br label %72

72:                                               ; preds = %71, %52
  br label %73

73:                                               ; preds = %72, %44
  %74 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %75 = call %struct.bfd_elf_version_expr* @ldemul_new_vers_pattern(%struct.bfd_elf_version_expr* %74)
  ret %struct.bfd_elf_version_expr* %75
}

declare dso_local %struct.bfd_elf_version_expr* @xmalloc(i32) #1

declare dso_local i8* @realsymbol(i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @einfo(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.bfd_elf_version_expr* @ldemul_new_vers_pattern(%struct.bfd_elf_version_expr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
