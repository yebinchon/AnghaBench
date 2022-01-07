; ModuleID = '/home/carl/AnghaBench/freebsd/bin/dd/extr_dd.c_getfdtype.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/dd/extr_dd.c_getfdtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ISTRUNC = common dso_local global i32 0, align 4
@FIODTYPE = common dso_local global i32 0, align 4
@D_TAPE = common dso_local global i32 0, align 4
@ISTAPE = common dso_local global i32 0, align 4
@D_DISK = common dso_local global i32 0, align 4
@D_MEM = common dso_local global i32 0, align 4
@ISSEEK = common dso_local global i32 0, align 4
@ISCHR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@SEEK_CUR = common dso_local global i32 0, align 4
@ESPIPE = common dso_local global i64 0, align 8
@ISPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @getfdtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getfdtype(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.stat, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @fstat(i32 %7, %struct.stat* %3)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @S_ISREG(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i32, i32* @ISTRUNC, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %20, %15
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @S_ISCHR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @S_ISBLK(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %91

36:                                               ; preds = %31, %26
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @FIODTYPE, align 4
  %41 = call i32 @ioctl(i32 %39, i32 %40, i32* %4)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %90

48:                                               ; preds = %36
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @D_TAPE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i32, i32* @ISTAPE, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %73

59:                                               ; preds = %48
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @D_DISK, align 4
  %62 = load i32, i32* @D_MEM, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %60, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load i32, i32* @ISSEEK, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %59
  br label %73

73:                                               ; preds = %72, %53
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @S_ISCHR(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @D_TAPE, align 4
  %81 = and i32 %79, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i32, i32* @ISCHR, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %83, %78, %73
  br label %90

90:                                               ; preds = %89, %43
  br label %114

91:                                               ; preds = %31
  store i64 0, i64* @errno, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @SEEK_CUR, align 4
  %96 = call i32 @lseek(i32 %94, i32 0, i32 %95)
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %108

98:                                               ; preds = %91
  %99 = load i64, i64* @errno, align 8
  %100 = load i64, i64* @ESPIPE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load i32, i32* @ISPIPE, align 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %114

108:                                              ; preds = %98, %91
  %109 = load i32, i32* @ISSEEK, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %90, %108, %102
  ret void
}

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
