; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_util.c_zprop_get_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_util.c_zprop_get_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"no properties specified\00", align 1
@EZFS_BADPROP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"bad property list\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"empty property name\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@zprop_get_list.spaceprops = internal global [8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* null], align 16
@.str.5 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"avail\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"used\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"usedbysnapshots\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"usedbydataset\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"usedbyrefreservation\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"usedbychildren\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zprop_get_list(i32* %0, i8* %1, %struct.TYPE_4__** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_4__** %2, %struct.TYPE_4__*** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %14, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %129

19:                                               ; preds = %4
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @TEXT_DOMAIN, align 4
  %28 = call i32 @dgettext(i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 @zfs_error_aux(i32* %26, i32 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @EZFS_BADPROP, align 4
  %32 = load i32, i32* @TEXT_DOMAIN, align 4
  %33 = call i32 @dgettext(i32 %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 @zfs_error(i32* %30, i32 %31, i32 %33)
  store i32 %34, i32* %5, align 4
  br label %129

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %127, %35
  %37 = load i8*, i8** %7, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %128

41:                                               ; preds = %36
  %42 = load i8*, i8** %7, align 8
  %43 = call i8* @strchr(i8* %42, i8 signext 44)
  store i8* %43, i8** %11, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i8*, i8** %7, align 8
  %47 = call i64 @strlen(i8* %46)
  store i64 %47, i64* %10, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %11, align 8
  br label %57

51:                                               ; preds = %41
  %52 = load i8*, i8** %11, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  store i64 %56, i64* %10, align 8
  br label %57

57:                                               ; preds = %51, %45
  %58 = load i64, i64* %10, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* @TEXT_DOMAIN, align 4
  %63 = call i32 @dgettext(i32 %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %64 = call i32 @zfs_error_aux(i32* %61, i32 %63)
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* @EZFS_BADPROP, align 4
  %67 = load i32, i32* @TEXT_DOMAIN, align 4
  %68 = call i32 @dgettext(i32 %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %69 = call i32 @zfs_error(i32* %65, i32 %66, i32 %68)
  store i32 %69, i32* %5, align 4
  br label %129

70:                                               ; preds = %57
  %71 = load i8*, i8** %7, align 8
  %72 = load i64, i64* %10, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = load i8, i8* %73, align 1
  store i8 %74, i8* %12, align 1
  %75 = load i8*, i8** %7, align 8
  %76 = load i64, i64* %10, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8 0, i8* %77, align 1
  %78 = load i8*, i8** %7, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %107

81:                                               ; preds = %70
  store i32 0, i32* %13, align 4
  br label %82

82:                                               ; preds = %103, %81
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [8 x i8*], [8 x i8*]* @zprop_get_list.spaceprops, i64 0, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %106

88:                                               ; preds = %82
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [8 x i8*], [8 x i8*]* @zprop_get_list.spaceprops, i64 0, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i64 @addlist(i32* %89, i8* %93, %struct.TYPE_4__** %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  store i32 -1, i32* %5, align 4
  br label %129

99:                                               ; preds = %88
  %100 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store %struct.TYPE_4__** %102, %struct.TYPE_4__*** %8, align 8
  br label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %13, align 4
  br label %82

106:                                              ; preds = %82
  br label %119

107:                                              ; preds = %70
  %108 = load i32*, i32** %6, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i64 @addlist(i32* %108, i8* %109, %struct.TYPE_4__** %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  store i32 -1, i32* %5, align 4
  br label %129

115:                                              ; preds = %107
  %116 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  store %struct.TYPE_4__** %118, %struct.TYPE_4__*** %8, align 8
  br label %119

119:                                              ; preds = %115, %106
  %120 = load i8*, i8** %11, align 8
  store i8* %120, i8** %7, align 8
  %121 = load i8, i8* %12, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 44
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i8*, i8** %7, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %7, align 8
  br label %127

127:                                              ; preds = %124, %119
  br label %36

128:                                              ; preds = %36
  store i32 0, i32* %5, align 4
  br label %129

129:                                              ; preds = %128, %114, %98, %60, %25, %18
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @zfs_error_aux(i32*, i32) #1

declare dso_local i32 @dgettext(i32, i8*) #1

declare dso_local i32 @zfs_error(i32*, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @addlist(i32*, i8*, %struct.TYPE_4__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
