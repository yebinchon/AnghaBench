; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-support.c_find_last_component.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-support.c_find_last_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @find_last_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_last_component(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, i8* %6, i64 %9
  %11 = getelementptr inbounds i8, i8* %10, i64 -1
  store i8* %11, i8** %4, align 8
  br label %12

12:                                               ; preds = %23, %1
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = icmp ugt i8* %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 41
  br label %21

21:                                               ; preds = %16, %12
  %22 = phi i1 [ false, %12 ], [ %20, %16 ]
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 -1
  store i8* %25, i8** %4, align 8
  br label %12

26:                                               ; preds = %21
  %27 = load i8*, i8** %4, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = icmp eq i8* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i8* null, i8** %2, align 8
  br label %112

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 -1
  store i8* %33, i8** %4, align 8
  store i32 1, i32* %5, align 4
  br label %34

34:                                               ; preds = %70, %31
  %35 = load i8*, i8** %4, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = icmp ugt i8* %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = icmp sgt i32 %39, 0
  br label %41

41:                                               ; preds = %38, %34
  %42 = phi i1 [ false, %34 ], [ %40, %38 ]
  br i1 %42, label %43, label %73

43:                                               ; preds = %41
  %44 = load i8*, i8** %4, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 60
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %4, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 40
  br i1 %52, label %53, label %56

53:                                               ; preds = %48, %43
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %5, align 4
  br label %70

56:                                               ; preds = %48
  %57 = load i8*, i8** %4, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 62
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load i8*, i8** %4, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 41
  br i1 %65, label %66, label %69

66:                                               ; preds = %61, %56
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %66, %61
  br label %70

70:                                               ; preds = %69, %53
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 -1
  store i8* %72, i8** %4, align 8
  br label %34

73:                                               ; preds = %41
  %74 = load i8*, i8** %4, align 8
  %75 = load i8*, i8** %3, align 8
  %76 = icmp eq i8* %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i8* null, i8** %2, align 8
  br label %112

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %90, %78
  %80 = load i8*, i8** %4, align 8
  %81 = load i8*, i8** %3, align 8
  %82 = icmp ugt i8* %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load i8*, i8** %4, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 58
  br label %88

88:                                               ; preds = %83, %79
  %89 = phi i1 [ false, %79 ], [ %87, %83 ]
  br i1 %89, label %90, label %93

90:                                               ; preds = %88
  %91 = load i8*, i8** %4, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 -1
  store i8* %92, i8** %4, align 8
  br label %79

93:                                               ; preds = %88
  %94 = load i8*, i8** %4, align 8
  %95 = load i8*, i8** %3, align 8
  %96 = icmp eq i8* %94, %95
  br i1 %96, label %108, label %97

97:                                               ; preds = %93
  %98 = load i8*, i8** %4, align 8
  %99 = load i8*, i8** %3, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = icmp eq i8* %98, %100
  br i1 %101, label %108, label %102

102:                                              ; preds = %97
  %103 = load i8*, i8** %4, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 -1
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 58
  br i1 %107, label %108, label %109

108:                                              ; preds = %102, %97, %93
  store i8* null, i8** %2, align 8
  br label %112

109:                                              ; preds = %102
  %110 = load i8*, i8** %4, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 -1
  store i8* %111, i8** %2, align 8
  br label %112

112:                                              ; preds = %109, %108, %77, %30
  %113 = load i8*, i8** %2, align 8
  ret i8* %113
}

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
