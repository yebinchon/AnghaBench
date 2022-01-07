; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfcode.h_bfd_elf64_write_shdrs_and_ehdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfcode.h_bfd_elf64_write_shdrs_and_ehdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64 }
%struct.TYPE_9__ = type { i32, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SHN_LORESERVE = common dso_local global i32 0, align 4
@SHN_HIRESERVE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elf_write_shdrs_and_ehdr(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call %struct.TYPE_10__* @elf_elfheader(i32* %10)
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %5, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call %struct.TYPE_9__** @elf_elfsections(i32* %12)
  store %struct.TYPE_9__** %13, %struct.TYPE_9__*** %7, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = call i32 @elf_swap_ehdr_out(i32* %14, %struct.TYPE_10__* %15, i32* %4)
  store i32 4, i32* %9, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @SEEK_SET, align 4
  %19 = call i64 @bfd_seek(i32* %17, i32 0, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* %9, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @bfd_bwrite(i32* %4, i32 %22, i32* %23)
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21, %1
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %2, align 4
  br label %126

29:                                               ; preds = %21
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SHN_LORESERVE, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %39, i64 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 4
  br label %43

43:                                               ; preds = %35, %29
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SHN_LORESERVE, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %53, i64 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %49, %43
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 4
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %9, align 4
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32* @bfd_alloc(i32* %65, i32 %66)
  store i32* %67, i32** %6, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %57
  %71 = load i32, i32* @FALSE, align 4
  store i32 %71, i32* %2, align 4
  br label %126

72:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %101, %72
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ult i32 %74, %77
  br i1 %78, label %79, label %106

79:                                               ; preds = %73
  %80 = load i32*, i32** %3, align 8
  %81 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %8, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = call i32 @elf_swap_shdr_out(i32* %80, %struct.TYPE_9__* %82, i32* %86)
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @SHN_LORESERVE, align 4
  %90 = sub nsw i32 %89, 1
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %79
  %93 = load i32, i32* @SHN_HIRESERVE, align 4
  %94 = add nsw i32 %93, 1
  %95 = load i32, i32* @SHN_LORESERVE, align 4
  %96 = sub nsw i32 %94, %95
  %97 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %97, i64 %98
  store %struct.TYPE_9__** %99, %struct.TYPE_9__*** %7, align 8
  br label %100

100:                                              ; preds = %92, %79
  br label %101

101:                                              ; preds = %100
  %102 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %102, i32 1
  store %struct.TYPE_9__** %103, %struct.TYPE_9__*** %7, align 8
  %104 = load i32, i32* %8, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %73

106:                                              ; preds = %73
  %107 = load i32*, i32** %3, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = load i32, i32* @SEEK_SET, align 4
  %113 = call i64 @bfd_seek(i32* %107, i32 %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %106
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i32*, i32** %3, align 8
  %119 = call i32 @bfd_bwrite(i32* %116, i32 %117, i32* %118)
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %115, %106
  %123 = load i32, i32* @FALSE, align 4
  store i32 %123, i32* %2, align 4
  br label %126

124:                                              ; preds = %115
  %125 = load i32, i32* @TRUE, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %124, %122, %70, %27
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.TYPE_10__* @elf_elfheader(i32*) #1

declare dso_local %struct.TYPE_9__** @elf_elfsections(i32*) #1

declare dso_local i32 @elf_swap_ehdr_out(i32*, %struct.TYPE_10__*, i32*) #1

declare dso_local i64 @bfd_seek(i32*, i32, i32) #1

declare dso_local i32 @bfd_bwrite(i32*, i32, i32*) #1

declare dso_local i32* @bfd_alloc(i32*, i32) #1

declare dso_local i32 @elf_swap_shdr_out(i32*, %struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
