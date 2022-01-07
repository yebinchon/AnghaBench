; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_opncls.c_bfd_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_opncls.c_bfd_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { {}* }
%struct.stat = type { i32 }

@_bfd_write_contents = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@_close_and_cleanup = common dso_local global i32 0, align 4
@BFD_IN_MEMORY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@write_direction = common dso_local global i64 0, align 8
@EXEC_P = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bfd_close(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.stat, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = call i64 @bfd_write_p(%struct.TYPE_12__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = load i32, i32* @_bfd_write_contents, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = call i32 @BFD_SEND_FMT(%struct.TYPE_12__* %11, i32 %12, %struct.TYPE_12__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %2, align 8
  br label %92

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = load i32, i32* @_close_and_cleanup, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = call i32 @BFD_SEND(%struct.TYPE_12__* %20, i32 %21, %struct.TYPE_12__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = load i64, i64* @FALSE, align 8
  store i64 %26, i64* %2, align 8
  br label %92

27:                                               ; preds = %19
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @BFD_IN_MEMORY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %27
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = bitcast {}** %38 to i64 (%struct.TYPE_12__*)**
  %40 = load i64 (%struct.TYPE_12__*)*, i64 (%struct.TYPE_12__*)** %39, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = call i64 %40(%struct.TYPE_12__* %41)
  store i64 %42, i64* %4, align 8
  br label %45

43:                                               ; preds = %27
  %44 = load i64, i64* @TRUE, align 8
  store i64 %44, i64* %4, align 8
  br label %45

45:                                               ; preds = %43, %34
  %46 = load i64, i64* %4, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %88

48:                                               ; preds = %45
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @write_direction, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %88

54:                                               ; preds = %48
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @EXEC_P, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %88

61:                                               ; preds = %54
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @stat(i32 %64, %struct.stat* %5)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %61
  %68 = call i32 @umask(i32 0)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @umask(i32 %69)
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @S_IXUSR, align 4
  %77 = load i32, i32* @S_IXGRP, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @S_IXOTH, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* %6, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %80, %82
  %84 = or i32 %75, %83
  %85 = and i32 511, %84
  %86 = call i32 @chmod(i32 %73, i32 %85)
  br label %87

87:                                               ; preds = %67, %61
  br label %88

88:                                               ; preds = %87, %54, %48, %45
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %90 = call i32 @_bfd_delete_bfd(%struct.TYPE_12__* %89)
  %91 = load i64, i64* %4, align 8
  store i64 %91, i64* %2, align 8
  br label %92

92:                                               ; preds = %88, %25, %16
  %93 = load i64, i64* %2, align 8
  ret i64 %93
}

declare dso_local i64 @bfd_write_p(%struct.TYPE_12__*) #1

declare dso_local i32 @BFD_SEND_FMT(%struct.TYPE_12__*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @BFD_SEND(%struct.TYPE_12__*, i32, %struct.TYPE_12__*) #1

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i32 @umask(i32) #1

declare dso_local i32 @chmod(i32, i32) #1

declare dso_local i32 @_bfd_delete_bfd(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
