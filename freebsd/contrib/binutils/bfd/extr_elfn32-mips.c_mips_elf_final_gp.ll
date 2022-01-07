; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfn32-mips.c_mips_elf_final_gp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfn32-mips.c_mips_elf_final_gp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@bfd_reloc_undefined = common dso_local global i32 0, align 4
@BSF_SECTION_SYM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"GP relative relocation when _gp not defined\00", align 1
@bfd_reloc_dangerous = common dso_local global i32 0, align 4
@bfd_reloc_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, i64, i8**, i64*)* @mips_elf_final_gp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_elf_final_gp(i32* %0, %struct.TYPE_6__* %1, i64 %2, i8** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64* %4, i64** %11, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = call i64 @bfd_is_und_section(%struct.TYPE_7__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  %18 = load i64, i64* %9, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i64*, i64** %11, align 8
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @bfd_reloc_undefined, align 4
  store i32 %22, i32* %6, align 4
  br label %70

23:                                               ; preds = %17, %5
  %24 = load i32*, i32** %7, align 8
  %25 = call i64 @_bfd_get_gp_value(i32* %24)
  %26 = load i64*, i64** %11, align 8
  store i64 %25, i64* %26, align 8
  %27 = load i64*, i64** %11, align 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %68

30:                                               ; preds = %23
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @BSF_SECTION_SYM, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %33, %30
  %41 = load i64, i64* %9, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %11, align 8
  store i64 %50, i64* %51, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i64*, i64** %11, align 8
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @_bfd_set_gp_value(i32* %52, i64 %54)
  br label %67

56:                                               ; preds = %40
  %57 = load i32*, i32** %7, align 8
  %58 = load i64*, i64** %11, align 8
  %59 = call i32 @mips_elf_assign_gp(i32* %57, i64* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = call i64 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %63 = inttoptr i64 %62 to i8*
  %64 = load i8**, i8*** %10, align 8
  store i8* %63, i8** %64, align 8
  %65 = load i32, i32* @bfd_reloc_dangerous, align 4
  store i32 %65, i32* %6, align 4
  br label %70

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %43
  br label %68

68:                                               ; preds = %67, %33, %23
  %69 = load i32, i32* @bfd_reloc_ok, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %68, %61, %20
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i64 @bfd_is_und_section(%struct.TYPE_7__*) #1

declare dso_local i64 @_bfd_get_gp_value(i32*) #1

declare dso_local i32 @_bfd_set_gp_value(i32*, i64) #1

declare dso_local i32 @mips_elf_assign_gp(i32*, i64*) #1

declare dso_local i64 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
