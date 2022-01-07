; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libpe/extr_pe_dos.c_ps_update_msdos_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libpe/extr_pe_dos.c_ps_update_msdos_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@PE_C_READ = common dso_local global i64 0, align 8
@LIBPE_F_FD_DONE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LIBPE_F_DIRTY_DOS_HEADER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ps_update_msdos_header(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = icmp eq %struct.TYPE_3__* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %8, %2
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %52

13:                                               ; preds = %8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PE_C_READ, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %13
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @LIBPE_F_FD_DONE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19, %13
  %27 = load i32, i32* @EACCES, align 4
  store i32 %27, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %52

28:                                               ; preds = %19
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = call i32* @malloc(i32 4)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  %37 = icmp eq i32* %34, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOMEM, align 4
  store i32 %39, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %52

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %28
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @LIBPE_F_DIRTY_DOS_HEADER, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %41, %38, %26, %11
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
