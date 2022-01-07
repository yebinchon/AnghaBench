; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_elf_cntl.c_elf_cntl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_elf_cntl.c_elf_cntl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64 }

@ELF_C_FDDONE = common dso_local global i64 0, align 8
@ELF_C_FDREAD = common dso_local global i64 0, align 8
@ARGUMENT = common dso_local global i32 0, align 4
@ARCHIVE = common dso_local global i32 0, align 4
@ELF_C_WRITE = common dso_local global i64 0, align 8
@MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elf_cntl(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = icmp eq %struct.TYPE_3__* %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @ELF_C_FDDONE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @ELF_C_FDREAD, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %2
  %17 = load i32, i32* @ARGUMENT, align 4
  %18 = call i32 @LIBELF_SET_ERROR(i32 %17, i32 0)
  store i32 -1, i32* %3, align 4
  br label %44

19:                                               ; preds = %12, %8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @ARCHIVE, align 4
  %26 = call i32 @LIBELF_SET_ERROR(i32 %25, i32 0)
  store i32 -1, i32* %3, align 4
  br label %44

27:                                               ; preds = %19
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @ELF_C_FDREAD, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ELF_C_WRITE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @MODE, align 4
  %39 = call i32 @LIBELF_SET_ERROR(i32 %38, i32 0)
  store i32 -1, i32* %3, align 4
  br label %44

40:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %44

41:                                               ; preds = %27
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i32 -1, i32* %43, align 8
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %40, %37, %24, %16
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @LIBELF_SET_ERROR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
