; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_symbols.c_finalize_external_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_symbols.c_finalize_external_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i64, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.strbuf* }
%struct.strbuf = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_6__ = type { %struct.symbuf* }
%struct.symbuf = type { i64, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@ELFCLASS32 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @finalize_external_symtab(%struct.elfcopy* %0) #0 {
  %2 = alloca %struct.elfcopy*, align 8
  %3 = alloca %struct.symbuf*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i32, align 4
  store %struct.elfcopy* %0, %struct.elfcopy** %2, align 8
  %6 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %7 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %6, i32 0, i32 2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.symbuf*, %struct.symbuf** %9, align 8
  store %struct.symbuf* %10, %struct.symbuf** %3, align 8
  %11 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %12 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %11, i32 0, i32 1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.strbuf*, %struct.strbuf** %14, align 8
  store %struct.strbuf* %15, %struct.strbuf** %4, align 8
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %96, %1
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = load %struct.symbuf*, %struct.symbuf** %3, align 8
  %20 = getelementptr inbounds %struct.symbuf, %struct.symbuf* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %99

23:                                               ; preds = %16
  %24 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %25 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ELFCLASS32, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %62

29:                                               ; preds = %23
  %30 = load %struct.symbuf*, %struct.symbuf** %3, align 8
  %31 = getelementptr inbounds %struct.symbuf, %struct.symbuf* %30, i32 0, i32 2
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, -1
  br i1 %38, label %39, label %47

39:                                               ; preds = %29
  %40 = load %struct.symbuf*, %struct.symbuf** %3, align 8
  %41 = getelementptr inbounds %struct.symbuf, %struct.symbuf* %40, i32 0, i32 2
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  br label %61

47:                                               ; preds = %29
  %48 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %49 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.symbuf*, %struct.symbuf** %3, align 8
  %53 = getelementptr inbounds %struct.symbuf, %struct.symbuf* %52, i32 0, i32 2
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, %51
  store i64 %60, i64* %58, align 8
  br label %61

61:                                               ; preds = %47, %39
  br label %95

62:                                               ; preds = %23
  %63 = load %struct.symbuf*, %struct.symbuf** %3, align 8
  %64 = getelementptr inbounds %struct.symbuf, %struct.symbuf* %63, i32 0, i32 1
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, -1
  br i1 %71, label %72, label %80

72:                                               ; preds = %62
  %73 = load %struct.symbuf*, %struct.symbuf** %3, align 8
  %74 = getelementptr inbounds %struct.symbuf, %struct.symbuf* %73, i32 0, i32 1
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  br label %94

80:                                               ; preds = %62
  %81 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %82 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.symbuf*, %struct.symbuf** %3, align 8
  %86 = getelementptr inbounds %struct.symbuf, %struct.symbuf* %85, i32 0, i32 1
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, %84
  store i64 %93, i64* %91, align 8
  br label %94

94:                                               ; preds = %80, %72
  br label %95

95:                                               ; preds = %94, %61
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %16

99:                                               ; preds = %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
