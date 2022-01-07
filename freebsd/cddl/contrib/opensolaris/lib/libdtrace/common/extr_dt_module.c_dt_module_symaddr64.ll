; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_module.c_dt_module_symaddr64.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_module.c_dt_module_symaddr64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i64, i32*, i32*)* @dt_module_symaddr64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dt_module_symaddr64(%struct.TYPE_7__* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__**, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_8__**
  store %struct.TYPE_8__** %21, %struct.TYPE_8__*** %10, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %11, align 8
  store i32 0, i32* %15, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %16, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %134

35:                                               ; preds = %4
  br label %36

36:                                               ; preds = %59, %35
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %15, align 4
  %39 = sub nsw i32 %37, %38
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %60

41:                                               ; preds = %36
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %16, align 4
  %44 = add nsw i32 %42, %43
  %45 = sdiv i32 %44, 2
  store i32 %45, i32* %14, align 4
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %47, i64 %49
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %46, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %41
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %15, align 4
  br label %59

57:                                               ; preds = %41
  %58 = load i32, i32* %14, align 4
  store i32 %58, i32* %16, align 4
  br label %59

59:                                               ; preds = %57, %55
  br label %36

60:                                               ; preds = %36
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %63 = load i32, i32* %16, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %62, i64 %64
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %61, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i32, i32* %15, align 4
  br label %74

72:                                               ; preds = %60
  %73 = load i32, i32* %16, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  store i32 %75, i32* %13, align 4
  %76 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %76, i64 %78
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  store %struct.TYPE_8__* %80, %struct.TYPE_8__** %12, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %17, align 8
  br label %84

84:                                               ; preds = %100, %74
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %13, align 4
  %87 = icmp ne i32 %85, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %84
  %89 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %89, i64 %91
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %17, align 8
  %97 = icmp eq i64 %95, %96
  br label %98

98:                                               ; preds = %88, %84
  %99 = phi i1 [ false, %84 ], [ %97, %88 ]
  br i1 %99, label %100, label %106

100:                                              ; preds = %98
  %101 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %101, i64 %103
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  store %struct.TYPE_8__* %105, %struct.TYPE_8__** %12, align 8
  br label %84

106:                                              ; preds = %98
  %107 = load i64, i64* %7, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = sub nsw i64 %107, %110
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @MAX(i32 %114, i32 1)
  %116 = icmp slt i64 %111, %115
  br i1 %116, label %117, label %133

117:                                              ; preds = %106
  %118 = load i32*, i32** %9, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %123 = ptrtoint %struct.TYPE_8__* %121 to i64
  %124 = ptrtoint %struct.TYPE_8__* %122 to i64
  %125 = sub i64 %123, %124
  %126 = sdiv exact i64 %125, 16
  %127 = trunc i64 %126 to i32
  %128 = load i32*, i32** %9, align 8
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %120, %117
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %131 = load i32*, i32** %8, align 8
  %132 = call i32* @dt_module_symgelf64(%struct.TYPE_8__* %130, i32* %131)
  store i32* %132, i32** %5, align 8
  br label %134

133:                                              ; preds = %106
  store i32* null, i32** %5, align 8
  br label %134

134:                                              ; preds = %133, %129, %34
  %135 = load i32*, i32** %5, align 8
  ret i32* %135
}

declare dso_local i64 @MAX(i32, i32) #1

declare dso_local i32* @dt_module_symgelf64(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
