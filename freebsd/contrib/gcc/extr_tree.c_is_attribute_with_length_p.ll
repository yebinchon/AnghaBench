; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_is_attribute_with_length_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_is_attribute_with_length_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IDENTIFIER_NODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @is_attribute_with_length_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_attribute_with_length_p(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i64 @TREE_CODE(i32 %10)
  %12 = load i64, i64* @IDENTIFIER_NODE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %122

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = call i8* @IDENTIFIER_POINTER(i32 %16)
  store i8* %17, i8** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @IDENTIFIER_LENGTH(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i64 @strcmp(i8* %24, i8* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %122

29:                                               ; preds = %23, %15
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 95
  br i1 %34, label %35, label %77

35:                                               ; preds = %29
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 95
  %41 = zext i1 %40 to i32
  %42 = call i32 @gcc_assert(i32 %41)
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %44, 2
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 95
  %51 = zext i1 %50 to i32
  %52 = call i32 @gcc_assert(i32 %51)
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 95
  %61 = zext i1 %60 to i32
  %62 = call i32 @gcc_assert(i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %6, align 4
  %65 = sub nsw i32 %64, 4
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %35
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sub nsw i32 %71, 4
  %73 = call i64 @strncmp(i8* %69, i8* %70, i32 %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  store i32 1, i32* %4, align 4
  br label %122

76:                                               ; preds = %67, %35
  br label %121

77:                                               ; preds = %29
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 4
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %120

82:                                               ; preds = %77
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 95
  br i1 %87, label %88, label %120

88:                                               ; preds = %82
  %89 = load i8*, i8** %9, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 95
  br i1 %93, label %94, label %120

94:                                               ; preds = %88
  %95 = load i8*, i8** %9, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sub nsw i32 %96, 2
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %95, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 95
  br i1 %102, label %103, label %120

103:                                              ; preds = %94
  %104 = load i8*, i8** %9, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 95
  br i1 %111, label %112, label %120

112:                                              ; preds = %103
  %113 = load i8*, i8** %5, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 2
  %116 = load i32, i32* %6, align 4
  %117 = call i64 @strncmp(i8* %113, i8* %115, i32 %116)
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  store i32 1, i32* %4, align 4
  br label %122

120:                                              ; preds = %112, %103, %94, %88, %82, %77
  br label %121

121:                                              ; preds = %120, %76
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %121, %119, %75, %28, %14
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i8* @IDENTIFIER_POINTER(i32) #1

declare dso_local i32 @IDENTIFIER_LENGTH(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
