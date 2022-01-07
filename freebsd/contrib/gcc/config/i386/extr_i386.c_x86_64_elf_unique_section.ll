; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_x86_64_elf_unique_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_x86_64_elf_unique_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* (i8*)* }

@ix86_cmodel = common dso_local global i64 0, align 8
@CM_MEDIUM = common dso_local global i64 0, align 8
@CM_MEDIUM_PIC = common dso_local global i64 0, align 8
@HAVE_COMDAT_GROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c".gnu.linkonce.ld.\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c".ldata.\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c".gnu.linkonce.lb.\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c".lbss.\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c".gnu.linkonce.lr.\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c".lrodata.\00", align 1
@targetm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @x86_64_elf_unique_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86_64_elf_unique_section(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load i64, i64* @ix86_cmodel, align 8
  %13 = load i64, i64* @CM_MEDIUM, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* @ix86_cmodel, align 8
  %17 = load i64, i64* @CM_MEDIUM_PIC, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %91

19:                                               ; preds = %15, %2
  %20 = load i32, i32* %3, align 4
  %21 = call i64 @ix86_in_large_data_p(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %91

23:                                               ; preds = %19
  store i8* null, i8** %5, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @DECL_ONE_ONLY(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* @HAVE_COMDAT_GROUP, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i1 [ false, %23 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @categorize_decl_for_section(i32 %34, i32 %35)
  switch i32 %36, label %55 [
    i32 142, label %37
    i32 141, label %37
    i32 140, label %37
    i32 139, label %37
    i32 138, label %37
    i32 143, label %42
    i32 137, label %47
    i32 135, label %47
    i32 134, label %47
    i32 136, label %47
    i32 131, label %52
    i32 132, label %52
    i32 133, label %52
    i32 128, label %54
    i32 129, label %54
    i32 130, label %54
  ]

37:                                               ; preds = %31, %31, %31, %31, %31
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)
  store i8* %41, i8** %5, align 8
  br label %55

42:                                               ; preds = %31
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  store i8* %46, i8** %5, align 8
  br label %55

47:                                               ; preds = %31, %31, %31, %31
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)
  store i8* %51, i8** %5, align 8
  br label %55

52:                                               ; preds = %31, %31, %31
  %53 = call i32 (...) @gcc_unreachable()
  br label %54

54:                                               ; preds = %31, %31, %31, %52
  br label %55

55:                                               ; preds = %31, %54, %47, %42, %37
  %56 = load i8*, i8** %5, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %90

58:                                               ; preds = %55
  %59 = load i8*, i8** %5, align 8
  %60 = call i64 @strlen(i8* %59)
  store i64 %60, i64* %9, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @DECL_ASSEMBLER_NAME(i32 %61)
  %63 = call i8* @IDENTIFIER_POINTER(i32 %62)
  store i8* %63, i8** %7, align 8
  %64 = load i8* (i8*)*, i8* (i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @targetm, i32 0, i32 0), align 8
  %65 = load i8*, i8** %7, align 8
  %66 = call i8* %64(i8* %65)
  store i8* %66, i8** %7, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i64 @strlen(i8* %67)
  store i64 %68, i64* %8, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = add i64 %69, %70
  %72 = add i64 %71, 1
  %73 = call i8* @alloca(i64 %72)
  store i8* %73, i8** %10, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @memcpy(i8* %74, i8* %75, i64 %76)
  %78 = load i8*, i8** %10, align 8
  %79 = load i64, i64* %9, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  %81 = load i8*, i8** %7, align 8
  %82 = load i64, i64* %8, align 8
  %83 = add i64 %82, 1
  %84 = call i32 @memcpy(i8* %80, i8* %81, i64 %83)
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %9, align 8
  %87 = add i64 %85, %86
  %88 = load i8*, i8** %10, align 8
  %89 = call i32 @build_string(i64 %87, i8* %88)
  store i32 %89, i32* %11, align 4
  br label %95

90:                                               ; preds = %55
  br label %91

91:                                               ; preds = %90, %19, %15
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @default_unique_section(i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %91, %58
  ret void
}

declare dso_local i64 @ix86_in_large_data_p(i32) #1

declare dso_local i64 @DECL_ONE_ONLY(i32) #1

declare dso_local i32 @categorize_decl_for_section(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @IDENTIFIER_POINTER(i32) #1

declare dso_local i32 @DECL_ASSEMBLER_NAME(i32) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @build_string(i64, i8*) #1

declare dso_local i32 @default_unique_section(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
