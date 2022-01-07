; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_xutil.c_cmdoption.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_xutil.c_cmdoption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opt_tab = type { i32, i64 }

@XLOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"option \22%s\22 not recognized\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmdoption(i8* %0, %struct.opt_tab* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.opt_tab*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.opt_tab*, align 8
  %12 = alloca %struct.opt_tab*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.opt_tab* %1, %struct.opt_tab** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %134, %3
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i8*, i8** %7, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi i1 [ false, %14 ], [ %21, %17 ]
  br i1 %23, label %24, label %135

24:                                               ; preds = %22
  store %struct.opt_tab* null, %struct.opt_tab** %12, align 8
  %25 = load i8*, i8** %7, align 8
  store i8* %25, i8** %4, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i8* @strchr(i8* %26, i8 signext 44)
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i8*, i8** %7, align 8
  store i8 0, i8* %31, align 1
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 110
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 111
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  store i8* %46, i8** %10, align 8
  store i32 1, i32* %9, align 4
  br label %49

47:                                               ; preds = %38, %32
  %48 = load i8*, i8** %4, align 8
  store i8* %48, i8** %10, align 8
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %47, %44
  %50 = load %struct.opt_tab*, %struct.opt_tab** %5, align 8
  store %struct.opt_tab* %50, %struct.opt_tab** %11, align 8
  br label %51

51:                                               ; preds = %81, %49
  %52 = load %struct.opt_tab*, %struct.opt_tab** %11, align 8
  %53 = getelementptr inbounds %struct.opt_tab, %struct.opt_tab* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %84

56:                                               ; preds = %51
  %57 = load i8*, i8** %10, align 8
  %58 = load %struct.opt_tab*, %struct.opt_tab** %11, align 8
  %59 = getelementptr inbounds %struct.opt_tab, %struct.opt_tab* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @STREQ(i8* %57, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %84

64:                                               ; preds = %56
  %65 = load i8*, i8** %10, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = icmp ne i8* %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = load %struct.opt_tab*, %struct.opt_tab** %12, align 8
  %70 = icmp ne %struct.opt_tab* %69, null
  br i1 %70, label %80, label %71

71:                                               ; preds = %68
  %72 = load i8*, i8** %4, align 8
  %73 = load %struct.opt_tab*, %struct.opt_tab** %11, align 8
  %74 = getelementptr inbounds %struct.opt_tab, %struct.opt_tab* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @STREQ(i8* %72, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load %struct.opt_tab*, %struct.opt_tab** %11, align 8
  store %struct.opt_tab* %79, %struct.opt_tab** %12, align 8
  br label %80

80:                                               ; preds = %78, %71, %68, %64
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.opt_tab*, %struct.opt_tab** %11, align 8
  %83 = getelementptr inbounds %struct.opt_tab, %struct.opt_tab* %82, i32 1
  store %struct.opt_tab* %83, %struct.opt_tab** %11, align 8
  br label %51

84:                                               ; preds = %63, %51
  %85 = load %struct.opt_tab*, %struct.opt_tab** %11, align 8
  %86 = getelementptr inbounds %struct.opt_tab, %struct.opt_tab* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load %struct.opt_tab*, %struct.opt_tab** %12, align 8
  %91 = icmp ne %struct.opt_tab* %90, null
  br i1 %91, label %92, label %122

92:                                               ; preds = %89, %84
  %93 = load %struct.opt_tab*, %struct.opt_tab** %11, align 8
  %94 = getelementptr inbounds %struct.opt_tab, %struct.opt_tab* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %92
  %98 = load %struct.opt_tab*, %struct.opt_tab** %12, align 8
  store %struct.opt_tab* %98, %struct.opt_tab** %11, align 8
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %97, %92
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %103
  %107 = load %struct.opt_tab*, %struct.opt_tab** %11, align 8
  %108 = getelementptr inbounds %struct.opt_tab, %struct.opt_tab* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = xor i32 %109, -1
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, %110
  store i32 %113, i32* %111, align 4
  br label %121

114:                                              ; preds = %103
  %115 = load %struct.opt_tab*, %struct.opt_tab** %11, align 8
  %116 = getelementptr inbounds %struct.opt_tab, %struct.opt_tab* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %117
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %114, %106
  br label %128

122:                                              ; preds = %89
  %123 = load i32, i32* @XLOG_ERROR, align 4
  %124 = load i8*, i8** %4, align 8
  %125 = call i32 @plog(i32 %123, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %124)
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %122, %121
  %129 = load i8*, i8** %7, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i8*, i8** %7, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %7, align 8
  store i8 44, i8* %132, align 1
  br label %134

134:                                              ; preds = %131, %128
  br label %14

135:                                              ; preds = %22
  %136 = load i32, i32* %8, align 4
  ret i32 %136
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @STREQ(i8*, i64) #1

declare dso_local i32 @plog(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
