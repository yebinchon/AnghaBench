; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_elf_data.c_elf_newdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_elf_data.c_elf_newdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i64, i64, i32* }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64 }
%struct._Libelf_Data = type { %struct.TYPE_10__ }

@ARGUMENT = common dso_local global i32 0, align 4
@ELF_K_ELF = common dso_local global i64 0, align 8
@d_next = common dso_local global i32 0, align 4
@ELF_T_BYTE = common dso_local global i32 0, align 4
@version = common dso_local global i32 0, align 4
@ELF_C_SET = common dso_local global i32 0, align 4
@ELF_F_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @elf_newdata(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct._Libelf_Data*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = icmp eq %struct.TYPE_9__* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %4, align 8
  %12 = icmp eq %struct.TYPE_11__* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %8, %1
  %14 = load i32, i32* @ARGUMENT, align 4
  %15 = call i32 @LIBELF_SET_ERROR(i32 %14, i32 0)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %82

16:                                               ; preds = %8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ELF_K_ELF, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %16
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = call i64 @STAILQ_EMPTY(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = call i32* @elf_getdata(%struct.TYPE_9__* %39, i32* null)
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %82

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %33, %28, %16
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = call %struct._Libelf_Data* @_libelf_allocate_data(%struct.TYPE_9__* %45)
  store %struct._Libelf_Data* %46, %struct._Libelf_Data** %5, align 8
  %47 = icmp eq %struct._Libelf_Data* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %82

49:                                               ; preds = %44
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load %struct._Libelf_Data*, %struct._Libelf_Data** %5, align 8
  %53 = load i32, i32* @d_next, align 4
  %54 = call i32 @STAILQ_INSERT_TAIL(i32* %51, %struct._Libelf_Data* %52, i32 %53)
  %55 = load %struct._Libelf_Data*, %struct._Libelf_Data** %5, align 8
  %56 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct._Libelf_Data*, %struct._Libelf_Data** %5, align 8
  %59 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 5
  store i32* null, i32** %60, align 8
  %61 = load %struct._Libelf_Data*, %struct._Libelf_Data** %5, align 8
  %62 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 4
  store i64 -1, i64* %63, align 8
  %64 = load %struct._Libelf_Data*, %struct._Libelf_Data** %5, align 8
  %65 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 3
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* @ELF_T_BYTE, align 4
  %68 = load %struct._Libelf_Data*, %struct._Libelf_Data** %5, align 8
  %69 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 8
  %71 = load i32, i32* @version, align 4
  %72 = call i32 @LIBELF_PRIVATE(i32 %71)
  %73 = load %struct._Libelf_Data*, %struct._Libelf_Data** %5, align 8
  %74 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %77 = load i32, i32* @ELF_C_SET, align 4
  %78 = load i32, i32* @ELF_F_DIRTY, align 4
  %79 = call i32 @elf_flagscn(%struct.TYPE_9__* %76, i32 %77, i32 %78)
  %80 = load %struct._Libelf_Data*, %struct._Libelf_Data** %5, align 8
  %81 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %80, i32 0, i32 0
  store %struct.TYPE_10__* %81, %struct.TYPE_10__** %2, align 8
  br label %82

82:                                               ; preds = %49, %48, %42, %13
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %83
}

declare dso_local i32 @LIBELF_SET_ERROR(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @STAILQ_EMPTY(i32*) #1

declare dso_local i32* @elf_getdata(%struct.TYPE_9__*, i32*) #1

declare dso_local %struct._Libelf_Data* @_libelf_allocate_data(%struct.TYPE_9__*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct._Libelf_Data*, i32) #1

declare dso_local i32 @LIBELF_PRIVATE(i32) #1

declare dso_local i32 @elf_flagscn(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
