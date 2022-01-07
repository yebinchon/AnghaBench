; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ihex.c_ihex_object_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ihex.c_ihex_object_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }

@SEEK_SET = common dso_local global i32 0, align 4
@bfd_error_file_truncated = common dso_local global i64 0, align 8
@bfd_error_wrong_format = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__*)* @ihex_object_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ihex_object_p(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [9 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %8 = call i32 (...) @ihex_init()
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = load i32, i32* @SEEK_SET, align 4
  %11 = call i64 @bfd_seek(%struct.TYPE_10__* %9, i32 0, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %103

14:                                               ; preds = %1
  %15 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = call i32 @bfd_bread(i8* %15, i32 9, %struct.TYPE_10__* %16)
  %18 = icmp ne i32 %17, 9
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = call i64 (...) @bfd_get_error()
  %21 = load i64, i64* @bfd_error_file_truncated, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @bfd_error_wrong_format, align 4
  %25 = call i32 @bfd_set_error(i32 %24)
  br label %26

26:                                               ; preds = %23, %19
  store i32* null, i32** %2, align 8
  br label %103

27:                                               ; preds = %14
  %28 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 58
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @bfd_error_wrong_format, align 4
  %34 = call i32 @bfd_set_error(i32 %33)
  store i32* null, i32** %2, align 8
  br label %103

35:                                               ; preds = %27
  store i32 1, i32* %6, align 4
  br label %36

36:                                               ; preds = %50, %35
  %37 = load i32, i32* %6, align 4
  %38 = icmp ult i32 %37, 9
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = call i32 @ISHEX(i8 signext %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @bfd_error_wrong_format, align 4
  %48 = call i32 @bfd_set_error(i32 %47)
  store i32* null, i32** %2, align 8
  br label %103

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %36

53:                                               ; preds = %36
  %54 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0
  %55 = getelementptr inbounds i8, i8* %54, i64 7
  %56 = call i32 @HEX2(i8* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ugt i32 %57, 5
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @bfd_error_wrong_format, align 4
  %61 = call i32 @bfd_set_error(i32 %60)
  store i32* null, i32** %2, align 8
  br label %103

62:                                               ; preds = %53
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %4, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %68 = call i32 @ihex_mkobject(%struct.TYPE_10__* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %72 = call i32 @ihex_scan(%struct.TYPE_10__* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %99, label %74

74:                                               ; preds = %70, %62
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i8*, i8** %4, align 8
  %80 = icmp ne i8* %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %74
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @bfd_release(%struct.TYPE_10__* %88, i8* %92)
  br label %94

94:                                               ; preds = %87, %81, %74
  %95 = load i8*, i8** %4, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  store i8* %95, i8** %98, align 8
  store i32* null, i32** %2, align 8
  br label %103

99:                                               ; preds = %70
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  store i32* %102, i32** %2, align 8
  br label %103

103:                                              ; preds = %99, %94, %59, %46, %32, %26, %13
  %104 = load i32*, i32** %2, align 8
  ret i32* %104
}

declare dso_local i32 @ihex_init(...) #1

declare dso_local i64 @bfd_seek(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @bfd_bread(i8*, i32, %struct.TYPE_10__*) #1

declare dso_local i64 @bfd_get_error(...) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32 @ISHEX(i8 signext) #1

declare dso_local i32 @HEX2(i8*) #1

declare dso_local i32 @ihex_mkobject(%struct.TYPE_10__*) #1

declare dso_local i32 @ihex_scan(%struct.TYPE_10__*) #1

declare dso_local i32 @bfd_release(%struct.TYPE_10__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
