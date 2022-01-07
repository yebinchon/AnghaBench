; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_zpool_do_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_zpool_do_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"nps\00", align 1
@B_TRUE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"missing pool name argument\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"stop request ignored\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"too many arguments\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"missing device\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%s %llu\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"Memory that will be used after removing %s: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_do_remove(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8*, align 8
  %15 = alloca [32 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  %16 = load i64, i64* @B_FALSE, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* @B_FALSE, align 8
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* @B_FALSE, align 8
  store i64 %18, i64* %12, align 8
  br label %19

19:                                               ; preds = %41, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call signext i8 @getopt(i32 %20, i8** %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8 %22, i8* %13, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %42

25:                                               ; preds = %19
  %26 = load i8, i8* %13, align 1
  %27 = sext i8 %26 to i32
  switch i32 %27, label %41 [
    i32 110, label %28
    i32 112, label %30
    i32 115, label %32
    i32 63, label %34
  ]

28:                                               ; preds = %25
  %29 = load i64, i64* @B_TRUE, align 8
  store i64 %29, i64* %11, align 8
  br label %41

30:                                               ; preds = %25
  %31 = load i64, i64* @B_TRUE, align 8
  store i64 %31, i64* %12, align 8
  br label %41

32:                                               ; preds = %25
  %33 = load i64, i64* @B_TRUE, align 8
  store i64 %33, i64* %10, align 8
  br label %41

34:                                               ; preds = %25
  %35 = load i32, i32* @stderr, align 4
  %36 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @optopt, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* %36, i32 %37)
  %39 = load i64, i64* @B_FALSE, align 8
  %40 = call i32 @usage(i64 %39)
  br label %41

41:                                               ; preds = %34, %25, %32, %30, %28
  br label %19

42:                                               ; preds = %19
  %43 = load i64, i64* @optind, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = sub nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %4, align 4
  %48 = load i64, i64* @optind, align 8
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 %48
  store i8** %50, i8*** %5, align 8
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 1
  br i1 %52, label %53, label %59

53:                                               ; preds = %42
  %54 = load i32, i32* @stderr, align 4
  %55 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* %55)
  %57 = load i64, i64* @B_FALSE, align 8
  %58 = call i32 @usage(i64 %57)
  br label %59

59:                                               ; preds = %53, %42
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %6, align 8
  %63 = load i32, i32* @g_zfs, align 4
  %64 = load i8*, i8** %6, align 8
  %65 = call i32* @zpool_open(i32 %63, i8* %64)
  store i32* %65, i32** %9, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 1, i32* %3, align 4
  br label %164

68:                                               ; preds = %59
  %69 = load i64, i64* %10, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i64, i64* %11, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* @stderr, align 4
  %76 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %75, i8* %76)
  store i32 0, i32* %3, align 4
  br label %164

78:                                               ; preds = %71, %68
  %79 = load i64, i64* %10, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %78
  %82 = load i32, i32* %4, align 4
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i32, i32* @stderr, align 4
  %86 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %87 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* %86)
  %88 = load i64, i64* @B_FALSE, align 8
  %89 = call i32 @usage(i64 %88)
  br label %90

90:                                               ; preds = %84, %81
  %91 = load i32*, i32** %9, align 8
  %92 = call i64 @zpool_vdev_remove_cancel(i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 1, i32* %8, align 4
  br label %95

95:                                               ; preds = %94, %90
  br label %162

96:                                               ; preds = %78
  %97 = load i32, i32* %4, align 4
  %98 = icmp slt i32 %97, 2
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i32, i32* @stderr, align 4
  %101 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* %101)
  %103 = load i64, i64* @B_FALSE, align 8
  %104 = call i32 @usage(i64 %103)
  br label %105

105:                                              ; preds = %99, %96
  store i32 1, i32* %7, align 4
  br label %106

106:                                              ; preds = %158, %105
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %161

110:                                              ; preds = %106
  %111 = load i64, i64* %11, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %146

113:                                              ; preds = %110
  %114 = load i32*, i32** %9, align 8
  %115 = load i8**, i8*** %5, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = call i64 @zpool_vdev_indirect_size(i32* %114, i8* %119, i8** %14)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %113
  store i32 1, i32* %8, align 4
  br label %161

123:                                              ; preds = %113
  %124 = load i64, i64* %12, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %123
  %127 = load i8**, i8*** %5, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = load i8*, i8** %14, align 8
  %133 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %131, i8* %132)
  br label %145

134:                                              ; preds = %123
  %135 = load i8*, i8** %14, align 8
  %136 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %137 = call i32 @zfs_nicenum(i8* %135, i8* %136, i32 32)
  %138 = load i8**, i8*** %5, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %144 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i8* %142, i8* %143)
  br label %145

145:                                              ; preds = %134, %126
  br label %157

146:                                              ; preds = %110
  %147 = load i32*, i32** %9, align 8
  %148 = load i8**, i8*** %5, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %148, i64 %150
  %152 = load i8*, i8** %151, align 8
  %153 = call i64 @zpool_vdev_remove(i32* %147, i8* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %146
  store i32 1, i32* %8, align 4
  br label %156

156:                                              ; preds = %155, %146
  br label %157

157:                                              ; preds = %156, %145
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %7, align 4
  br label %106

161:                                              ; preds = %122, %106
  br label %162

162:                                              ; preds = %161, %95
  %163 = load i32, i32* %8, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %162, %74, %67
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local signext i8 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @usage(i64) #1

declare dso_local i32* @zpool_open(i32, i8*) #1

declare dso_local i64 @zpool_vdev_remove_cancel(i32*) #1

declare dso_local i64 @zpool_vdev_indirect_size(i32*, i8*, i8**) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @zfs_nicenum(i8*, i8*, i32) #1

declare dso_local i64 @zpool_vdev_remove(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
