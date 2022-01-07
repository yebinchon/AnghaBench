; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_fabric_lib.c_transport_asciihex_to_binaryhex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_fabric_lib.c_transport_asciihex_to_binaryhex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8*)* @transport_asciihex_to_binaryhex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @transport_asciihex_to_binaryhex(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  store i8 0, i8* %3, align 1
  %4 = load i8*, i8** %2, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 0
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp sge i32 %7, 97
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp sle i32 %13, 102
  br i1 %14, label %15, label %25

15:                                               ; preds = %9
  %16 = load i8*, i8** %2, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = sub nsw i32 %19, 97
  %21 = add nsw i32 %20, 10
  %22 = and i32 %21, 15
  %23 = shl i32 %22, 4
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %3, align 1
  br label %57

25:                                               ; preds = %9, %1
  %26 = load i8*, i8** %2, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp sge i32 %29, 65
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load i8*, i8** %2, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp sle i32 %35, 70
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load i8*, i8** %2, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = sub nsw i32 %41, 65
  %43 = add nsw i32 %42, 10
  %44 = and i32 %43, 15
  %45 = shl i32 %44, 4
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %3, align 1
  br label %56

47:                                               ; preds = %31, %25
  %48 = load i8*, i8** %2, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = sub nsw i32 %51, 48
  %53 = and i32 %52, 15
  %54 = shl i32 %53, 4
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %3, align 1
  br label %56

56:                                               ; preds = %47, %37
  br label %57

57:                                               ; preds = %56, %15
  %58 = load i8*, i8** %2, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp sge i32 %61, 97
  br i1 %62, label %63, label %81

63:                                               ; preds = %57
  %64 = load i8*, i8** %2, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp sle i32 %67, 102
  br i1 %68, label %69, label %81

69:                                               ; preds = %63
  %70 = load i8*, i8** %2, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = sub nsw i32 %73, 97
  %75 = add nsw i32 %74, 10
  %76 = and i32 %75, 15
  %77 = load i8, i8* %3, align 1
  %78 = zext i8 %77 to i32
  %79 = or i32 %78, %76
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %3, align 1
  br label %117

81:                                               ; preds = %63, %57
  %82 = load i8*, i8** %2, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp sge i32 %85, 65
  br i1 %86, label %87, label %105

87:                                               ; preds = %81
  %88 = load i8*, i8** %2, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp sle i32 %91, 70
  br i1 %92, label %93, label %105

93:                                               ; preds = %87
  %94 = load i8*, i8** %2, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = sub nsw i32 %97, 65
  %99 = add nsw i32 %98, 10
  %100 = and i32 %99, 15
  %101 = load i8, i8* %3, align 1
  %102 = zext i8 %101 to i32
  %103 = or i32 %102, %100
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %3, align 1
  br label %116

105:                                              ; preds = %87, %81
  %106 = load i8*, i8** %2, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = sub nsw i32 %109, 48
  %111 = and i32 %110, 15
  %112 = load i8, i8* %3, align 1
  %113 = zext i8 %112 to i32
  %114 = or i32 %113, %111
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %3, align 1
  br label %116

116:                                              ; preds = %105, %93
  br label %117

117:                                              ; preds = %116, %69
  %118 = load i8, i8* %3, align 1
  ret i8 %118
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
