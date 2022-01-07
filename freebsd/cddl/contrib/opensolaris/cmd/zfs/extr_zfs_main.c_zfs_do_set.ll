; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_zfs_do_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_zfs_do_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"missing arguments\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"missing property=value argument(s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"missing dataset name(s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"invalid argument order\0A\00", align 1
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@set_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @zfs_do_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_do_set(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %32

12:                                               ; preds = %2
  %13 = load i8**, i8*** %4, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 45
  br i1 %19, label %20, label %32

20:                                               ; preds = %12
  %21 = load i32, i32* @stderr, align 4
  %22 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %23 = load i8**, i8*** %4, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* %22, i32 %28)
  %30 = load i32, i32* @B_FALSE, align 4
  %31 = call i32 @usage(i32 %30)
  br label %32

32:                                               ; preds = %20, %12, %2
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, i32* @stderr, align 4
  %37 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* %37)
  %39 = load i32, i32* @B_FALSE, align 4
  %40 = call i32 @usage(i32 %39)
  br label %41

41:                                               ; preds = %35, %32
  %42 = load i32, i32* %3, align 4
  %43 = icmp slt i32 %42, 3
  br i1 %43, label %44, label %61

44:                                               ; preds = %41
  %45 = load i8**, i8*** %4, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32* @strchr(i8* %47, i8 signext 61)
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* @stderr, align 4
  %52 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* %52)
  br label %58

54:                                               ; preds = %44
  %55 = load i32, i32* @stderr, align 4
  %56 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* %56)
  br label %58

58:                                               ; preds = %54, %50
  %59 = load i32, i32* @B_FALSE, align 4
  %60 = call i32 @usage(i32 %59)
  br label %61

61:                                               ; preds = %58, %41
  store i32 1, i32* %8, align 4
  br label %62

62:                                               ; preds = %92, %61
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %3, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %95

66:                                               ; preds = %62
  %67 = load i8**, i8*** %4, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i32* @strchr(i8* %71, i8 signext 61)
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %85

74:                                               ; preds = %66
  %75 = load i32, i32* %6, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load i32, i32* @stderr, align 4
  %79 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %80 = load i32, i32* %8, align 4
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* %79, i32 %80)
  %82 = load i32, i32* @B_FALSE, align 4
  %83 = call i32 @usage(i32 %82)
  br label %84

84:                                               ; preds = %77, %74
  br label %91

85:                                               ; preds = %66
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %88, %85
  br label %91

91:                                               ; preds = %90, %84
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %62

95:                                               ; preds = %62
  %96 = load i32, i32* %6, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i32, i32* @stderr, align 4
  %100 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %99, i8* %100)
  %102 = load i32, i32* @B_FALSE, align 4
  %103 = call i32 @usage(i32 %102)
  br label %104

104:                                              ; preds = %98, %95
  %105 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %106 = call i64 @nvlist_alloc(i32** %5, i32 %105, i32 0)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = call i32 (...) @nomem()
  br label %110

110:                                              ; preds = %108, %104
  store i32 1, i32* %9, align 4
  br label %111

111:                                              ; preds = %126, %110
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %129

115:                                              ; preds = %111
  %116 = load i32*, i32** %5, align 8
  %117 = load i8**, i8*** %4, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @parseprop(i32* %116, i8* %121)
  store i32 %122, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %115
  br label %141

125:                                              ; preds = %115
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %111

129:                                              ; preds = %111
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* %6, align 4
  %132 = sub nsw i32 %130, %131
  %133 = load i8**, i8*** %4, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135
  %137 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %138 = load i32, i32* @set_callback, align 4
  %139 = load i32*, i32** %5, align 8
  %140 = call i32 @zfs_for_each(i32 %132, i8** %136, i32 0, i32 %137, i32* null, i32* null, i32 0, i32 %138, i32* %139)
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %129, %124
  %142 = load i32*, i32** %5, align 8
  %143 = call i32 @nvlist_free(i32* %142)
  %144 = load i32, i32* %7, align 4
  ret i32 %144
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i32 @nomem(...) #1

declare dso_local i32 @parseprop(i32*, i8*) #1

declare dso_local i32 @zfs_for_each(i32, i8**, i32, i32, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
