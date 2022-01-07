; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-elf.c_elf_frob_file_before_adjust.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-elf.c_elf_frob_file_before_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@symbol_rootP = common dso_local global i32* null, align 8
@ELF_VER_CHR = common dso_local global i8 0, align 1
@symbol_lastP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @elf_frob_file_before_adjust() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = load i32*, i32** @symbol_rootP, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %93

6:                                                ; preds = %0
  %7 = load i32*, i32** @symbol_rootP, align 8
  store i32* %7, i32** %1, align 8
  br label %8

8:                                                ; preds = %89, %6
  %9 = load i32*, i32** %1, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %92

11:                                               ; preds = %8
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @S_IS_DEFINED(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %88, label %15

15:                                               ; preds = %11
  %16 = load i32*, i32** %1, align 8
  %17 = call %struct.TYPE_2__* @symbol_get_obj(i32* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %71

21:                                               ; preds = %15
  %22 = load i32*, i32** %1, align 8
  %23 = call %struct.TYPE_2__* @symbol_get_obj(i32* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i8, i8* @ELF_VER_CHR, align 1
  %27 = call i8* @strchr(i64 %25, i8 signext %26)
  store i8* %27, i8** %2, align 8
  %28 = load i8*, i8** %2, align 8
  %29 = icmp ne i8* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @know(i32 %30)
  %32 = load i8*, i8** %2, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = load i8, i8* @ELF_VER_CHR, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %21
  %40 = load i8*, i8** %2, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* @ELF_VER_CHR, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %39
  %48 = load i8*, i8** %2, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 3
  %50 = call i32 @strlen(i8* %49)
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %3, align 8
  %53 = load i8*, i8** %2, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8*, i8** %2, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 3
  %57 = load i64, i64* %3, align 8
  %58 = call i32 @memmove(i8* %54, i8* %56, i64 %57)
  br label %59

59:                                               ; preds = %47, %39, %21
  %60 = load i32*, i32** %1, align 8
  %61 = call i64 @symbol_used_p(i32* %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load i32*, i32** %1, align 8
  %65 = call i64 @symbol_used_in_reloc_p(i32* %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32*, i32** %1, align 8
  %69 = call i32 @symbol_remove(i32* %68, i32** @symbol_rootP, i32* @symbol_lastP)
  br label %70

70:                                               ; preds = %67, %63, %59
  br label %87

71:                                               ; preds = %15
  %72 = load i32*, i32** %1, align 8
  %73 = call i64 @S_IS_WEAK(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  %76 = load i32*, i32** %1, align 8
  %77 = call i64 @symbol_used_p(i32* %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load i32*, i32** %1, align 8
  %81 = call i64 @symbol_used_in_reloc_p(i32* %80)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32*, i32** %1, align 8
  %85 = call i32 @symbol_remove(i32* %84, i32** @symbol_rootP, i32* @symbol_lastP)
  br label %86

86:                                               ; preds = %83, %79, %75, %71
  br label %87

87:                                               ; preds = %86, %70
  br label %88

88:                                               ; preds = %87, %11
  br label %89

89:                                               ; preds = %88
  %90 = load i32*, i32** %1, align 8
  %91 = call i32* @symbol_next(i32* %90)
  store i32* %91, i32** %1, align 8
  br label %8

92:                                               ; preds = %8
  br label %93

93:                                               ; preds = %92, %0
  ret void
}

declare dso_local i32 @S_IS_DEFINED(i32*) #1

declare dso_local %struct.TYPE_2__* @symbol_get_obj(i32*) #1

declare dso_local i8* @strchr(i64, i8 signext) #1

declare dso_local i32 @know(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i64 @symbol_used_p(i32*) #1

declare dso_local i64 @symbol_used_in_reloc_p(i32*) #1

declare dso_local i32 @symbol_remove(i32*, i32**, i32*) #1

declare dso_local i64 @S_IS_WEAK(i32*) #1

declare dso_local i32* @symbol_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
