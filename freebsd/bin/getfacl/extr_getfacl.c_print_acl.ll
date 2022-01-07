; ModuleID = '/home/carl/AnghaBench/freebsd/bin/getfacl/extr_getfacl.c_print_acl.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/getfacl/extr_getfacl.c_print_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s: stat() failed\00", align 1
@_PC_ACL_NFS4 = common dso_local global i32 0, align 4
@ACL_TYPE_DEFAULT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"%s: there are no default entries in NFSv4 ACLs\00", align 1
@ACL_TYPE_NFS4 = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"%s: pathconf(..., _PC_ACL_NFS4) failed\00", align 1
@more_than_one = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"# file: %s\0A# owner: %s\0A# group: %s\0A\00", align 1
@EOPNOTSUPP = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"%s: acl_from_stat() failed\00", align 1
@ACL_TEXT_APPEND_ID = common dso_local global i32 0, align 4
@ACL_TEXT_NUMERIC_IDS = common dso_local global i32 0, align 4
@ACL_TEXT_VERBOSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"%s: acl_to_text_np() failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32, i32, i32, i32, i32)* @print_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_acl(i8* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.stat, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %20, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %7
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @lstat(i8* %25, %struct.stat* %16)
  store i32 %26, i32* %19, align 4
  br label %30

27:                                               ; preds = %7
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @stat(i8* %28, %struct.stat* %16)
  store i32 %29, i32* %19, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* %19, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %34)
  store i32 -1, i32* %8, align 4
  br label %161

36:                                               ; preds = %30
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* @_PC_ACL_NFS4, align 4
  %42 = call i32 @lpathconf(i8* %40, i32 %41)
  store i32 %42, i32* %21, align 4
  br label %47

43:                                               ; preds = %36
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* @_PC_ACL_NFS4, align 4
  %46 = call i32 @pathconf(i8* %44, i32 %45)
  store i32 %46, i32* %21, align 4
  br label %47

47:                                               ; preds = %43, %39
  %48 = load i32, i32* %21, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* @ACL_TYPE_DEFAULT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @warnx(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  store i32 -1, i32* %8, align 4
  br label %161

57:                                               ; preds = %50
  %58 = load i64, i64* @ACL_TYPE_NFS4, align 8
  store i64 %58, i64* %10, align 8
  br label %70

59:                                               ; preds = %47
  %60 = load i32, i32* %21, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i64, i64* @errno, align 8
  %64 = load i64, i64* @EINVAL, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  store i32 -1, i32* %8, align 4
  br label %161

69:                                               ; preds = %62, %59
  br label %70

70:                                               ; preds = %69, %57
  %71 = load i64, i64* @more_than_one, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %78

75:                                               ; preds = %70
  %76 = load i64, i64* @more_than_one, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* @more_than_one, align 8
  br label %78

78:                                               ; preds = %75, %73
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %78
  %82 = load i8*, i8** %9, align 8
  %83 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @getuname(i32 %84)
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @getgname(i32 %87)
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %82, i8* %85, i8* %88)
  br label %90

90:                                               ; preds = %81, %78
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i8*, i8** %9, align 8
  %95 = load i64, i64* %10, align 8
  %96 = call i8* @acl_get_link_np(i8* %94, i64 %95)
  store i8* %96, i8** %17, align 8
  br label %101

97:                                               ; preds = %90
  %98 = load i8*, i8** %9, align 8
  %99 = load i64, i64* %10, align 8
  %100 = call i8* @acl_get_file(i8* %98, i64 %99)
  store i8* %100, i8** %17, align 8
  br label %101

101:                                              ; preds = %97, %93
  %102 = load i8*, i8** %17, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %124, label %104

104:                                              ; preds = %101
  %105 = load i64, i64* @errno, align 8
  %106 = load i64, i64* @EOPNOTSUPP, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i8*, i8** %9, align 8
  %110 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %109)
  store i32 -1, i32* %8, align 4
  br label %161

111:                                              ; preds = %104
  store i64 0, i64* @errno, align 8
  %112 = load i64, i64* %10, align 8
  %113 = load i64, i64* @ACL_TYPE_DEFAULT, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  store i32 0, i32* %8, align 4
  br label %161

116:                                              ; preds = %111
  %117 = call i8* @acl_from_stat(%struct.stat* %16)
  store i8* %117, i8** %17, align 8
  %118 = load i8*, i8** %17, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %116
  %121 = load i8*, i8** %9, align 8
  %122 = call i32 @warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %121)
  store i32 -1, i32* %8, align 4
  br label %161

123:                                              ; preds = %116
  br label %124

124:                                              ; preds = %123, %101
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load i32, i32* @ACL_TEXT_APPEND_ID, align 4
  %129 = load i32, i32* %20, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %20, align 4
  br label %131

131:                                              ; preds = %127, %124
  %132 = load i32, i32* %13, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load i32, i32* @ACL_TEXT_NUMERIC_IDS, align 4
  %136 = load i32, i32* %20, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %20, align 4
  br label %138

138:                                              ; preds = %134, %131
  %139 = load i32, i32* %15, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = load i32, i32* @ACL_TEXT_VERBOSE, align 4
  %143 = load i32, i32* %20, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %20, align 4
  br label %145

145:                                              ; preds = %141, %138
  %146 = load i8*, i8** %17, align 8
  %147 = load i32, i32* %20, align 4
  %148 = call i8* @acl_to_text_np(i8* %146, i32 0, i32 %147)
  store i8* %148, i8** %18, align 8
  %149 = load i8*, i8** %18, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %154, label %151

151:                                              ; preds = %145
  %152 = load i8*, i8** %9, align 8
  %153 = call i32 @warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8* %152)
  store i32 -1, i32* %8, align 4
  br label %161

154:                                              ; preds = %145
  %155 = load i8*, i8** %18, align 8
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %155)
  %157 = load i8*, i8** %17, align 8
  %158 = call i32 @acl_free(i8* %157)
  %159 = load i8*, i8** %18, align 8
  %160 = call i32 @acl_free(i8* %159)
  store i32 0, i32* %8, align 4
  br label %161

161:                                              ; preds = %154, %151, %120, %115, %108, %66, %54, %33
  %162 = load i32, i32* %8, align 4
  ret i32 %162
}

declare dso_local i32 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @lpathconf(i8*, i32) #1

declare dso_local i32 @pathconf(i8*, i32) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @getuname(i32) #1

declare dso_local i8* @getgname(i32) #1

declare dso_local i8* @acl_get_link_np(i8*, i64) #1

declare dso_local i8* @acl_get_file(i8*, i64) #1

declare dso_local i8* @acl_from_stat(%struct.stat*) #1

declare dso_local i8* @acl_to_text_np(i8*, i32, i32) #1

declare dso_local i32 @acl_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
