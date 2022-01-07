; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_input.c_preadfd.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_input.c_preadfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@parsefile = common dso_local global %struct.TYPE_2__* null, align 8
@parsenextc = common dso_local global i32 0, align 4
@el = common dso_local global i64 0, align 8
@preadfd.rl_cp = internal global i8* null, align 8
@preadfd.el_len = internal global i32 0, align 4
@BUFSIZ = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@F_GETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"sh: turning off NDELAY mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @preadfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @preadfd() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @parsefile, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  store i32 %5, i32* @parsenextc, align 4
  br label %6

6:                                                ; preds = %107, %77, %0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @parsefile, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %58

11:                                               ; preds = %6
  %12 = load i64, i64* @el, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %58

14:                                               ; preds = %11
  %15 = load i8*, i8** @preadfd.rl_cp, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i64, i64* @el, align 8
  %19 = call i32 @el_resize(i64 %18)
  %20 = load i64, i64* @el, align 8
  %21 = call i8* @el_gets(i64 %20, i32* @preadfd.el_len)
  store i8* %21, i8** @preadfd.rl_cp, align 8
  br label %22

22:                                               ; preds = %17, %14
  %23 = load i8*, i8** @preadfd.rl_cp, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* @preadfd.el_len, align 4
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 0, i32 -1
  store i32 %29, i32* %1, align 4
  br label %57

30:                                               ; preds = %22
  %31 = load i32, i32* @preadfd.el_len, align 4
  store i32 %31, i32* %1, align 4
  %32 = load i32, i32* %1, align 4
  %33 = load i32, i32* @BUFSIZ, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @BUFSIZ, align 4
  store i32 %36, i32* %1, align 4
  br label %37

37:                                               ; preds = %35, %30
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @parsefile, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i8*, i8** @preadfd.rl_cp, align 8
  %42 = load i32, i32* %1, align 4
  %43 = call i32 @memcpy(i32 %40, i8* %41, i32 %42)
  %44 = load i32, i32* %1, align 4
  %45 = load i32, i32* @preadfd.el_len, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %37
  %48 = load i32, i32* %1, align 4
  %49 = load i32, i32* @preadfd.el_len, align 4
  %50 = sub nsw i32 %49, %48
  store i32 %50, i32* @preadfd.el_len, align 4
  %51 = load i32, i32* %1, align 4
  %52 = load i8*, i8** @preadfd.rl_cp, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** @preadfd.rl_cp, align 8
  br label %56

55:                                               ; preds = %37
  store i8* null, i8** @preadfd.rl_cp, align 8
  br label %56

56:                                               ; preds = %55, %47
  br label %57

57:                                               ; preds = %56, %25
  br label %67

58:                                               ; preds = %11, %6
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @parsefile, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @parsefile, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @BUFSIZ, align 4
  %66 = call i32 @read(i64 %61, i32 %64, i32 %65)
  store i32 %66, i32* %1, align 4
  br label %67

67:                                               ; preds = %58, %57
  %68 = load i32, i32* %1, align 4
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %70, label %113

70:                                               ; preds = %67
  %71 = load i32, i32* %1, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %112

73:                                               ; preds = %70
  %74 = load i64, i64* @errno, align 8
  %75 = load i64, i64* @EINTR, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %6

78:                                               ; preds = %73
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @parsefile, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %111

83:                                               ; preds = %78
  %84 = load i64, i64* @errno, align 8
  %85 = load i64, i64* @EWOULDBLOCK, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %111

87:                                               ; preds = %83
  %88 = load i32, i32* @F_GETFL, align 4
  %89 = call i64 @fcntl(i32 0, i32 %88, i32 0)
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %2, align 4
  %91 = load i32, i32* %2, align 4
  %92 = icmp sge i32 %91, 0
  br i1 %92, label %93, label %110

93:                                               ; preds = %87
  %94 = load i32, i32* %2, align 4
  %95 = load i32, i32* @O_NONBLOCK, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %93
  %99 = load i32, i32* @O_NONBLOCK, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %2, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %2, align 4
  %103 = load i32, i32* @F_SETFL, align 4
  %104 = load i32, i32* %2, align 4
  %105 = call i64 @fcntl(i32 0, i32 %103, i32 %104)
  %106 = icmp sge i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = call i32 @out2fmt_flush(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %6

109:                                              ; preds = %98
  br label %110

110:                                              ; preds = %109, %93, %87
  br label %111

111:                                              ; preds = %110, %83, %78
  br label %112

112:                                              ; preds = %111, %70
  store i32 -1, i32* %1, align 4
  br label %113

113:                                              ; preds = %112, %67
  %114 = load i32, i32* %1, align 4
  ret i32 %114
}

declare dso_local i32 @el_resize(i64) #1

declare dso_local i8* @el_gets(i64, i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @read(i64, i32, i32) #1

declare dso_local i64 @fcntl(i32, i32, i32) #1

declare dso_local i32 @out2fmt_flush(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
