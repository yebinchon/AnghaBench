; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/libfdt/extr_fdt_ro.c_fdt_get_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/libfdt/extr_fdt_ro.c_fdt_get_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDT_ERR_NOSPACE = common dso_local global i32 0, align 4
@FDT_ERR_NOTFOUND = common dso_local global i32 0, align 4
@FDT_ERR_BADOFFSET = common dso_local global i32 0, align 4
@FDT_ERR_BADSTRUCTURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_get_path(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @FDT_CHECK_HEADER(i8* %16)
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @FDT_ERR_NOSPACE, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %142

23:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %116, %23
  %25 = load i32, i32* %12, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp sle i32 %28, %29
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi i1 [ false, %24 ], [ %30, %27 ]
  br i1 %32, label %33, label %120

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %51, %33
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %42, %38
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %39
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 47
  br i1 %50, label %39, label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %10, align 4
  br label %34

54:                                               ; preds = %34
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %92

58:                                               ; preds = %54
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i8* @fdt_get_name(i8* %59, i32 %60, i32* %14)
  store i8* %61, i8** %15, align 8
  %62 = load i8*, i8** %15, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %5, align 4
  br label %142

66:                                               ; preds = %58
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %67, %68
  %70 = add nsw i32 %69, 1
  %71 = load i32, i32* %9, align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %66
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8*, i8** %15, align 8
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @memcpy(i8* %77, i8* %78, i32 %79)
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %11, align 4
  %84 = load i8*, i8** %8, align 8
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  store i8 47, i8* %88, align 1
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %73, %66
  br label %92

92:                                               ; preds = %91, %54
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %115

96:                                               ; preds = %92
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 1
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32, i32* @FDT_ERR_NOSPACE, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %5, align 4
  br label %142

104:                                              ; preds = %96
  %105 = load i32, i32* %11, align 4
  %106 = icmp sgt i32 %105, 1
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i8*, i8** %8, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  store i8 0, i8* %114, align 1
  store i32 0, i32* %5, align 4
  br label %142

115:                                              ; preds = %92
  br label %116

116:                                              ; preds = %115
  %117 = load i8*, i8** %6, align 8
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @fdt_next_node(i8* %117, i32 %118, i32* %13)
  store i32 %119, i32* %12, align 4
  br label %24

120:                                              ; preds = %31
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* @FDT_ERR_NOTFOUND, align 4
  %123 = sub nsw i32 0, %122
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %128, label %125

125:                                              ; preds = %120
  %126 = load i32, i32* %12, align 4
  %127 = icmp sge i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125, %120
  %129 = load i32, i32* @FDT_ERR_BADOFFSET, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %5, align 4
  br label %142

131:                                              ; preds = %125
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* @FDT_ERR_BADOFFSET, align 4
  %134 = sub nsw i32 0, %133
  %135 = icmp eq i32 %132, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i32, i32* @FDT_ERR_BADSTRUCTURE, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %5, align 4
  br label %142

139:                                              ; preds = %131
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %12, align 4
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %140, %136, %128, %110, %101, %64, %20
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i32 @FDT_CHECK_HEADER(i8*) #1

declare dso_local i8* @fdt_get_name(i8*, i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @fdt_next_node(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
