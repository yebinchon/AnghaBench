; ModuleID = '/home/carl/AnghaBench/freebsd/bin/test/extr_test.c_filstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/test/extr_test.c_filstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32, i32, i32 }

@R_OK = common dso_local global i32 0, align 4
@W_OK = common dso_local global i32 0, align 4
@X_OK = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@F_OK = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @filstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filstat(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, 130
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @lstat(i8* %10, %struct.stat* %6)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %18

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @stat(i8* %14, %struct.stat* %6)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %9
  store i32 0, i32* %3, align 4
  br label %131

18:                                               ; preds = %13, %9
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %130 [
    i32 136, label %20
    i32 128, label %26
    i32 141, label %32
    i32 140, label %58
    i32 135, label %64
    i32 142, label %68
    i32 143, label %72
    i32 144, label %76
    i32 139, label %80
    i32 133, label %84
    i32 130, label %88
    i32 131, label %92
    i32 134, label %99
    i32 132, label %106
    i32 137, label %113
    i32 129, label %118
    i32 138, label %124
  ]

20:                                               ; preds = %18
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* @R_OK, align 4
  %23 = call i32 @eaccess(i8* %21, i32 %22)
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %3, align 4
  br label %131

26:                                               ; preds = %18
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* @W_OK, align 4
  %29 = call i32 @eaccess(i8* %27, i32 %28)
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %3, align 4
  br label %131

32:                                               ; preds = %18
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* @X_OK, align 4
  %35 = call i32 @eaccess(i8* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %131

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @S_ISDIR(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = call i32 (...) @geteuid()
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %38
  store i32 1, i32* %3, align 4
  br label %131

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @S_IXUSR, align 4
  %51 = load i32, i32* @S_IXGRP, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @S_IXOTH, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %49, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %3, align 4
  br label %131

58:                                               ; preds = %18
  %59 = load i8*, i8** %4, align 8
  %60 = load i32, i32* @F_OK, align 4
  %61 = call i32 @eaccess(i8* %59, i32 %60)
  %62 = icmp eq i32 %61, 0
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %3, align 4
  br label %131

64:                                               ; preds = %18
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @S_ISREG(i32 %66)
  store i32 %67, i32* %3, align 4
  br label %131

68:                                               ; preds = %18
  %69 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @S_ISDIR(i32 %70)
  store i32 %71, i32* %3, align 4
  br label %131

72:                                               ; preds = %18
  %73 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @S_ISCHR(i32 %74)
  store i32 %75, i32* %3, align 4
  br label %131

76:                                               ; preds = %18
  %77 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @S_ISBLK(i32 %78)
  store i32 %79, i32* %3, align 4
  br label %131

80:                                               ; preds = %18
  %81 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @S_ISFIFO(i32 %82)
  store i32 %83, i32* %3, align 4
  br label %131

84:                                               ; preds = %18
  %85 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @S_ISSOCK(i32 %86)
  store i32 %87, i32* %3, align 4
  br label %131

88:                                               ; preds = %18
  %89 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @S_ISLNK(i32 %90)
  store i32 %91, i32* %3, align 4
  br label %131

92:                                               ; preds = %18
  %93 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @S_ISUID, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %3, align 4
  br label %131

99:                                               ; preds = %18
  %100 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @S_ISGID, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %3, align 4
  br label %131

106:                                              ; preds = %18
  %107 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @S_ISVTX, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %3, align 4
  br label %131

113:                                              ; preds = %18
  %114 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = icmp sgt i32 %115, 0
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %3, align 4
  br label %131

118:                                              ; preds = %18
  %119 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (...) @geteuid()
  %122 = icmp eq i32 %120, %121
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %3, align 4
  br label %131

124:                                              ; preds = %18
  %125 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (...) @getegid()
  %128 = icmp eq i32 %126, %127
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %3, align 4
  br label %131

130:                                              ; preds = %18
  store i32 1, i32* %3, align 4
  br label %131

131:                                              ; preds = %130, %124, %118, %113, %106, %99, %92, %88, %84, %80, %76, %72, %68, %64, %58, %47, %46, %37, %26, %20, %17
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @eaccess(i8*, i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @geteuid(...) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @S_ISCHR(i32) #1

declare dso_local i32 @S_ISBLK(i32) #1

declare dso_local i32 @S_ISFIFO(i32) #1

declare dso_local i32 @S_ISSOCK(i32) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i32 @getegid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
