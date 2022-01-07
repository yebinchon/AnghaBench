; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_types.c_ctf_type_compat.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_types.c_ctf_type_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctf_type_compat(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__, align 4
  %15 = alloca %struct.TYPE_6__, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @ctf_type_cmp(i32* %18, i32 %19, i32* %20, i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %139

25:                                               ; preds = %4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @ctf_type_resolve(i32* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @ctf_type_kind(i32* %29, i32 %30)
  store i32 %31, i32* %16, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @ctf_type_resolve(i32* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @ctf_type_kind(i32* %35, i32 %36)
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %17, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %62, label %41

41:                                               ; preds = %25
  %42 = load i32, i32* %7, align 4
  %43 = call %struct.TYPE_5__* @ctf_lookup_by_id(i32** %6, i32 %42)
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %10, align 8
  %44 = icmp eq %struct.TYPE_5__* %43, null
  br i1 %44, label %62, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = call %struct.TYPE_5__* @ctf_lookup_by_id(i32** %8, i32 %46)
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %11, align 8
  %48 = icmp eq %struct.TYPE_5__* %47, null
  br i1 %48, label %62, label %49

49:                                               ; preds = %45
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ctf_strptr(i32* %50, i32 %53)
  %55 = load i32*, i32** %8, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ctf_strptr(i32* %55, i32 %58)
  %60 = call i64 @strcmp(i32 %54, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %49, %45, %41, %25
  store i32 0, i32* %5, align 4
  br label %139

63:                                               ; preds = %49
  %64 = load i32, i32* %16, align 4
  switch i32 %64, label %138 [
    i32 131, label %65
    i32 133, label %65
    i32 130, label %81
    i32 135, label %91
    i32 129, label %128
    i32 128, label %128
    i32 134, label %137
    i32 132, label %137
  ]

65:                                               ; preds = %63, %63
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @ctf_type_encoding(i32* %66, i32 %67, i32* %12)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @ctf_type_encoding(i32* %71, i32 %72, i32* %13)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = call i32 @bcmp(i32* %12, i32* %13, i32 4)
  %77 = icmp eq i32 %76, 0
  br label %78

78:                                               ; preds = %75, %70, %65
  %79 = phi i1 [ false, %70 ], [ false, %65 ], [ %77, %75 ]
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %5, align 4
  br label %139

81:                                               ; preds = %63
  %82 = load i32*, i32** %6, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @ctf_type_reference(i32* %83, i32 %84)
  %86 = load i32*, i32** %8, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @ctf_type_reference(i32* %87, i32 %88)
  %90 = call i32 @ctf_type_compat(i32* %82, i32 %85, i32* %86, i32 %89)
  store i32 %90, i32* %5, align 4
  br label %139

91:                                               ; preds = %63
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @ctf_array_info(i32* %92, i32 %93, %struct.TYPE_6__* %14)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %125

96:                                               ; preds = %91
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @ctf_array_info(i32* %97, i32 %98, %struct.TYPE_6__* %15)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %125

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %107, label %125

107:                                              ; preds = %101
  %108 = load i32*, i32** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ctf_type_compat(i32* %108, i32 %110, i32* %111, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %107
  %117 = load i32*, i32** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ctf_type_compat(i32* %117, i32 %119, i32* %120, i32 %122)
  %124 = icmp ne i32 %123, 0
  br label %125

125:                                              ; preds = %116, %107, %101, %96, %91
  %126 = phi i1 [ false, %107 ], [ false, %101 ], [ false, %96 ], [ false, %91 ], [ %124, %116 ]
  %127 = zext i1 %126 to i32
  store i32 %127, i32* %5, align 4
  br label %139

128:                                              ; preds = %63, %63
  %129 = load i32*, i32** %6, align 8
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @ctf_type_size(i32* %129, i32 %130)
  %132 = load i32*, i32** %8, align 8
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @ctf_type_size(i32* %132, i32 %133)
  %135 = icmp eq i32 %131, %134
  %136 = zext i1 %135 to i32
  store i32 %136, i32* %5, align 4
  br label %139

137:                                              ; preds = %63, %63
  store i32 1, i32* %5, align 4
  br label %139

138:                                              ; preds = %63
  store i32 0, i32* %5, align 4
  br label %139

139:                                              ; preds = %138, %137, %128, %125, %81, %78, %62, %24
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local i64 @ctf_type_cmp(i32*, i32, i32*, i32) #1

declare dso_local i32 @ctf_type_resolve(i32*, i32) #1

declare dso_local i32 @ctf_type_kind(i32*, i32) #1

declare dso_local %struct.TYPE_5__* @ctf_lookup_by_id(i32**, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @ctf_strptr(i32*, i32) #1

declare dso_local i32 @ctf_type_encoding(i32*, i32, i32*) #1

declare dso_local i32 @bcmp(i32*, i32*, i32) #1

declare dso_local i32 @ctf_type_reference(i32*, i32) #1

declare dso_local i32 @ctf_array_info(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @ctf_type_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
