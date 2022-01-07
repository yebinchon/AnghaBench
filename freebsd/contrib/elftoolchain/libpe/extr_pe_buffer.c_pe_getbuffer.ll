; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libpe/extr_pe_buffer.c_pe_getbuffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libpe/extr_pe_buffer.c_pe_getbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@LIBPE_F_LOAD_SECTION = common dso_local global i32 0, align 4
@LIBPE_F_FD_DONE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@LIBPE_F_SPECIAL_FILE = common dso_local global i32 0, align 4
@sb_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pe_getbuffer(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = icmp eq %struct.TYPE_7__* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  store i32 %11, i32* @errno, align 4
  store i32* null, i32** %3, align 8
  br label %66

12:                                               ; preds = %2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %6, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @LIBPE_F_LOAD_SECTION, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %12
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @LIBPE_F_FD_DONE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @EACCES, align 4
  store i32 %30, i32* @errno, align 4
  store i32* null, i32** %3, align 8
  br label %66

31:                                               ; preds = %22
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @LIBPE_F_SPECIAL_FILE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = call i64 @libpe_load_all_sections(%struct.TYPE_8__* %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32* null, i32** %3, align 8
  br label %66

43:                                               ; preds = %38
  br label %51

44:                                               ; preds = %31
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = call i64 @libpe_load_section(%struct.TYPE_8__* %45, %struct.TYPE_7__* %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32* null, i32** %3, align 8
  br label %66

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %43
  br label %52

52:                                               ; preds = %51, %12
  %53 = load i32*, i32** %5, align 8
  store i32* %53, i32** %7, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = call i32* @STAILQ_FIRST(i32* %58)
  store i32* %59, i32** %7, align 8
  br label %64

60:                                               ; preds = %52
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* @sb_next, align 4
  %63 = call i32* @STAILQ_NEXT(i32* %61, i32 %62)
  store i32* %63, i32** %7, align 8
  br label %64

64:                                               ; preds = %60, %56
  %65 = load i32*, i32** %7, align 8
  store i32* %65, i32** %3, align 8
  br label %66

66:                                               ; preds = %64, %49, %42, %29, %10
  %67 = load i32*, i32** %3, align 8
  ret i32* %67
}

declare dso_local i64 @libpe_load_all_sections(%struct.TYPE_8__*) #1

declare dso_local i64 @libpe_load_section(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

declare dso_local i32* @STAILQ_FIRST(i32*) #1

declare dso_local i32* @STAILQ_NEXT(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
