; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_util.c_elf_ptrsz.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_util.c_elf_ptrsz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@.str = private unnamed_addr constant [31 x i8] c"failed to read ELF header: %s\0A\00", align 1
@EI_CLASS = common dso_local global i64 0, align 8
@ELFCLASS32 = common dso_local global i64 0, align 8
@ELFCLASS64 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"unknown ELF class %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @elf_ptrsz(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32* @gelf_getehdr(i32* %5, %struct.TYPE_3__* %4)
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = call i64 @elf_errmsg(i32 -1)
  %10 = call i32 @terminate(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* @EI_CLASS, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ELFCLASS32, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store i64 4, i64* %2, align 8
  br label %38

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* @EI_CLASS, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ELFCLASS64, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i64 8, i64* %2, align 8
  br label %38

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @EI_CLASS, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @terminate(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  br label %36

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36
  store i64 0, i64* %2, align 8
  br label %38

38:                                               ; preds = %37, %28, %19
  %39 = load i64, i64* %2, align 8
  ret i64 %39
}

declare dso_local i32* @gelf_getehdr(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @terminate(i8*, i64) #1

declare dso_local i64 @elf_errmsg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
