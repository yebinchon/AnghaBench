; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_elf_flag.c_elf_flagelf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_elf_flag.c_elf_flagelf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }

@ELF_C_SET = common dso_local global i64 0, align 8
@ELF_C_CLR = common dso_local global i64 0, align 8
@ELF_K_ELF = common dso_local global i64 0, align 8
@ELF_F_ARCHIVE = common dso_local global i32 0, align 4
@ELF_F_ARCHIVE_SYSV = common dso_local global i32 0, align 4
@ELF_F_DIRTY = common dso_local global i32 0, align 4
@ELF_F_LAYOUT = common dso_local global i32 0, align 4
@ARGUMENT = common dso_local global i32 0, align 4
@ELF_C_WRITE = common dso_local global i64 0, align 8
@MODE = common dso_local global i32 0, align 4
@LIBELF_F_API_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elf_flagelf(%struct.TYPE_3__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = icmp eq %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %89

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @ELF_C_SET, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @ELF_C_CLR, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %38, label %20

20:                                               ; preds = %16, %12
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ELF_K_ELF, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @ELF_F_ARCHIVE, align 4
  %29 = load i32, i32* @ELF_F_ARCHIVE_SYSV, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @ELF_F_DIRTY, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @ELF_F_LAYOUT, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = and i32 %27, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %26, %20, %16
  %39 = load i32, i32* @ARGUMENT, align 4
  %40 = call i32 @LIBELF_SET_ERROR(i32 %39, i32 0)
  store i32 0, i32* %4, align 4
  br label %89

41:                                               ; preds = %26
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @ELF_F_ARCHIVE_SYSV, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @ELF_F_ARCHIVE, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @ARGUMENT, align 4
  %53 = call i32 @LIBELF_SET_ERROR(i32 %52, i32 0)
  store i32 0, i32* %4, align 4
  br label %89

54:                                               ; preds = %46, %41
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @ELF_F_ARCHIVE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ELF_C_WRITE, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @MODE, align 4
  %67 = call i32 @LIBELF_SET_ERROR(i32 %66, i32 0)
  store i32 0, i32* %4, align 4
  br label %89

68:                                               ; preds = %59, %54
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* @ELF_C_SET, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  store i32 %77, i32* %8, align 4
  br label %85

78:                                               ; preds = %68
  %79 = load i32, i32* %7, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, %80
  store i32 %84, i32* %82, align 8
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %78, %72
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @LIBELF_F_API_MASK, align 4
  %88 = and i32 %86, %87
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %85, %65, %51, %38, %11
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @LIBELF_SET_ERROR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
