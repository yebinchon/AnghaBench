; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-strtab.c__bfd_elf_strtab_emit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-strtab.c__bfd_elf_strtab_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_strtab_hash = type { i64, i64, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_elf_strtab_emit(i32* %0, %struct.elf_strtab_hash* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.elf_strtab_hash*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.elf_strtab_hash* %1, %struct.elf_strtab_hash** %5, align 8
  store i64 1, i64* %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @bfd_bwrite(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 1, i32* %10)
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %3, align 4
  br label %80

15:                                               ; preds = %2
  store i64 1, i64* %7, align 8
  br label %16

16:                                               ; preds = %68, %15
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %5, align 8
  %19 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %71

22:                                               ; preds = %16
  %23 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %5, align 8
  %24 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %25, i64 %26
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @BFD_ASSERT(i32 %32)
  %34 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %5, align 8
  %35 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %36, i64 %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %22
  br label %68

45:                                               ; preds = %22
  %46 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %5, align 8
  %47 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %48, i64 %49
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %8, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @bfd_bwrite(i8* %55, i32 %56, i32* %57)
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %45
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %3, align 4
  br label %80

63:                                               ; preds = %45
  %64 = load i32, i32* %9, align 4
  %65 = zext i32 %64 to i64
  %66 = load i64, i64* %6, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %6, align 8
  br label %68

68:                                               ; preds = %63, %44
  %69 = load i64, i64* %7, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %7, align 8
  br label %16

71:                                               ; preds = %16
  %72 = load i64, i64* %6, align 8
  %73 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %5, align 8
  %74 = getelementptr inbounds %struct.elf_strtab_hash, %struct.elf_strtab_hash* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @BFD_ASSERT(i32 %77)
  %79 = load i32, i32* @TRUE, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %71, %61, %13
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @bfd_bwrite(i8*, i32, i32*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
