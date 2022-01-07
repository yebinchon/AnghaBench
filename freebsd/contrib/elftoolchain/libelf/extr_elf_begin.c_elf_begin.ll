; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_elf_begin.c_elf_begin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_elf_begin.c_elf_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i32 }

@version = common dso_local global i32 0, align 4
@EV_NONE = common dso_local global i64 0, align 8
@SEQUENCE = common dso_local global i32 0, align 4
@ARGUMENT = common dso_local global i32 0, align 4
@ELF_K_AR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @elf_begin(i32 %0, i32 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  %9 = load i32, i32* @version, align 4
  %10 = call i64 @LIBELF_PRIVATE(i32 %9)
  %11 = load i64, i64* @EV_NONE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @SEQUENCE, align 4
  %15 = call i32 @LIBELF_SET_ERROR(i32 %14, i32 0)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %82

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %51 [
    i32 131, label %18
    i32 128, label %19
    i32 130, label %20
    i32 129, label %27
  ]

18:                                               ; preds = %16
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %82

19:                                               ; preds = %16
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  br label %54

20:                                               ; preds = %16
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = icmp ne %struct.TYPE_7__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @ARGUMENT, align 4
  %25 = call i32 @LIBELF_SET_ERROR(i32 %24, i32 0)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %82

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %16, %26
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = icmp ne %struct.TYPE_7__* %28, null
  br i1 %29, label %30, label %50

30:                                               ; preds = %27
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %35, %30
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41, %35
  %48 = load i32, i32* @ARGUMENT, align 4
  %49 = call i32 @LIBELF_SET_ERROR(i32 %48, i32 0)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %82

50:                                               ; preds = %41, %27
  br label %54

51:                                               ; preds = %16
  %52 = load i32, i32* @ARGUMENT, align 4
  %53 = call i32 @LIBELF_SET_ERROR(i32 %52, i32 0)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %82

54:                                               ; preds = %50, %19
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = icmp eq %struct.TYPE_7__* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call %struct.TYPE_7__* @_libelf_open_object(i32 %58, i32 %59, i32 1)
  store %struct.TYPE_7__* %60, %struct.TYPE_7__** %8, align 8
  br label %80

61:                                               ; preds = %54
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ELF_K_AR, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %73 = call %struct.TYPE_7__* @_libelf_ar_open_member(i32 %70, i32 %71, %struct.TYPE_7__* %72)
  store %struct.TYPE_7__* %73, %struct.TYPE_7__** %8, align 8
  br label %79

74:                                               ; preds = %61
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %75, %struct.TYPE_7__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %74, %67
  br label %80

80:                                               ; preds = %79, %57
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %81, %struct.TYPE_7__** %4, align 8
  br label %82

82:                                               ; preds = %80, %51, %47, %23, %18, %13
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %83
}

declare dso_local i64 @LIBELF_PRIVATE(i32) #1

declare dso_local i32 @LIBELF_SET_ERROR(i32, i32) #1

declare dso_local %struct.TYPE_7__* @_libelf_open_object(i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @_libelf_ar_open_member(i32, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
