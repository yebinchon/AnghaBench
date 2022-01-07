; ModuleID = '/home/carl/AnghaBench/freebsd/bin/rm/extr_rm.c_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/rm/extr_rm.c_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32, i32, i32 }

@iflag = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"remove %s? \00", align 1
@stdin_ok = common dso_local global i32 0, align 4
@W_OK = common dso_local global i32 0, align 4
@SF_APPEND = common dso_local global i32 0, align 4
@SF_IMMUTABLE = common dso_local global i32 0, align 4
@UF_APPEND = common dso_local global i32 0, align 4
@UF_IMMUTABLE = common dso_local global i32 0, align 4
@uid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"fflagstostr\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"override %s%s%s/%s %s%sfor %s? \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.stat*)* @check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check(i8* %0, i8* %1, %struct.stat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [15 x i8], align 1
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.stat* %2, %struct.stat** %7, align 8
  %12 = load i64, i64* @iflag, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %104

18:                                               ; preds = %3
  %19 = load i32, i32* @stdin_ok, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %18
  %22 = load %struct.stat*, %struct.stat** %7, align 8
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @S_ISLNK(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %53, label %27

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* @W_OK, align 4
  %30 = call i32 @access(i8* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %27
  %33 = load %struct.stat*, %struct.stat** %7, align 8
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SF_APPEND, align 4
  %37 = load i32, i32* @SF_IMMUTABLE, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %32
  %42 = load %struct.stat*, %struct.stat** %7, align 8
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @UF_APPEND, align 4
  %46 = load i32, i32* @UF_IMMUTABLE, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i32, i32* @uid, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50, %41, %21, %18
  store i32 1, i32* %4, align 4
  br label %128

54:                                               ; preds = %50, %32, %27
  %55 = load %struct.stat*, %struct.stat** %7, align 8
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [15 x i8], [15 x i8]* %10, i64 0, i64 0
  %59 = call i32 @strmode(i32 %57, i8* %58)
  %60 = load %struct.stat*, %struct.stat** %7, align 8
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @fflagstostr(i32 %62)
  store i8* %63, i8** %11, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %54
  %68 = load i32, i32* @stderr, align 4
  %69 = getelementptr inbounds [15 x i8], [15 x i8]* %10, i64 0, i64 0
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = getelementptr inbounds [15 x i8], [15 x i8]* %10, i64 0, i64 10
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 32
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %77 = load %struct.stat*, %struct.stat** %7, align 8
  %78 = getelementptr inbounds %struct.stat, %struct.stat* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @user_from_uid(i32 %79, i32 0)
  %81 = load %struct.stat*, %struct.stat** %7, align 8
  %82 = getelementptr inbounds %struct.stat, %struct.stat* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @group_from_gid(i32 %83, i32 0)
  %85 = load i8*, i8** %11, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %67
  %90 = load i8*, i8** %11, align 8
  br label %92

91:                                               ; preds = %67
  br label %92

92:                                               ; preds = %91, %89
  %93 = phi i8* [ %90, %89 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %91 ]
  %94 = load i8*, i8** %11, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %100 = load i8*, i8** %5, align 8
  %101 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %70, i8* %76, i8* %80, i8* %84, i8* %93, i8* %99, i8* %100)
  %102 = load i8*, i8** %11, align 8
  %103 = call i32 @free(i8* %102)
  br label %104

104:                                              ; preds = %92, %14
  %105 = load i32, i32* @stderr, align 4
  %106 = call i32 @fflush(i32 %105)
  %107 = call i32 (...) @getchar()
  store i32 %107, i32* %8, align 4
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %117, %104
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 10
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @EOF, align 4
  %114 = icmp ne i32 %112, %113
  br label %115

115:                                              ; preds = %111, %108
  %116 = phi i1 [ false, %108 ], [ %114, %111 ]
  br i1 %116, label %117, label %119

117:                                              ; preds = %115
  %118 = call i32 (...) @getchar()
  store i32 %118, i32* %8, align 4
  br label %108

119:                                              ; preds = %115
  %120 = load i32, i32* %9, align 4
  %121 = icmp eq i32 %120, 121
  br i1 %121, label %125, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %9, align 4
  %124 = icmp eq i32 %123, 89
  br label %125

125:                                              ; preds = %122, %119
  %126 = phi i1 [ true, %119 ], [ %124, %122 ]
  %127 = zext i1 %126 to i32
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %125, %53
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i32 @strmode(i32, i8*) #1

declare dso_local i8* @fflagstostr(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @user_from_uid(i32, i32) #1

declare dso_local i8* @group_from_gid(i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @getchar(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
