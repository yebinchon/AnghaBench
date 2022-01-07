; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_elf_scn.c_elf_nextscn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_elf_scn.c_elf_nextscn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }

@ELF_K_ELF = common dso_local global i64 0, align 8
@ARGUMENT = common dso_local global i32 0, align 4
@scntree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @elf_nextscn(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %7 = icmp eq %struct.TYPE_15__* %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %2
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ELF_K_ELF, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %23, label %14

14:                                               ; preds = %8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %16 = icmp ne %struct.TYPE_14__* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %22 = icmp ne %struct.TYPE_15__* %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17, %8, %2
  %24 = load i32, i32* @ARGUMENT, align 4
  %25 = call i32 @LIBELF_SET_ERROR(i32 %24, i32 0)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %42

26:                                               ; preds = %17, %14
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %28 = icmp eq %struct.TYPE_14__* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %31 = call %struct.TYPE_14__* @elf_getscn(%struct.TYPE_15__* %30, i64 1)
  br label %40

32:                                               ; preds = %26
  %33 = load i32, i32* @scntree, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %39 = call %struct.TYPE_14__* @RB_NEXT(i32 %33, i32* %37, %struct.TYPE_14__* %38)
  br label %40

40:                                               ; preds = %32, %29
  %41 = phi %struct.TYPE_14__* [ %31, %29 ], [ %39, %32 ]
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %3, align 8
  br label %42

42:                                               ; preds = %40, %23
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  ret %struct.TYPE_14__* %43
}

declare dso_local i32 @LIBELF_SET_ERROR(i32, i32) #1

declare dso_local %struct.TYPE_14__* @elf_getscn(%struct.TYPE_15__*, i64) #1

declare dso_local %struct.TYPE_14__* @RB_NEXT(i32, i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
