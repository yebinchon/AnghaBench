; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_get_block_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_get_block_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i64* }

@DW_DLV_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"dwarf_get_elf failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"gelf_getehdr failed: %s\00", align 1
@EI_DATA = common dso_local global i64 0, align 8
@ELFDATA2LSB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_7__*)* @get_block_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_block_value(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @dwarf_get_elf(i32 %9, i32** %6, i32* %8)
  %11 = load i64, i64* @DW_DLV_OK, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @dwarf_errmsg(i32 %14)
  %16 = call i32 @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 0, i32* %3, align 4
  br label %80

17:                                               ; preds = %2
  %18 = load i32*, i32** %6, align 8
  %19 = call %struct.TYPE_6__* @gelf_getehdr(i32* %18, %struct.TYPE_6__* %7)
  %20 = icmp ne %struct.TYPE_6__* %19, %7
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = call i32 @elf_errmsg(i32 -1)
  %23 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  store i32 0, i32* %3, align 4
  br label %80

24:                                               ; preds = %17
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 5
  br i1 %28, label %29, label %51

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @EI_DATA, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ELFDATA2LSB, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %29
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i32*
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = call i32 @le32dec(i32* %42)
  store i32 %43, i32* %3, align 4
  br label %80

44:                                               ; preds = %29
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i32*
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = call i32 @be32dec(i32* %49)
  store i32 %50, i32* %3, align 4
  br label %80

51:                                               ; preds = %24
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 9
  br i1 %55, label %56, label %78

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* @EI_DATA, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ELFDATA2LSB, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %56
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i32*
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = call i32 @le64dec(i32* %69)
  store i32 %70, i32* %3, align 4
  br label %80

71:                                               ; preds = %56
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i32*
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = call i32 @be64dec(i32* %76)
  store i32 %77, i32* %3, align 4
  br label %80

78:                                               ; preds = %51
  br label %79

79:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %71, %64, %44, %37, %21, %13
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @dwarf_get_elf(i32, i32**, i32*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @dwarf_errmsg(i32) #1

declare dso_local %struct.TYPE_6__* @gelf_getehdr(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @le32dec(i32*) #1

declare dso_local i32 @be32dec(i32*) #1

declare dso_local i32 @le64dec(i32*) #1

declare dso_local i32 @be64dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
