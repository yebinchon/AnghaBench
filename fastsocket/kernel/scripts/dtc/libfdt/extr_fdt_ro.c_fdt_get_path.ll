; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/libfdt/extr_fdt_ro.c_fdt_get_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/libfdt/extr_fdt_ro.c_fdt_get_path.c"
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
  br label %143

23:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %117, %23
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
  br i1 %32, label %33, label %121

33:                                               ; preds = %31
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %117

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %56, %38
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %47, %43
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %44
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 47
  br i1 %55, label %44, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %10, align 4
  br label %39

59:                                               ; preds = %39
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i8* @fdt_get_name(i8* %60, i32 %61, i32* %14)
  store i8* %62, i8** %15, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %14, align 4
  store i32 %66, i32* %5, align 4
  br label %143

67:                                               ; preds = %59
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %68, %69
  %71 = add nsw i32 %70, 1
  %72 = load i32, i32* %9, align 4
  %73 = icmp sle i32 %71, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %67
  %75 = load i8*, i8** %8, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8*, i8** %15, align 8
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @memcpy(i8* %78, i8* %79, i32 %80)
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %11, align 4
  %85 = load i8*, i8** %8, align 8
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8, i8* %85, i64 %88
  store i8 47, i8* %89, align 1
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %74, %67
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %116

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
  br label %143

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
  %115 = load i32, i32* %11, align 4
  store i32 %115, i32* %5, align 4
  br label %143

116:                                              ; preds = %92
  br label %117

117:                                              ; preds = %116, %37
  %118 = load i8*, i8** %6, align 8
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @fdt_next_node(i8* %118, i32 %119, i32* %13)
  store i32 %120, i32* %12, align 4
  br label %24

121:                                              ; preds = %31
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @FDT_ERR_NOTFOUND, align 4
  %124 = sub nsw i32 0, %123
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %129, label %126

126:                                              ; preds = %121
  %127 = load i32, i32* %12, align 4
  %128 = icmp sge i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126, %121
  %130 = load i32, i32* @FDT_ERR_BADOFFSET, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %5, align 4
  br label %143

132:                                              ; preds = %126
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* @FDT_ERR_BADOFFSET, align 4
  %135 = sub nsw i32 0, %134
  %136 = icmp eq i32 %133, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32, i32* @FDT_ERR_BADSTRUCTURE, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %5, align 4
  br label %143

140:                                              ; preds = %132
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %12, align 4
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %141, %137, %129, %110, %101, %65, %20
  %144 = load i32, i32* %5, align 4
  ret i32 %144
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
