; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_libelf_shdr.c__libelf_getshdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_libelf_shdr.c__libelf_getshdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }

@ELF_K_ELF = common dso_local global i64 0, align 8
@ARGUMENT = common dso_local global i32 0, align 4
@ELFCLASSNONE = common dso_local global i32 0, align 4
@CLASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_libelf_getshdr(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = icmp eq %struct.TYPE_4__* %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %6, align 8
  %13 = icmp eq %struct.TYPE_5__* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ELF_K_ELF, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14, %9, %2
  %21 = load i32, i32* @ARGUMENT, align 4
  %22 = call i32 @LIBELF_SET_ERROR(i32 %21, i32 0)
  store i8* null, i8** %3, align 8
  br label %44

23:                                               ; preds = %14
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @ELFCLASSNONE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %23
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @CLASS, align 4
  %39 = call i32 @LIBELF_SET_ERROR(i32 %38, i32 0)
  store i8* null, i8** %3, align 8
  br label %44

40:                                               ; preds = %31
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = bitcast i32* %42 to i8*
  store i8* %43, i8** %3, align 8
  br label %44

44:                                               ; preds = %40, %37, %20
  %45 = load i8*, i8** %3, align 8
  ret i8* %45
}

declare dso_local i32 @LIBELF_SET_ERROR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
