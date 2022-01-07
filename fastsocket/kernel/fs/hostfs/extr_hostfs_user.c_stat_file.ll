; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hostfs/extr_hostfs_user.c_stat_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hostfs/extr_hostfs_user.c_stat_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i32 }
%struct.stat64 = type { i64, i32, i32, i32, i32, i64, i32, i64, i32, i32, i32 }

@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stat_file(i8* %0, i64* %1, i32* %2, i32* %3, i32* %4, i32* %5, i64* %6, %struct.timespec* %7, %struct.timespec* %8, %struct.timespec* %9, i32* %10, i64* %11, i32 %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca %struct.timespec*, align 8
  %23 = alloca %struct.timespec*, align 8
  %24 = alloca %struct.timespec*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i64*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.stat64, align 8
  store i8* %0, i8** %15, align 8
  store i64* %1, i64** %16, align 8
  store i32* %2, i32** %17, align 8
  store i32* %3, i32** %18, align 8
  store i32* %4, i32** %19, align 8
  store i32* %5, i32** %20, align 8
  store i64* %6, i64** %21, align 8
  store %struct.timespec* %7, %struct.timespec** %22, align 8
  store %struct.timespec* %8, %struct.timespec** %23, align 8
  store %struct.timespec* %9, %struct.timespec** %24, align 8
  store i32* %10, i32** %25, align 8
  store i64* %11, i64** %26, align 8
  store i32 %12, i32* %27, align 4
  %29 = load i32, i32* %27, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %13
  %32 = load i32, i32* %27, align 4
  %33 = call i64 @fstat64(i32 %32, %struct.stat64* %28)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @errno, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %14, align 4
  br label %134

38:                                               ; preds = %31
  br label %47

39:                                               ; preds = %13
  %40 = load i8*, i8** %15, align 8
  %41 = call i64 @lstat64(i8* %40, %struct.stat64* %28)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @errno, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %14, align 4
  br label %134

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %38
  %48 = load i64*, i64** %16, align 8
  %49 = icmp ne i64* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.stat64, %struct.stat64* %28, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %16, align 8
  store i64 %52, i64* %53, align 8
  br label %54

54:                                               ; preds = %50, %47
  %55 = load i32*, i32** %17, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.stat64, %struct.stat64* %28, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32*, i32** %17, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %57, %54
  %62 = load i32*, i32** %18, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.stat64, %struct.stat64* %28, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %18, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %64, %61
  %69 = load i32*, i32** %19, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.stat64, %struct.stat64* %28, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load i32*, i32** %19, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %71, %68
  %76 = load i32*, i32** %20, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.stat64, %struct.stat64* %28, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %20, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %78, %75
  %83 = load i64*, i64** %21, align 8
  %84 = icmp ne i64* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.stat64, %struct.stat64* %28, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = load i64*, i64** %21, align 8
  store i64 %87, i64* %88, align 8
  br label %89

89:                                               ; preds = %85, %82
  %90 = load %struct.timespec*, %struct.timespec** %22, align 8
  %91 = icmp ne %struct.timespec* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.stat64, %struct.stat64* %28, i32 0, i32 10
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.timespec*, %struct.timespec** %22, align 8
  %96 = getelementptr inbounds %struct.timespec, %struct.timespec* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  %97 = load %struct.timespec*, %struct.timespec** %22, align 8
  %98 = getelementptr inbounds %struct.timespec, %struct.timespec* %97, i32 0, i32 0
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %92, %89
  %100 = load %struct.timespec*, %struct.timespec** %23, align 8
  %101 = icmp ne %struct.timespec* %100, null
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.stat64, %struct.stat64* %28, i32 0, i32 9
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.timespec*, %struct.timespec** %23, align 8
  %106 = getelementptr inbounds %struct.timespec, %struct.timespec* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load %struct.timespec*, %struct.timespec** %23, align 8
  %108 = getelementptr inbounds %struct.timespec, %struct.timespec* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %102, %99
  %110 = load %struct.timespec*, %struct.timespec** %24, align 8
  %111 = icmp ne %struct.timespec* %110, null
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.stat64, %struct.stat64* %28, i32 0, i32 8
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.timespec*, %struct.timespec** %24, align 8
  %116 = getelementptr inbounds %struct.timespec, %struct.timespec* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  %117 = load %struct.timespec*, %struct.timespec** %24, align 8
  %118 = getelementptr inbounds %struct.timespec, %struct.timespec* %117, i32 0, i32 0
  store i64 0, i64* %118, align 8
  br label %119

119:                                              ; preds = %112, %109
  %120 = load i32*, i32** %25, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.stat64, %struct.stat64* %28, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = load i32*, i32** %25, align 8
  store i32 %124, i32* %125, align 4
  br label %126

126:                                              ; preds = %122, %119
  %127 = load i64*, i64** %26, align 8
  %128 = icmp ne i64* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.stat64, %struct.stat64* %28, i32 0, i32 7
  %131 = load i64, i64* %130, align 8
  %132 = load i64*, i64** %26, align 8
  store i64 %131, i64* %132, align 8
  br label %133

133:                                              ; preds = %129, %126
  store i32 0, i32* %14, align 4
  br label %134

134:                                              ; preds = %133, %43, %35
  %135 = load i32, i32* %14, align 4
  ret i32 %135
}

declare dso_local i64 @fstat64(i32, %struct.stat64*) #1

declare dso_local i64 @lstat64(i8*, %struct.stat64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
