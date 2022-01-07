; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_read_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_read_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"filename is null\00", align 1
@nm_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"'%s'\00", align 1
@ELF_C_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"elf_begin error: %s\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"elf_begin error\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"arf is null.\00", align 1
@ELF_K_NONE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"%s: File format not recognized\00", align 1
@ELF_K_AR = common dso_local global i64 0, align 8
@PRINT_NAME_MULTI = common dso_local global i64 0, align 8
@sym_elem_print_all = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"\0A%s:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @read_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_object(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %1
  %15 = phi i1 [ false, %1 ], [ true, %13 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nm_opts, i32 0, i32 3), align 4
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @fileargs_open(i32 %18, i8* %19)
  store i32 %20, i32* %8, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @warn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  store i32 1, i32* %2, align 4
  br label %109

25:                                               ; preds = %14
  %26 = load i32, i32* @ELF_C_READ, align 4
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32* @elf_begin(i32 %27, i32 %28, i32* null)
  store i32* %29, i32** %5, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = call i32 (...) @elf_errno()
  store i32 %32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = call i8* @elf_errmsg(i32 %35)
  %37 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  br label %40

38:                                               ; preds = %31
  %39 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @close(i32 %41)
  store i32 1, i32* %2, align 4
  br label %109

43:                                               ; preds = %25
  %44 = load i32*, i32** %5, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %47

47:                                               ; preds = %46, %43
  %48 = phi i1 [ false, %43 ], [ true, %46 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  store i32 0, i32* %9, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = call i64 @elf_kind(i32* %51)
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* @ELF_K_NONE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %47
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %56)
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @elf_end(i32* %58)
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @close(i32 %60)
  store i32 1, i32* %2, align 4
  br label %109

62:                                               ; preds = %47
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @ELF_K_AR, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %62
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nm_opts, i32 0, i32 0), align 8
  %68 = load i64, i64* @PRINT_NAME_MULTI, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nm_opts, i32 0, i32 1), align 8
  %72 = load i64, i64* @sym_elem_print_all, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i8*, i8** %3, align 8
  %76 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %74, %70, %66
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nm_opts, i32 0, i32 2), align 8
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32, i32* %8, align 4
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @print_ar_index(i32 %81, i32* %82)
  br label %84

84:                                               ; preds = %80, %77
  br label %85

85:                                               ; preds = %84, %62
  br label %86

86:                                               ; preds = %92, %85
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32*, i32** %5, align 8
  %90 = call i32* @elf_begin(i32 %87, i32 %88, i32* %89)
  store i32* %90, i32** %4, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %103

92:                                               ; preds = %86
  %93 = load i32*, i32** %4, align 8
  %94 = load i8*, i8** %3, align 8
  %95 = load i64, i64* %7, align 8
  %96 = call i32 @read_elf(i32* %93, i8* %94, i64 %95)
  %97 = load i32, i32* %9, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %9, align 4
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @elf_next(i32* %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @elf_end(i32* %101)
  br label %86

103:                                              ; preds = %86
  %104 = load i32*, i32** %5, align 8
  %105 = call i32 @elf_end(i32* %104)
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @close(i32 %106)
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %103, %55, %40, %22
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fileargs_open(i32, i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32* @elf_begin(i32, i32, i32*) #1

declare dso_local i32 @elf_errno(...) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i8* @elf_errmsg(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @elf_kind(i32*) #1

declare dso_local i32 @elf_end(i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @print_ar_index(i32, i32*) #1

declare dso_local i32 @read_elf(i32*, i8*, i64) #1

declare dso_local i32 @elf_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
