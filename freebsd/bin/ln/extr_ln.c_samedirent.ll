; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ln/extr_ln.c_samedirent.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ln/extr_ln.c_samedirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @samedirent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @samedirent(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.stat, align 8
  %11 = alloca %struct.stat, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* @PATH_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @strcmp(i8* %17, i8* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %132

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = call i8* @strrchr(i8* %23, i8 signext 47)
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %6, align 8
  br label %32

30:                                               ; preds = %22
  %31 = load i8*, i8** %4, align 8
  store i8* %31, i8** %6, align 8
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i8*, i8** %5, align 8
  %34 = call i8* @strrchr(i8* %33, i8 signext 47)
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %7, align 8
  br label %42

40:                                               ; preds = %32
  %41 = load i8*, i8** %5, align 8
  store i8* %41, i8** %7, align 8
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i64 @strcmp(i8* %43, i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %132

48:                                               ; preds = %42
  %49 = load i8*, i8** %6, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = ptrtoint i8* %49 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  %54 = load i32, i32* @PATH_MAX, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp sge i64 %53, %55
  br i1 %56, label %66, label %57

57:                                               ; preds = %48
  %58 = load i8*, i8** %7, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = load i32, i32* @PATH_MAX, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp sge i64 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %57, %48
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %132

67:                                               ; preds = %57
  %68 = load i8*, i8** %6, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = icmp eq i8* %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = call i32 @memcpy(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 2)
  br label %88

73:                                               ; preds = %67
  %74 = load i8*, i8** %4, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = trunc i64 %79 to i32
  %81 = call i32 @memcpy(i8* %16, i8* %74, i32 %80)
  %82 = load i8*, i8** %6, align 8
  %83 = load i8*, i8** %4, align 8
  %84 = ptrtoint i8* %82 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  %87 = getelementptr inbounds i8, i8* %16, i64 %86
  store i8 0, i8* %87, align 1
  br label %88

88:                                               ; preds = %73, %71
  %89 = call i64 @stat(i8* %16, %struct.stat* %10)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %132

92:                                               ; preds = %88
  %93 = load i8*, i8** %7, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = icmp eq i8* %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = call i32 @memcpy(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 2)
  br label %113

98:                                               ; preds = %92
  %99 = load i8*, i8** %5, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = load i8*, i8** %5, align 8
  %102 = ptrtoint i8* %100 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  %105 = trunc i64 %104 to i32
  %106 = call i32 @memcpy(i8* %16, i8* %99, i32 %105)
  %107 = load i8*, i8** %7, align 8
  %108 = load i8*, i8** %5, align 8
  %109 = ptrtoint i8* %107 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = getelementptr inbounds i8, i8* %16, i64 %111
  store i8 0, i8* %112, align 1
  br label %113

113:                                              ; preds = %98, %96
  %114 = call i64 @stat(i8* %16, %struct.stat* %11)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %132

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %119, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %125, %127
  br label %129

129:                                              ; preds = %123, %117
  %130 = phi i1 [ false, %117 ], [ %128, %123 ]
  %131 = zext i1 %130 to i32
  store i32 %131, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %132

132:                                              ; preds = %129, %116, %91, %66, %47, %21
  %133 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %133)
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
