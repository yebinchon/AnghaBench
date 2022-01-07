; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_coff-solib.c_coff_solib_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_coff-solib.c_coff_solib_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_ops = type { i32 }
%struct.libent = type { [4 x i32], [4 x i32] }
%struct.objfile = type { i32 }

@exec_bfd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".lib\00", align 1
@OBJF_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coff_solib_add(i8* %0, i32 %1, %struct.target_ops* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.target_ops*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.libent*, align 8
  %13 = alloca %struct.objfile*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.target_ops* %2, %struct.target_ops** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %78

20:                                               ; preds = %4
  %21 = load i32, i32* @exec_bfd, align 4
  %22 = call i32* @bfd_get_section_by_name(i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %78

25:                                               ; preds = %20
  %26 = load i32, i32* @exec_bfd, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @bfd_section_size(i32 %26, i32* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i64 @alloca(i32 %29)
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %11, align 8
  %32 = load i32, i32* @exec_bfd, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @bfd_get_section_contents(i32 %32, i32* %33, i8* %34, i32 0, i32 %35)
  br label %37

37:                                               ; preds = %56, %25
  %38 = load i32, i32* %10, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %76

40:                                               ; preds = %37
  %41 = load i8*, i8** %11, align 8
  %42 = bitcast i8* %41 to %struct.libent*
  store %struct.libent* %42, %struct.libent** %12, align 8
  %43 = load i32, i32* @exec_bfd, align 4
  %44 = load %struct.libent*, %struct.libent** %12, align 8
  %45 = getelementptr inbounds %struct.libent, %struct.libent* %44, i32 0, i32 0
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i64 0, i64 0
  %47 = call i32 @bfd_get_32(i32 %43, i32* %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* @exec_bfd, align 4
  %49 = load %struct.libent*, %struct.libent** %12, align 8
  %50 = getelementptr inbounds %struct.libent, %struct.libent* %49, i32 0, i32 1
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 0
  %52 = call i32 @bfd_get_32(i32 %48, i32* %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %40
  br label %76

56:                                               ; preds = %40
  %57 = load %struct.libent*, %struct.libent** %12, align 8
  %58 = bitcast %struct.libent* %57 to i8*
  %59 = load i32, i32* %15, align 4
  %60 = mul nsw i32 %59, 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  store i8* %62, i8** %16, align 8
  %63 = load i8*, i8** %16, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @OBJF_SHARED, align 4
  %66 = call %struct.objfile* @symbol_file_add(i8* %63, i32 %64, i32* null, i32 0, i32 %65)
  store %struct.objfile* %66, %struct.objfile** %13, align 8
  %67 = load i32, i32* %14, align 4
  %68 = mul nsw i32 %67, 4
  %69 = load i32, i32* %10, align 4
  %70 = sub nsw i32 %69, %68
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %14, align 4
  %72 = mul nsw i32 %71, 4
  %73 = load i8*, i8** %11, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %11, align 8
  br label %37

76:                                               ; preds = %55, %37
  %77 = call i32 (...) @reinit_frame_cache()
  br label %78

78:                                               ; preds = %19, %76, %20
  ret void
}

declare dso_local i32* @bfd_get_section_by_name(i32, i8*) #1

declare dso_local i32 @bfd_section_size(i32, i32*) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @bfd_get_section_contents(i32, i32*, i8*, i32, i32) #1

declare dso_local i32 @bfd_get_32(i32, i32*) #1

declare dso_local %struct.objfile* @symbol_file_add(i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @reinit_frame_cache(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
