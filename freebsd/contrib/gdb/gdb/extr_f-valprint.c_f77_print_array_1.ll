; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_f-valprint.c_f77_print_array_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_f-valprint.c_f77_print_array_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@print_max = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"( \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.type*, i8*, i64, %struct.ui_file*, i32, i32, i32, i32, i32*)* @f77_print_array_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f77_print_array_1(i32 %0, i32 %1, %struct.type* %2, i8* %3, i64 %4, %struct.ui_file* %5, i32 %6, i32 %7, i32 %8, i32 %9, i32* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.type*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.ui_file*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %13, align 4
  store %struct.type* %2, %struct.type** %14, align 8
  store i8* %3, i8** %15, align 8
  store i64 %4, i64* %16, align 8
  store %struct.ui_file* %5, %struct.ui_file** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32* %10, i32** %22, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %87

27:                                               ; preds = %11
  store i32 0, i32* %23, align 4
  br label %28

28:                                               ; preds = %70, %27
  %29 = load i32, i32* %23, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @F77_DIM_SIZE(i32 %30)
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i32*, i32** %22, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @print_max, align 4
  %37 = icmp slt i32 %35, %36
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i1 [ false, %28 ], [ %37, %33 ]
  br i1 %39, label %40, label %73

40:                                               ; preds = %38
  %41 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %42 = call i32 @fprintf_filtered(%struct.ui_file* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.type*, %struct.type** %14, align 8
  %47 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %46)
  %48 = load i8*, i8** %15, align 8
  %49 = load i32, i32* %23, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @F77_DIM_OFFSET(i32 %50)
  %52 = mul nsw i32 %49, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %48, i64 %53
  %55 = load i64, i64* %16, align 8
  %56 = load i32, i32* %23, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @F77_DIM_OFFSET(i32 %57)
  %59 = mul nsw i32 %56, %58
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %55, %60
  %62 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* %20, align 4
  %66 = load i32, i32* %21, align 4
  %67 = load i32*, i32** %22, align 8
  call void @f77_print_array_1(i32 %44, i32 %45, %struct.type* %47, i8* %54, i64 %61, %struct.ui_file* %62, i32 %63, i32 %64, i32 %65, i32 %66, i32* %67)
  %68 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %69 = call i32 @fprintf_filtered(%struct.ui_file* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %40
  %71 = load i32, i32* %23, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %23, align 4
  br label %28

73:                                               ; preds = %38
  %74 = load i32*, i32** %22, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @print_max, align 4
  %77 = icmp sge i32 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load i32, i32* %23, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @F77_DIM_SIZE(i32 %80)
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %85 = call i32 @fprintf_filtered(%struct.ui_file* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %78, %73
  br label %154

87:                                               ; preds = %11
  store i32 0, i32* %23, align 4
  br label %88

88:                                               ; preds = %147, %87
  %89 = load i32, i32* %23, align 4
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @F77_DIM_SIZE(i32 %90)
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i32*, i32** %22, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @print_max, align 4
  %97 = icmp slt i32 %95, %96
  br label %98

98:                                               ; preds = %93, %88
  %99 = phi i1 [ false, %88 ], [ %97, %93 ]
  br i1 %99, label %100, label %153

100:                                              ; preds = %98
  %101 = load %struct.type*, %struct.type** %14, align 8
  %102 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %101)
  %103 = load i8*, i8** %15, align 8
  %104 = load i32, i32* %23, align 4
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @F77_DIM_OFFSET(i32 %105)
  %107 = mul nsw i32 %104, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %103, i64 %108
  %110 = load i64, i64* %16, align 8
  %111 = load i32, i32* %23, align 4
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @F77_DIM_OFFSET(i32 %112)
  %114 = mul nsw i32 %111, %113
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %110, %115
  %117 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %118 = load i32, i32* %18, align 4
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* %20, align 4
  %121 = load i32, i32* %21, align 4
  %122 = call i32 @val_print(%struct.type* %102, i8* %109, i32 0, i64 %116, %struct.ui_file* %117, i32 %118, i32 %119, i32 %120, i32 %121)
  %123 = load i32, i32* %23, align 4
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @F77_DIM_SIZE(i32 %124)
  %126 = sub nsw i32 %125, 1
  %127 = icmp ne i32 %123, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %100
  %129 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %130 = call i32 @fprintf_filtered(%struct.ui_file* %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %100
  %132 = load i32*, i32** %22, align 8
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @print_max, align 4
  %135 = sub nsw i32 %134, 1
  %136 = icmp eq i32 %133, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %131
  %138 = load i32, i32* %23, align 4
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @F77_DIM_SIZE(i32 %139)
  %141 = sub nsw i32 %140, 1
  %142 = icmp ne i32 %138, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %145 = call i32 @fprintf_filtered(%struct.ui_file* %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %137, %131
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %23, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %23, align 4
  %150 = load i32*, i32** %22, align 8
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  br label %88

153:                                              ; preds = %98
  br label %154

154:                                              ; preds = %153, %86
  ret void
}

declare dso_local i32 @F77_DIM_SIZE(i32) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @F77_DIM_OFFSET(i32) #1

declare dso_local i32 @val_print(%struct.type*, i8*, i32, i64, %struct.ui_file*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
