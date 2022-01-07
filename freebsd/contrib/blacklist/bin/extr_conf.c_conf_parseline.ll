; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/blacklist/bin/extr_conf.c_conf_parseline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/blacklist/bin/extr_conf.c_conf_parseline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf = type { i32 }

@gethostport = common dso_local global i32 0, align 4
@getproto = common dso_local global i32 0, align 4
@getfamily = common dso_local global i32 0, align 4
@getuid = common dso_local global i32 0, align 4
@getname = common dso_local global i32 0, align 4
@getnfail = common dso_local global i32 0, align 4
@getsecs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, %struct.conf*, i32)* @conf_parseline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conf_parseline(i8* %0, i64 %1, i8* %2, %struct.conf* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.conf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.conf* %3, %struct.conf** %10, align 8
  store i32 %4, i32* %11, align 4
  br label %13

13:                                               ; preds = %25, %5
  %14 = load i8*, i8** %9, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i8*, i8** %9, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call i64 @isspace(i8 zeroext %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %18, %13
  %24 = phi i1 [ false, %13 ], [ %22, %18 ]
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = load i8*, i8** %9, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %9, align 8
  br label %13

28:                                               ; preds = %23
  %29 = load %struct.conf*, %struct.conf** %10, align 8
  %30 = call i32 @memset(%struct.conf* %29, i32 0, i32 4)
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.conf*, %struct.conf** %10, align 8
  %35 = load i32, i32* @gethostport, align 4
  %36 = call i32 @getvalue(i8* %31, i64 %32, i32 %33, %struct.conf* %34, i8** %9, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  store i32 -1, i32* %6, align 4
  br label %101

40:                                               ; preds = %28
  %41 = load i8*, i8** %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.conf*, %struct.conf** %10, align 8
  %45 = load i32, i32* @getproto, align 4
  %46 = call i32 @getvalue(i8* %41, i64 %42, i32 %43, %struct.conf* %44, i8** %9, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store i32 -1, i32* %6, align 4
  br label %101

50:                                               ; preds = %40
  %51 = load i8*, i8** %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.conf*, %struct.conf** %10, align 8
  %55 = load i32, i32* @getfamily, align 4
  %56 = call i32 @getvalue(i8* %51, i64 %52, i32 %53, %struct.conf* %54, i8** %9, i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  store i32 -1, i32* %6, align 4
  br label %101

60:                                               ; preds = %50
  %61 = load i8*, i8** %7, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.conf*, %struct.conf** %10, align 8
  %65 = load i32, i32* @getuid, align 4
  %66 = call i32 @getvalue(i8* %61, i64 %62, i32 %63, %struct.conf* %64, i8** %9, i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  store i32 -1, i32* %6, align 4
  br label %101

70:                                               ; preds = %60
  %71 = load i8*, i8** %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.conf*, %struct.conf** %10, align 8
  %75 = load i32, i32* @getname, align 4
  %76 = call i32 @getvalue(i8* %71, i64 %72, i32 %73, %struct.conf* %74, i8** %9, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  store i32 -1, i32* %6, align 4
  br label %101

80:                                               ; preds = %70
  %81 = load i8*, i8** %7, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.conf*, %struct.conf** %10, align 8
  %85 = load i32, i32* @getnfail, align 4
  %86 = call i32 @getvalue(i8* %81, i64 %82, i32 %83, %struct.conf* %84, i8** %9, i32 %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  store i32 -1, i32* %6, align 4
  br label %101

90:                                               ; preds = %80
  %91 = load i8*, i8** %7, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.conf*, %struct.conf** %10, align 8
  %95 = load i32, i32* @getsecs, align 4
  %96 = call i32 @getvalue(i8* %91, i64 %92, i32 %93, %struct.conf* %94, i8** %9, i32 %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  store i32 -1, i32* %6, align 4
  br label %101

100:                                              ; preds = %90
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %100, %99, %89, %79, %69, %59, %49, %39
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @memset(%struct.conf*, i32, i32) #1

declare dso_local i32 @getvalue(i8*, i64, i32, %struct.conf*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
