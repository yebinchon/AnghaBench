; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c_coff_object_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c_coff_object_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.internal_filehdr = type { i64, i32 }
%struct.internal_aouthdr = type { i32 }

@bfd_error_system_call = common dso_local global i64 0, align 8
@bfd_error_wrong_format = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @coff_object_p(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.internal_filehdr, align 8
  %9 = alloca %struct.internal_aouthdr, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @bfd_coff_filhsz(i32* %11)
  store i64 %12, i64* %4, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @bfd_coff_aoutsz(i32* %13)
  store i64 %14, i64* %5, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i8* @bfd_alloc(i32* %15, i64 %16)
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %102

21:                                               ; preds = %1
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i64 @bfd_bread(i8* %22, i64 %23, i32* %24)
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = call i64 (...) @bfd_get_error()
  %30 = load i64, i64* @bfd_error_system_call, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @bfd_error_wrong_format, align 4
  %34 = call i32 @bfd_set_error(i32 %33)
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i32*, i32** %3, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @bfd_release(i32* %36, i8* %37)
  store i32* null, i32** %2, align 8
  br label %102

39:                                               ; preds = %21
  %40 = load i32*, i32** %3, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @bfd_coff_swap_filehdr_in(i32* %40, i8* %41, %struct.internal_filehdr* %8)
  %43 = load i32*, i32** %3, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @bfd_release(i32* %43, i8* %44)
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @bfd_coff_bad_format_hook(i32* %46, %struct.internal_filehdr* %8)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %8, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49, %39
  %55 = load i32, i32* @bfd_error_wrong_format, align 4
  %56 = call i32 @bfd_set_error(i32 %55)
  store i32* null, i32** %2, align 8
  br label %102

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %8, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %6, align 4
  %60 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %8, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %91

63:                                               ; preds = %57
  %64 = load i32*, i32** %3, align 8
  %65 = load i64, i64* %5, align 8
  %66 = call i8* @bfd_alloc(i32* %64, i64 %65)
  store i8* %66, i8** %10, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32* null, i32** %2, align 8
  br label %102

70:                                               ; preds = %63
  %71 = load i8*, i8** %10, align 8
  %72 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %8, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32*, i32** %3, align 8
  %75 = call i64 @bfd_bread(i8* %71, i64 %73, i32* %74)
  %76 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %8, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %75, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %70
  %80 = load i32*, i32** %3, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = call i32 @bfd_release(i32* %80, i8* %81)
  store i32* null, i32** %2, align 8
  br label %102

83:                                               ; preds = %70
  %84 = load i32*, i32** %3, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = bitcast %struct.internal_aouthdr* %9 to i8*
  %87 = call i32 @bfd_coff_swap_aouthdr_in(i32* %84, i8* %85, i8* %86)
  %88 = load i32*, i32** %3, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = call i32 @bfd_release(i32* %88, i8* %89)
  br label %91

91:                                               ; preds = %83, %57
  %92 = load i32*, i32** %3, align 8
  %93 = load i32, i32* %6, align 4
  %94 = getelementptr inbounds %struct.internal_filehdr, %struct.internal_filehdr* %8, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %99

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98, %97
  %100 = phi %struct.internal_aouthdr* [ %9, %97 ], [ null, %98 ]
  %101 = call i32* @coff_real_object_p(i32* %92, i32 %93, %struct.internal_filehdr* %8, %struct.internal_aouthdr* %100)
  store i32* %101, i32** %2, align 8
  br label %102

102:                                              ; preds = %99, %79, %69, %54, %35, %20
  %103 = load i32*, i32** %2, align 8
  ret i32* %103
}

declare dso_local i64 @bfd_coff_filhsz(i32*) #1

declare dso_local i64 @bfd_coff_aoutsz(i32*) #1

declare dso_local i8* @bfd_alloc(i32*, i64) #1

declare dso_local i64 @bfd_bread(i8*, i64, i32*) #1

declare dso_local i64 @bfd_get_error(...) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32 @bfd_release(i32*, i8*) #1

declare dso_local i32 @bfd_coff_swap_filehdr_in(i32*, i8*, %struct.internal_filehdr*) #1

declare dso_local i32 @bfd_coff_bad_format_hook(i32*, %struct.internal_filehdr*) #1

declare dso_local i32 @bfd_coff_swap_aouthdr_in(i32*, i8*, i8*) #1

declare dso_local i32* @coff_real_object_p(i32*, i32, %struct.internal_filehdr*, %struct.internal_aouthdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
