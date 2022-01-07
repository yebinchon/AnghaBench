; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_gen_subs.c_asc_uqd.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_gen_subs.c_asc_uqd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asc_uqd(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  store i8* %12, i8** %7, align 8
  br label %13

13:                                               ; preds = %31, %3
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ult i8* %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 32
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 48
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i1 [ true, %17 ], [ %26, %22 ]
  br label %29

29:                                               ; preds = %27, %13
  %30 = phi i1 [ false, %13 ], [ %28, %27 ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %4, align 8
  br label %13

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @HEX, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %107

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %105, %38
  %40 = load i8*, i8** %4, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ult i8* %40, %41
  br i1 %42, label %43, label %106

43:                                               ; preds = %39
  %44 = load i8*, i8** %4, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp sge i32 %46, 48
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load i8*, i8** %4, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp sle i32 %51, 57
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load i32, i32* %8, align 4
  %55 = shl i32 %54, 4
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %4, align 8
  %58 = load i8, i8* %56, align 1
  %59 = sext i8 %58 to i32
  %60 = sub nsw i32 %59, 48
  %61 = add nsw i32 %55, %60
  store i32 %61, i32* %8, align 4
  br label %105

62:                                               ; preds = %48, %43
  %63 = load i8*, i8** %4, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp sge i32 %65, 65
  br i1 %66, label %67, label %82

67:                                               ; preds = %62
  %68 = load i8*, i8** %4, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp sle i32 %70, 70
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = load i32, i32* %8, align 4
  %74 = shl i32 %73, 4
  %75 = add nsw i32 %74, 10
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %4, align 8
  %78 = load i8, i8* %76, align 1
  %79 = sext i8 %78 to i32
  %80 = sub nsw i32 %79, 65
  %81 = add nsw i32 %75, %80
  store i32 %81, i32* %8, align 4
  br label %104

82:                                               ; preds = %67, %62
  %83 = load i8*, i8** %4, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp sge i32 %85, 97
  br i1 %86, label %87, label %102

87:                                               ; preds = %82
  %88 = load i8*, i8** %4, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp sle i32 %90, 102
  br i1 %91, label %92, label %102

92:                                               ; preds = %87
  %93 = load i32, i32* %8, align 4
  %94 = shl i32 %93, 4
  %95 = add nsw i32 %94, 10
  %96 = load i8*, i8** %4, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %4, align 8
  %98 = load i8, i8* %96, align 1
  %99 = sext i8 %98 to i32
  %100 = sub nsw i32 %99, 97
  %101 = add nsw i32 %95, %100
  store i32 %101, i32* %8, align 4
  br label %103

102:                                              ; preds = %87, %82
  br label %106

103:                                              ; preds = %92
  br label %104

104:                                              ; preds = %103, %72
  br label %105

105:                                              ; preds = %104, %53
  br label %39

106:                                              ; preds = %102, %39
  br label %134

107:                                              ; preds = %34
  br label %108

108:                                              ; preds = %124, %107
  %109 = load i8*, i8** %4, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = icmp ult i8* %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %108
  %113 = load i8*, i8** %4, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp sge i32 %115, 48
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load i8*, i8** %4, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp sle i32 %120, 55
  br label %122

122:                                              ; preds = %117, %112, %108
  %123 = phi i1 [ false, %112 ], [ false, %108 ], [ %121, %117 ]
  br i1 %123, label %124, label %133

124:                                              ; preds = %122
  %125 = load i32, i32* %8, align 4
  %126 = shl i32 %125, 3
  %127 = load i8*, i8** %4, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %4, align 8
  %129 = load i8, i8* %127, align 1
  %130 = sext i8 %129 to i32
  %131 = sub nsw i32 %130, 48
  %132 = add nsw i32 %126, %131
  store i32 %132, i32* %8, align 4
  br label %108

133:                                              ; preds = %122
  br label %134

134:                                              ; preds = %133, %106
  %135 = load i32, i32* %8, align 4
  ret i32 %135
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
