; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_elf_getident.c_elf_getident.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_elf_getident.c_elf_getident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i32* }

@ARGUMENT = common dso_local global i32 0, align 4
@ELF_C_WRITE = common dso_local global i64 0, align 8
@SEQUENCE = common dso_local global i32 0, align 4
@ELF_K_AR = common dso_local global i64 0, align 8
@ELF_C_READ = common dso_local global i64 0, align 8
@SARMAG = common dso_local global i64 0, align 8
@ELF_K_ELF = common dso_local global i64 0, align 8
@EI_NIDENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @elf_getident(%struct.TYPE_3__* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = icmp eq %struct.TYPE_3__* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* @ARGUMENT, align 4
  %10 = call i32 @LIBELF_SET_ERROR(i32 %9, i32 0)
  br label %73

11:                                               ; preds = %2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ELF_C_WRITE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @SEQUENCE, align 4
  %24 = call i32 @LIBELF_SET_ERROR(i32 %23, i32 0)
  br label %73

25:                                               ; preds = %17, %11
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ELF_K_AR, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ELF_C_READ, align 8
  %36 = icmp eq i64 %34, %35
  br label %37

37:                                               ; preds = %31, %25
  %38 = phi i1 [ true, %25 ], [ %36, %31 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i64*, i64** %5, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %43, label %68

43:                                               ; preds = %37
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ELF_K_AR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i64, i64* @SARMAG, align 8
  %51 = load i64*, i64** %5, align 8
  store i64 %50, i64* %51, align 8
  br label %67

52:                                               ; preds = %43
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ELF_K_ELF, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i64, i64* @EI_NIDENT, align 8
  %60 = load i64*, i64** %5, align 8
  store i64 %59, i64* %60, align 8
  br label %66

61:                                               ; preds = %52
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %5, align 8
  store i64 %64, i64* %65, align 8
  br label %66

66:                                               ; preds = %61, %58
  br label %67

67:                                               ; preds = %66, %49
  br label %68

68:                                               ; preds = %67, %37
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = bitcast i32* %71 to i8*
  store i8* %72, i8** %3, align 8
  br label %79

73:                                               ; preds = %22, %8
  %74 = load i64*, i64** %5, align 8
  %75 = icmp ne i64* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i64*, i64** %5, align 8
  store i64 0, i64* %77, align 8
  br label %78

78:                                               ; preds = %76, %73
  store i8* null, i8** %3, align 8
  br label %79

79:                                               ; preds = %78, %68
  %80 = load i8*, i8** %3, align 8
  ret i8* %80
}

declare dso_local i32 @LIBELF_SET_ERROR(i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
